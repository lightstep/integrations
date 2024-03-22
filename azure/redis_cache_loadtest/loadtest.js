import http from 'k6/http';
import { check } from 'k6';
import { Rate } from 'k6/metrics';

// Redis connection settings
const redisHost = `${__ENV.REDIS_HOST}:${__ENV.REDIS_PORT}`;
const redisPassword = __ENV.REDIS_PASSWORD;

// Custom metric for tracking Redis errors
const redisErrorRate = new Rate('redis_errors');

// Test configuration
export let options = {
  stages: [
    { duration: '1m', target: 100 }, // Ramp up to 100 virtual users over 1 minute
    { duration: '3m', target: 100 }, // Stay at 100 virtual users for 3 minutes
    { duration: '1m', target: 0 },   // Ramp down to 0 virtual users over 1 minute
  ],
  thresholds: {
    redis_errors: ['rate<0.01'], // Assert that the Redis error rate is less than 1%
  },
};

// Test script
export default function () {
  // Set Redis key
  const setRes = http.post(`http://${redisHost}/SET`, 'key=mykey&value=myvalue', {
    headers: {
      'Authorization': `Bearer ${redisPassword}`,
      'Content-Type': 'application/x-www-form-urlencoded',
    },
  });
  check(setRes, {
    'SET response status is 200': (r) => r.status === 200,
  }) || redisErrorRate.add(1);

  // Get Redis key
  const getRes = http.get(`http://${redisHost}/GET?key=mykey`, {
    headers: {
      'Authorization': `Bearer ${redisPassword}`,
    },
  });
  check(getRes, {
    'GET response status is 200': (r) => r.status === 200,
    'GET response value is correct': (r) => r.body === 'myvalue',
  }) || redisErrorRate.add(1);

  // Delete Redis key
  const delRes = http.post(`http://${redisHost}/DEL`, 'key=mykey', {
    headers: {
      'Authorization': `Bearer ${redisPassword}`,
      'Content-Type': 'application/x-www-form-urlencoded',
    },
  });
  check(delRes, {
    'DEL response status is 200': (r) => r.status === 200,
  }) || redisErrorRate.add(1);
}
