set mapreduce.map.java.opts=-Xmx3686m;
set mapreduce.map.memory.mb=2048;
set hive.enforce.bucketing=true;
CREATE TABLE SONGS_INFO_BUCKET (
song_id STRING,
name STRING,
ISRC STRING
)
CLUSTERED BY (song_id) INTO 20 BUCKETS
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

insert into SONGS_INFO_BUCKET select * from SONGS_INFO;

CREATE TABLE SONGS_BUCKET_4GB (
song_id    STRING,
song_length BIGINT,
genre_ids STRING,
artist_name STRING,
composer STRING,
lyricist STRING,
language STRING
)
CLUSTERED BY (song_id) INTO 20 BUCKETS
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

insert into SONGS_BUCKET_4GB select * from SONGS_4GB;

CREATE table songs_parquet_4gb(
song_id    STRING,
song_length BIGINT,
genre_ids STRING,
artist_name STRING,
composer STRING,
lyricist STRING,
language STRING
)
STORED AS PARQUET 
TBLPROPERTIES ('parquet.compression'='SNAPPY');

insert into songs_parquet_4gb select * from songs_4gb;
