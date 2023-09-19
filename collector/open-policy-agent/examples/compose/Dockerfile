FROM python:3.9.4-slim-buster

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY echo_server.py /

ENV FLASK_APP=./echo_server.py

CMD ["flask", "run", "--host=0.0.0.0"]

EXPOSE 5000
