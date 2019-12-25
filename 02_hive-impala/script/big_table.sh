sudo -i
sudo -u impala hdfs dfs -put /data/songs_4g.csv /tmp/songs_4g.csv
sudo -u impala hdfs dfs -put /data/song_extra_info.csv /tmp/song_info.csv
impala-shell -i quickstart:21000 -f /data/impala_query.sql
beeline -u jdbc:hive2://quickstart:10000 -n hive -p hive -f /data/hive_query.sql