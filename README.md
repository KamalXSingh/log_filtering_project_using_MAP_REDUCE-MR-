Log Filtering Project Using MapReduce (MR)
This project processes a 240MB log file using the MapReduce framework on Hadoop. Below are the steps followed in the project.

Steps
1. Uploading the Log File to GCP Storage
Command to upload the log file from the local system to the GCP bucket:
gsutil cp logfiles.txt gs://dataproc-staging-europe-north2-587430220681-ithd4u2t/

📷 Screenshot of the uploaded log file in the GCP bucket
![image](https://github.com/user-attachments/assets/b5281ca3-2e96-4db0-9d59-9e3bcf34f6f1)


2. Downloading the Log File to the GCP VM
Command to pull the file from the GCP bucket to the local GCP VM:

gsutil cp gs://dataproc-staging-europe-north2-587430220681-ithd4u2t/logfiles.txt ~/
![image](https://github.com/user-attachments/assets/ce8d099d-8337-47b3-a5d7-8f934f56c84c)



3. Transferring the File to HDFS
Commands to create a directory in HDFS and move the log file:

hadoop fs -mkdir -p /home/singhkamal99012/input_large
hadoop fs -put /home/singhkamal99012/logfiles.txt /home/singhkamal99012/input_large


4. Running the MapReduce Job
Command to execute the MapReduce job:

hadoop jar /home/singhkamal99012/wordcount/wc.jar WordCount /home/singhkamal99012/input_large/logfiles.txt /home/singhkamal99012/output_single_large

📷 CLI output showing 3 reducers running
![image](https://github.com/user-attachments/assets/9e124989-61d3-474c-8216-3c52e4a833aa)


5. Checking Output Files
Command to list the output files:

hadoop fs -ls /home/singhkamal99012/output_single_large

Command to view the first few lines of the output:

hadoop fs -head /home/singhkamal99012/output_single_large/part-r-00000

📷 Screenshot of the output
![image](https://github.com/user-attachments/assets/7c6b3242-a2d1-4c14-bbaf-03e36202c3f0)



6. Viewing Hadoop Web Interface
📷 Screenshot of the output files on the Hadoop web interface
![image](https://github.com/user-attachments/assets/1e039951-7a20-4464-9533-8267c5a91326)



Results
The project successfully filtered the log file using MapReduce and produced structured output.
