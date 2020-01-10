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
$ wget https://doc-08-98-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/0e34ltj9nb36tthmv86lqgeraqn8h79m/1578643200000/09781675821774192418/*/1eK7rrc_JgRB6oyQvncEhSPRFrVUJF_pb?e=download
$ mv 1e* application_train.csv
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
