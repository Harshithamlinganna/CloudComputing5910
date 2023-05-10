# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install mysql-connector-python
RUN pip3 freeze | grep mysql-connector-python >> requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

CMD ["python3", "-m" , "app", "run", "--host=0.0.0.0"]
                                                                                                                                                                                                         
