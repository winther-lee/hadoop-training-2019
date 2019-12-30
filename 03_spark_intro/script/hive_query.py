from pyspark.sql import SparkSession

if __name__ == '__main__':    
    spark = SparkSession.builder\
                        .enableHiveSupport()\
                        .getOrCreate()
    songs_df = spark.sql("select * from songs")
    songs_df.show()

