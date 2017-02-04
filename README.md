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




## Authors

* **Sreenu Sasubilli**
