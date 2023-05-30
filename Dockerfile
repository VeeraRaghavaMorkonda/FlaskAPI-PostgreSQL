FROM python:3.8-slim-buster
RUN apt-get update && apt-get -y install libpq-dev gcc && pip3 install flask && pip install psycopg2
WORKDIR /flaskapi-pg
COPY . /flaskapi-pg/
EXPOSE 8000
ENTRYPOINT [ "python3" ]
CMD [ "main.py" ]