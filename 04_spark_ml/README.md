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
$ wget https://doc-0c-00-docs.googleusercontent.com/docs/securesc/84nag520djkk6fu8up36e0gkf5liu923/06d292fmtoac0ju08helnail709j2dje/1578643200000/09781675821774192418/09781675821774192418/1eK7rrc_JgRB6oyQvncEhSPRFrVUJF_pb?e=download&h=01370057456853972683&authuser=0&nonce=fccdepkg6drjk&user=09781675821774192418&hash=9j8j82d52ak9l8mosf72tj1sn7kdsber
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
