import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
  vus: 10,
  duration: '30s',
};

export default function () {
  const baseUrl = `http://${__ENV.LOAD_BALANCER_IP}`;
  const res = http.get(baseUrl);

  check(res, {
    'status is 200': (r) => r.status === 200,
  });

  sleep(1);
}
