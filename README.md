# Docker based Python Flask App
## Description
This is docker based python Flask application which shows a small form for the user to enter and the given details are pushed to mongodb which is running in another container

## Prerequisites
* Launch the docker mongo container
```
docker run --rm --name mongo -d mongo
```


## Launching this application
```
docker build -t flaskapp .
docker run --name flask --link mongo:db -d --rm -p 8090:8090 flaskapp
```

## Further information
### You will be having environment variables injected into flask app container starts with DB because we have linked mongo image as ' --link mongo:db '

### And these environment variables are used in Flask python application code in app.py to connect to correct mongo db.

```
[root@centos flask]# docker exec -it flask /bin/bash

[root@17e5b1e0ac9c app]# env|grep DB
DB_ENV_MONGO_PACKAGE=mongodb-org
DB_NAME=/flask/db
DB_PORT_27017_TCP=tcp://172.17.0.2:27017
DB_PORT=tcp://172.17.0.2:27017
DB_ENV_MONGO_VERSION=3.4.1
DB_ENV_GOSU_VERSION=1.7
DB_PORT_27017_TCP_PORT=27017
DB_ENV_MONGO_MAJOR=3.4
DB_PORT_27017_TCP_PROTO=tcp
DB_PORT_27017_TCP_ADDR=172.17.0.2

```





## Authors

* **Sreenu Sasubilli**
