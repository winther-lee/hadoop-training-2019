from pyspark.sql import SparkSession


if __name__ == "__main__":
    spark = SparkSession.builder.appName("word_count_APP").getOrCreate()

    source_file_path = "/tmp/news.txt"
    output_file_path = "/tmp/word_count_han"

    raw_rdd = spark.sparkContext.textFile(source_file_path)
    res_rdd = raw_rdd.flatMap(lambda line: line.split(" "))\
        .map(lambda word: (word, 1))\
        .reduceByKey(lambda x, y: x + y)\
        .sortBy(lambda pair: pair[1], False)
    res_rdd.saveAsTextFile(output_file_path)
