# CDH QuickStarts with Spark2 and Python3 Docker container

## Prerequisites
* 64-bit host OS
* 16+ GiB RAM
* Docker installed

## Installation
##### Step 1: Start the CDH Quickstarts Cluster and Download data
First download data from https://www.kaggle.com/c/home-credit-default-risk/data

Second Start the CDH Quickstarts Cluster 
```sh
$ wget https://codeload.github.com/ts-training/hadoop-training-2019/zip/master
$ unzip master
$ mv application_train.csv /home/ubuntu/hadoop-training-2019-master/04_spark_ml/data/classification
$ cd hadoop-training-2019-master/04_spark_ml
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

##### Cloudera Manager: 
* URL: http://localhost:7180
* account/password:  cloudera/cloudera

## Usage
##### PySpark2:
spark 2.4.0 with python 3.7.4
```sh
$ sudo docker exec -it cloudera bash
$ su cloudera
$ cd /04_spark_ml/
$ /opt/anaconda3/bin/jupyter notebook
```

##### Jupyter Notebook
* URL: http://localhost:8000
