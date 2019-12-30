# CDH QuickStarts with Spark2 and Python3 Docker container

## Prerequisites
* 64-bit host OS
* 16+ GiB RAM
* Docker installed

## Installation
##### Step 1: Start the CDH Quickstarts Cluster
```sh
$ wget https://codeload.github.com/ts-training/hadoop-training-2019/zip/master
$ unzip master
$ cd hadoop-training-2019-master/03_spark_intro
$ sudo docker-compose up -d
```

##### Step 2: Check docker logs. 
The Cluster is starting when you see the result follows "$ sudo docker logs cloudera"
```sh
$ sudo docker logs cloudera
...
...
{
  "id" : ...,
  "name" : "Start",
  "startTime" : "...........",
  "active" : true,
  "serviceRef" : {
    "serviceName" : "mgmt"
  }
}
```

##### Step 3: Ensure Hive is ready. 
* Note: It would take 5 to 10 minutes to get the cluster ready after Step 2. if you meet an Error(Could not open connection to the HS2 server. Please check the server URI and if the URI is correct, then ask the administrator to check the server status.), wait a minute and try again.  
```sh
$ sudo docker exec cloudera beeline -u jdbc:hive2://quickstart:10000 -n hive -p hive -e 'show databases'
```



##### Step 4 (optional): Create smaple tables/data in HIVE and HDFS. 
* Note: Sample data for "03 Intro to Spark" is served in the this step. if you do not need the sample data, just skip this step. 
```sh
$ sudo docker exec cloudera sh /script/sample-data.sh
```

##### Congrats! Enjoy your time at CDH Cluster with Spark2.4.0 and Python3.7.4

## Usage
##### PySpark2:
spark 2.4.0 with python 3.7.4
```sh
$ sudo docker exec -it cloudera bash
$ su cloudera
$ pyspark2 --master local
```
##### Beeline:
```sh
$ sudo docker exec -it cloudera bash
$ beeline -u jdbc:hive2://quickstart:10000 -n hive -p hive
```
##### Impala-Shell:
```sh
$ sudo docker exec -it cloudera bash
$ impala-shell -i quickstart:21000
```
##### Hue: 
* URL: http://localhost:8888
* account/password:  cloudera/cloudera

##### Cloudera Manager: 
* URL: http://localhost:7180
* account/password:  admin/admin