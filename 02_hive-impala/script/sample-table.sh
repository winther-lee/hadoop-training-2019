tar -zxvf /m_data/songs.tar.gz
for i in {1..55}; do cat /data/songs.csv >> "/data/songs_4g.csv"; done
sudo -u impala hdfs dfs -put /data/songs_4g.csv /tmp/songs_4g.csv
rm -f /data/songs_4g.csv
tar -zxvf /m_data/song_info.tar.gz
sudo -u impala hdfs dfs -put /data/song_extra_info.csv /tmp/song_info.csv
cp -rp /data /home/cloudera
chown -R cloudera /home/cloudera/data
impala-shell -i quickstart:21000 -f /script/impala_query.sql
beeline -u jdbc:hive2://quickstart:10000 -n hive -p hive -f /script/hive_query.sql
echo "+-------------------------+"
echo "|                         |"
echo "|                         |"
echo "|  Sample Data Created    |"
echo "|                         |"
echo "|                         |"
echo "+-------------------------+"