# COMMENT
# FROM python:3.7
FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
# ENTRYPOINT ["gunicorn", "-b", "8.8.8.8", "main.app"] 