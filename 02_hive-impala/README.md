# CDH QuickStarts Docker container

## Prerequisites
* 64-bit host OS
* 8+ GiB RAM
* Docker installed

## Installation
#### Step 1: Start the CDH Quickstarts Cluster
```sh
$ wget https://codeload.github.com/ts-training/hadoop-training-2019/zip/master
$ unzip master
$ cd hadoop-training-2019-master/02_hive-impala
$ sudo sh script/cdh_quickstarts.sh
```

#### Step 2: Check docker logs. 
The Cluster is ready when you see "Started Impala Server (impalad): [  OK  ]". 
* Noted: It would take several minutes to get the cluster ready. 
```sh
$ sudo docker logs cloudera
```

#### Step 3 (optional): Create smaple tables in HIVE. 
* Noted: It would take 10+ minutes to insert data to Hive table. 
```sh
$ cmd="sh /data/big_table.sh"
$ sudo docker exec cloudera $cmd
```

#### Congrats! Enjoy your time at CDH Cluster.

## Usage
#### Beeline:
```sh
$ sudo docker exec -it cloudera bash
$ beeline -u jdbc:hive2://quickstart:10000 -n hive -p hive
```
#### Hue: 
* URL: http://localhost:8888
* account/password:  cloudera/cloudera