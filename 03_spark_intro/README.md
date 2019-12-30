# CDH QuickStarts Docker container

## Prerequisites
* 64-bit host OS
* 16+ GiB RAM
* Docker installed

## Installation
#### Step 1: Start the CDH Quickstarts Cluster
```sh
$ wget https://codeload.github.com/ts-training/hadoop-training-2019/zip/master
$ unzip master
$ cd hadoop-training-2019-master/03_spark_intro
$ sudo docker-compose up -d
```

#### Step 2: Check docker logs. 
The Cluster is starting when you see the result follows "$ sudo docker logs cloudera"
```sh
$ sudo docker logs cloudera
...
...
{
  "id" : 231,
  "name" : "Start",
  "startTime" : "...........",
  "active" : true,
  "serviceRef" : {
    "serviceName" : "mgmt"
  }
}
```

#### Step 3: Ensure Hive is ready. 
* Noted: It would take 5 to 10 minutes to get the cluster ready after Step 2. if you meet a Error(Could not open connection to the HS2 server. Please check the server URI and if the URI is correct, then ask the administrator to check the server status.), wait a minute and try again.  
```sh
$ sudo docker exec cloudera beeline -u jdbc:hive2://quickstart:10000 -n hive -p hive -e 'show databases'
```



#### Step 4 (optional): Create smaple tables/data in HIVE and HDFS. 
* Noted: Sample data for Spark Intro is served in the Step 4. if you do not need the sample data, just skip this step. 
```sh
$ sudo docker exec cloudera sh /script/create-table.sh
```

#### Congrats! Enjoy your time at CDH Cluster with Spark2 and Python3.

## Usage
#### PySpark2:
spark 2.4.0 with python 3.7
```sh
$ sudo docker exec -it cloudera bash
$ pyspark2 --master local
```
#### Beeline:
```sh
$ sudo docker exec -it cloudera bash
$ beeline -u jdbc:hive2://quickstart:10000 -n hive -p hive
```
#### Hue: 
* URL: http://localhost:8888
* account/password:  cloudera/cloudera

#### Cloudera Manager: 
* URL: http://localhost:7180
* account/password:  admin/admin