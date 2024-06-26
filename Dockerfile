FROM python:3.8-slim-buster
RUN apt update -y && apt install awscli -y

WORKDIR /webapp
COPY . /webapp

RUN pip install -r requirements.txt
CMD  ["python3", "webapp.py"]