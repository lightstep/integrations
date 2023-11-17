#!/usr/bin/env python
#
# perform requests to a local kong service
#
#   export DESTINATION_HOST=my-host-address
#   python client.py

import os
import time
import requests

gateway_port = 8000

def send_requests(url: str):
    try:
        res = requests.get(url)
        print(f"Request to {url}, status: {res.status_code} got {len(res.content)} bytes")
        if res.status_code >= 400:
            try:
                json_response = res.json()
                print("Message: ", json_response.get('message', 'Kong provided no message'))
            except ValueError:
                print('No json body in response')
    except Exception as e:
        print(f"Request to {url} failed {e}")

if __name__ == "__main__":
    host = os.getenv("DESTINATION_HOST", "localhost")

    target = f"http://{host}:{gateway_port}/httpbin/bytes/111"
    while True:
        send_requests(target)
        time.sleep(5)
