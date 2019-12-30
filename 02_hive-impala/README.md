# CDH QuickStarts Docker container

## Prerequisites
* 64-bit host OS
* 8+ GiB RAM
* Docker installed

## Installation
##### Step 1: Start the CDH Quickstarts Cluster
```sh
$ wget https://codeload.github.com/ts-training/hadoop-training-2019/zip/master
$ unzip master
$ cd hadoop-training-2019-master/02_hive-impala
$ sudo docker-compose up -d
```

##### Step 2: Ensure Impala is ready. 
* Note: It would take about 5 minutes to get the cluster ready after Step 1. if you meet an Error(Not connected to Impala, could not execute queries.), wait a minute and try again.

```sh
$ sudo docker exec cloudera impala-shell -i quickstart:21000 -q "show databases"
```

##### Step 3 (optional): Create smaple tables in HIVE. 
* Note: It would take 15+ minutes to insert data to Hive table. Sample data for "02 Intro to Hive & Impala" is served in this step. if you do not need the sample data, just skip this step. 
```sh
$ sudo docker exec cloudera sh /script/sample-table.sh
```

##### Congrats! Enjoy your time at CDH Cluster.

## Usage
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