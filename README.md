# docker_image_centos_pyspark
Dockerfile for running [PySpark](https://spark.apache.org/docs/0.9.0/python-programming-guide.html) on CentOS base image.

## base image
* [centos:7](https://hub.docker.com/_/centos/)

## Installation
1. Install Docker.
2. Pull [u15e5lc3h8/centos7_pyspark](https://hub.docker.com/r/u15e5lc3h8/centos7_pyspark).

## Build
Build and tag the image.
```
docker build --tag=env_centos_pyspark .
```

## Usage
**Run container**

Run `env_centos_pyspark` container instance in interactive mode to access cmd shell.
```
docker run -it --rm env_centos_pyspark
```
**Run pyspark**

Run `pyspark` inside container to launch PySpark
```
root@3338ac6c18f9 app]# pyspark
Python 2.7.5 (default, Apr  9 2019, 14:30:50) 
[GCC 4.8.5 20150623 (Red Hat 4.8.5-36)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
19/05/15 13:33:11 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /__ / .__/\_,_/_/ /_/\_\   version 2.4.3
      /_/

Using Python version 2.7.5 (default, Apr  9 2019 14:30:50)
SparkSession available as 'spark'.
>>> 
```

