sudo -u hdfs hdfs dfs -mkdir /user/centos
sudo -u hdfs hdfs dfs -chown centos /user/centos
hdfs dfs -put /data/* /tmp
hdfs dfs -put /data/songs.csv /tmp/songs1.csv
sudo -u hdfs hdfs dfs -chown impala /tmp/songs1.csv
sudo -u hdfs hdfs dfs -chown impala /tmp/song_extra_info.csv
sudo -u hdfs hdfs dfs -chown impala /tmp/order.csv
cp -rp /data /home/centos/spark-data
chown -R centos /home/centos/spark-data
impala-shell -i localhost:21000 -f /script/create-table.sql
echo "+-------------------------+"
echo "|                         |"
echo "|                         |"
echo "|  Sample Data Created    |"
echo "|                         |"
echo "|                         |"
echo "+-------------------------+"
