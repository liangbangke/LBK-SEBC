#As user ernie, use teragen to generate 51,200,000 records：<br>
[hdfs@NameNode01 hadoop-0.20-mapreduce]$ time hadoop jar hadoop-examples.jar teragen -Ddfs.block.size=16777216 50000000 /user/ernie/tgen
16/05/19 09:40:05 INFO client.RMProxy: Connecting to ResourceManager at NameNode01/192.168.60.80:8032<br>
16/05/19 09:40:06 INFO terasort.TeraSort: Generating 50000000 using 2<br>
16/05/19 09:40:06 INFO mapreduce.JobSubmitter: number of splits:2<br>
16/05/19 09:40:06 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize<br>
16/05/19 09:40:06 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1463537269400_0006<br>
16/05/19 09:40:06 INFO impl.YarnClientImpl: Submitted application application_1463537269400_0006<br>
16/05/19 09:40:06 INFO mapreduce.Job: The url to track the job: http://NameNode01:8088/proxy/application_1463537269400_0006/<br>
16/05/19 09:40:06 INFO mapreduce.Job: Running job: job_1463537269400_0006<br>
16/05/19 09:40:14 INFO mapreduce.Job: Job job_1463537269400_0006 running in uber mode : false<br>
16/05/19 09:40:14 INFO mapreduce.Job:  map 0% reduce 0%<br>
16/05/19 09:40:25 INFO mapreduce.Job:  map 13% reduce 0%<br>
16/05/19 09:40:28 INFO mapreduce.Job:  map 21% reduce 0%<br>
16/05/19 09:40:32 INFO mapreduce.Job:  map 25% reduce 0%<br>
16/05/19 09:40:33 INFO mapreduce.Job:  map 28% reduce 0%<br>
16/05/19 09:40:36 INFO mapreduce.Job:  map 36% reduce 0%<br>
16/05/19 09:40:39 INFO mapreduce.Job:  map 43% reduce 0%<br>
16/05/19 09:40:42 INFO mapreduce.Job:  map 46% reduce 0%<br>
16/05/19 09:40:45 INFO mapreduce.Job:  map 53% reduce 0%<br>
16/05/19 09:40:48 INFO mapreduce.Job:  map 59% reduce 0%<br>
16/05/19 09:40:52 INFO mapreduce.Job:  map 66% reduce 0%<br>
16/05/19 09:40:55 INFO mapreduce.Job:  map 74% reduce 0%<br>
16/05/19 09:40:58 INFO mapreduce.Job:  map 78% reduce 0%<br>
16/05/19 09:41:01 INFO mapreduce.Job:  map 83% reduce 0%<br>
16/05/19 09:41:05 INFO mapreduce.Job:  map 85% reduce 0%<br>
16/05/19 09:41:08 INFO mapreduce.Job:  map 92% reduce 0%<br>
16/05/19 09:41:11 INFO mapreduce.Job:  map 99% reduce 0%<br>
16/05/19 09:41:12 INFO mapreduce.Job:  map 100% reduce 0%<br>
16/05/19 09:41:14 INFO mapreduce.Job: Job job_1463537269400_0006 completed successfully<br>
16/05/19 09:41:14 INFO mapreduce.Job: Counters: 31<br>
        File System Counters<br>
                FILE: Number of bytes read=0<br>
                FILE: Number of bytes written=233414<br>
                FILE: Number of read operations=0<br><br>
                FILE: Number of large read operations=0<br>
                FILE: Number of write operations=0<br>
                HDFS: Number of bytes read=170<br>
                HDFS: Number of bytes written=5000000000<br>
                HDFS: Number of read operations=8<br>
                HDFS: Number of large read operations=0<br>
                HDFS: Number of write operations=4<br>
        Job Counters <br>
                Launched map tasks=2<br>
                Other local map tasks=2<br>
                Total time spent by all maps in occupied slots (ms)=112438<br>
                Total time spent by all reduces in occupied slots (ms)=0<br>
                Total time spent by all map tasks (ms)=112438<br>
                Total vcore-seconds taken by all map tasks=112438<br>
                Total megabyte-seconds taken by all map tasks=115136512<br>
        Map-Reduce Framework<br>
                Map input records=50000000<br>
                Map output records=50000000<br>
                Input split bytes=170<br>
                Spilled Records=0<br>
                Failed Shuffles=0<br>
                Merged Map outputs=0<br>
                GC time elapsed (ms)=1219<br>
                CPU time spent (ms)=98590<br>
                Physical memory (bytes) snapshot=661897216<br>
                Virtual memory (bytes) snapshot=3127459840<br>
                Total committed heap usage (bytes)=348127232<br>
        org.apache.hadoop.examples.terasort.TeraGen$Counters<br>
                CHECKSUM=109963291816450258<br>
        File Input Format Counters <br>
                Bytes Read=0<br>
        File Output Format Counters <br>
                Bytes Written=5000000000<br>
<br>
real    1m12.358s<br>
user    0m6.533s<br>
sys     0m0.304s<br>
[hdfs@NameNode01 hadoop-0.20-mapreduce]$  hadoop fs -ls /user/ernie/tgen/<br>
Found 3 items<br>
-rw-r--r--   3 hdfs supergroup          0 2016-05-18 13:41 /user/ernie/tgen/_SUCCESS<br>
-rw-r--r--   3 hdfs supergroup 2500000000 2016-05-18 13:41 /user/ernie/tgen/part-m-00000<br>
-rw-r--r--   3 hdfs supergroup 2500000000 2016-05-18 13:41 /user/ernie/tgen/part-m-00001<br>
[hdfs@NameNode01 hadoop-0.20-mapreduce]$ <br>
