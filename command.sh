Steps to Run the Project

1. Transfer Log File from Local to HDFS
hadoop fs -mkdir -p /home/singhkamal99012/input_large
hadoop fs -put /home/singhkamal99012/logfiles.txt /home/singhkamal99012/input_large

2. Verify File in HDFS
hadoop fs -ls /home/singhkamal99012/input_large

3. Create a JAR File (For MapReduce Processing)
javac -classpath `hadoop classpath` -d . WordCount.java
jar -cvf wc.jar *.class

4. Run the Hadoop Job
hadoop jar /home/singhkamal99012/wordcount/wc.jar WordCount /home/singhkamal99012/input_large/logfiles.txt /home/singhkamal99012/output_single_large

5. Check the Output Files in HDFS
hadoop fs -ls /home/singhkamal99012/output_single_large

6. View Processed Output
hadoop fs -head /home/singhkamal99012/output_single_large/part-r-00000
