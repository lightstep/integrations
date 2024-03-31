import http from 'k6/http';
import { check, sleep } from 'k6';

const cosmosDbEndpoint = `${__ENV.K6_COSMOSDB_ENDPOINT}`;
const cosmosDbKey = `${__ENV.K6_COSMOSDB_KEY}`;
const cosmosDbDatabase = `${__ENV.K6_COSMOSDB_DATABASE}`;
const cosmosDbCollection = `${__ENV.K6_COSMOSDB_COLLECTION}`;

// TODO: make users configurable
// would have to go higher for real load
export let options = {
    stages: [
        { duration: '1m', target: 10 }, // simulate ramp-up of traffic from 1 to 10 users over 1 minute.
        { duration: '3m', target: 10 }, // stay at 10 users for 3 minutes
        { duration: '1m', target: 0 }, // ramp-down to 0 users
    ],
    thresholds: {
        http_req_duration: ['p(95)<500'], // 95% of requests must complete below 500ms
        http_req_failed: ['rate<0.01'], // Failed requests should be less than 1%
    },
};

function generateDocument() {
    return {
        id: `${Date.now()}`,
        name: 'Azure',
        description: 'Cosmos DB',
        isAwesome: true,
    };
}

export default function () {

