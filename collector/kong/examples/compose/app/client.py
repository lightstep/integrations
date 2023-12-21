#!/usr/bin/env python
#
# perform requests to a local kong service
#
#   export DESTINATION_HOST=my-host-address
#   python client.py
import os
import time
import random
import requests
import string

gateway_port = 8000

def send_get_request(url: str):
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
        print(f"GET Request to {url} failed {e}")


def send_post_request(url: str):
    # random 5 character string to spice up the payload
    rstr = lambda n: ''.join(random.choice(string.ascii_lowercase) for i in range(n))
    data = {
        "id": random.randint(1, 100),
        "name": f"my number is {rstr(5)}",
        "value": random.randint(1, 100),
    }
    try:
        res = requests.post(url, json=data)
        print(f"POST request to {url}, status: {res.status_code} got {len(res.content)} bytes")

        if res.status_code >= 400:
            try:
                json_response = res.json()
                print("Message: ", json_response.get('message', 'Kong provided no message'))
            except ValueError:
                print('No json body in response')
    except Exception as e:
        print(f"POST request to {url} failed {e}")


if __name__ == "__main__":
    time.sleep(15)
    # this should be the name of the API Gateway service
    host = os.getenv("DESTINATION_HOST", "localhost")
    random_int = random.randint(89, 189)
    bytes_target = f"http://{host}:{gateway_port}/bytes/{random_int}"
    get_target = f"http://{host}:{gateway_port}/get"
    post_target = f"http://{host}:{gateway_port}/post"
    anything_target = f"http://{host}:{gateway_port}/anything"

    while True:
        send_get_request(bytes_target)
        time.sleep(0.33)
        send_get_request(get_target)
        time.sleep(0.33)
        send_post_request(post_target)
        time.sleep(0.33)
        send_get_request(anything_target)
        time.sleep(0.33)
        send_post_request(anything_target)
        time.sleep(0.33)
