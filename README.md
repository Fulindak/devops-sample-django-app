<h1>Party Parrot App</h1>

<img src='media/images/party-parrot.gif' alt='parrot' height="200" width="200">
<br>
<br>
<h3></h3>

Sample Python application on Django with PostgreSQL database.

<h3>Requirements</h3>

____


- django 4.0.1
- Pillow 9.0.0
- psycopg2-binary 2.9.3
- django-prometheus 2.2.0

<h3>Deployment</h3>

____



- install Python 3.8
- install libs 
```shell
      pip3 install -r requirements.txt
```

* Set environment export for variables:
```yaml
      DJANGO_DB_HOST: db
      DJANGO_DB_NAME: app
      DJANGO_DB_USER: worker
      DJANGO_DB_PASS: worker
      DJANGO_DB_PORT: "5432"
      DJANGO_DEBUG: "False"
```


* migrate database:
```shell
python3 manage.py migrate
```

* start application:
```shell
python3 manage.py runserver 0.0.0.0:8000
```

<h3>Start in Docker</h3>

----

* Install Docker Engine:
``` 
 https://docs.docker.com/engine/install/
```
* Edit docker-compose.yml:
  * Set environment export for variables in app:
   ```yml
   environment:
     - DJANGO_DB_HOST=${DJANGO_DB_HOST}
     - DJANGO_DB_NAME=${DJANGO_DB_NAME}
     - DJANGO_DB_USER=${DJANGO_DB_USER}
     - DJANGO_DB_PASS=${DJANGO_DB_PASS}
     - DJANGO_DB_PORT=${DJANGO_DB_PORT}
     - DJANGO_DEBUG=${DJANGO_DEBUG}
   ```
  * Set environment export for variables in db:
  ```yml
  environment:
    - POSTGRES_USER=${DJANGO_DB_USER}
    - POSTGRES_PASSWORD=${DJANGO_DB_PASS}
    - POSTGRES_DB=${DJANGO_DB_NAME}
  ```
* Start docker-compose:
```shell
docker compose up -d
```