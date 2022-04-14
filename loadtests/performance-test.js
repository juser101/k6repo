import { sleep } from"k6";
import http from "k6/http";

export let options = {
  duration: "1m",
  vus: 50,
  thresholds: {
    http_req_duration: ["p(95)<500"], // 95 percent of response times must be below 500ms
    http_req_failed: ['rate<0.01'] // During the whole test execution, the error rate must be lower than 1%.
  }
};

export default function() {
  http.get("http://test.k6.io/contactss.php");
  sleep(3);
};
