mkdir mount_data
tar -zxvf data/songs.tar.gz
tar -zxvf data/song_info.tar.gz


for i in {1..55}; do cat data/songs.csv >> "mount_data/songs_4g.csv"; done
cp script/big_table.sh script/impala_query.sql script/hive_query.sql mount_data
mv data/songs.csv data/song_extra_info.csv mount_data

wget https://downloads.cloudera.com/demo_vm/docker/cloudera-quickstart-vm-5.13.0-0-beta-docker.tar.gz
tar -zxvf cloudera-quickstart-vm-5.13.0-0-beta-docker.tar.gz
sudo docker import cloudera-quickstart-vm-5.13.0-0-beta-docker/cloudera-quickstart-vm-5.13.0-0-beta-docker.tar cdh_image:5.13.0
rm -rf cloudera-quickstart-vm-5.13.0-0-beta-docker*
pwd=$(pwd)
sudo docker run --name cloudera --hostname=quickstart.cloudera -v $pwd/mount_data:/data --privileged=true -t -i -d -p 8888:8888 -p 80:80  -p 10000:10000 -p 7180:7180 -p 21050:21050 -p 50070:50070 -p 50075:50075 -p 50010:50010 -p 50020:50020 -p 19888:19888 -p 8088:8088 -p 8020:8020 cdh_image:5.13.0 /usr/bin/docker-quickstart