###[hdfs@namenode1 hadoop-0.20-mapreduce]$ time hadoop jar hadoop-examples.jar teragen -Ddfs.block.size=33554432 51200000 /user/jetli/tgen32 <br>
16/05/20 09:54:23 INFO client.RMProxy: Connecting to ResourceManager at namenode1.hadoop.com/192.168.60.80:8032 <br>
16/05/20 09:54:24 INFO terasort.TeraSort: Generating 51200000 using 2 <br>
16/05/20 09:54:24 INFO mapreduce.JobSubmitter: number of splits:2 <br>
16/05/20 09:54:24 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize <br>
16/05/20 09:54:24 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1463706684899_0002 <br>
16/05/20 09:54:25 INFO impl.YarnClientImpl: Submitted application application_1463706684899_0002 <br>
16/05/20 09:54:25 INFO mapreduce.Job: The url to track the job: http://namenode1.hadoop.com:8088/proxy/application_1463706684899_0002/ <br>
16/05/20 09:54:25 INFO mapreduce.Job: Running job: job_1463706684899_0002 <br>
16/05/20 09:54:32 INFO mapreduce.Job: Job job_1463706684899_0002 running in uber mode : false <br>
16/05/20 09:54:32 INFO mapreduce.Job:  map 0% reduce 0% <br>
16/05/20 09:54:46 INFO mapreduce.Job:  map 11% reduce 0% <br>
16/05/20 09:54:49 INFO mapreduce.Job:  map 18% reduce 0% <br>
16/05/20 09:54:52 INFO mapreduce.Job:  map 23% reduce 0% <br>
16/05/20 09:54:55 INFO mapreduce.Job:  map 28% reduce 0% <br>
16/05/20 09:54:58 INFO mapreduce.Job:  map 32% reduce 0% <br>
16/05/20 09:55:01 INFO mapreduce.Job:  map 35% reduce 0% <br>
16/05/20 09:55:04 INFO mapreduce.Job:  map 38% reduce 0% <br>
16/05/20 09:55:07 INFO mapreduce.Job:  map 42% reduce 0% <br>
16/05/20 09:55:10 INFO mapreduce.Job:  map 45% reduce 0% <br>
16/05/20 09:55:13 INFO mapreduce.Job:  map 49% reduce 0% <br>
16/05/20 09:55:17 INFO mapreduce.Job:  map 54% reduce 0% <br>
16/05/20 09:55:20 INFO mapreduce.Job:  map 59% reduce 0% <br>
16/05/20 09:55:23 INFO mapreduce.Job:  map 61% reduce 0% <br>
16/05/20 09:55:26 INFO mapreduce.Job:  map 69% reduce 0% <br>
16/05/20 09:55:29 INFO mapreduce.Job:  map 72% reduce 0% <br>
16/05/20 09:55:32 INFO mapreduce.Job:  map 80% reduce 0% <br>
16/05/20 09:55:35 INFO mapreduce.Job:  map 81% reduce 0% <br>
16/05/20 09:55:38 INFO mapreduce.Job:  map 88% reduce 0% <br>
16/05/20 09:55:41 INFO mapreduce.Job:  map 97% reduce 0% <br>
16/05/20 09:55:43 INFO mapreduce.Job:  map 100% reduce 0% <br>
16/05/20 09:55:47 INFO mapreduce.Job: Job job_1463706684899_0002 completed successfully <br>
16/05/20 09:55:48 INFO mapreduce.Job: Counters: 31 <br>
        File System Counters <br>
                FILE: Number of bytes read=0 <br>
                FILE: Number of bytes written=230306 <br>
                FILE: Number of read operations=0 <br>
                FILE: Number of large read operations=0 <br>
                FILE: Number of write operations=0 <br>
                HDFS: Number of bytes read=170 <br>
                HDFS: Number of bytes written=5120000000 <br>
                HDFS: Number of read operations=8 <br>
                HDFS: Number of large read operations=0 <br>
                HDFS: Number of write operations=4 <br>
        Job Counters  <br>
                Launched map tasks=2 <br>
                Other local map tasks=2 <br>
                Total time spent by all maps in occupied slots (ms)=134514 <br>
                Total time spent by all reduces in occupied slots (ms)=0 <br>
                Total time spent by all map tasks (ms)=134514 <br>
                Total vcore-seconds taken by all map tasks=134514 <br>
                Total megabyte-seconds taken by all map tasks=137742336 <br>
        Map-Reduce Framework <br>
                Map input records=51200000 <br>
                Map output records=51200000 <br>
                Input split bytes=170 <br>
                Spilled Records=0 <br>
                Failed Shuffles=0 <br>
                Merged Map outputs=0 <br>
                GC time elapsed (ms)=885 <br>
                CPU time spent (ms)=123380 <br>
                Physical memory (bytes) snapshot=446201856 <br>
                Virtual memory (bytes) snapshot=3124436992 <br>
                Total committed heap usage (bytes)=266862592 <br>
        org.apache.hadoop.examples.terasort.TeraGen$Counters <br>
                CHECKSUM=109963291816450258 <br>
        File Input Format Counters  <br>
                Bytes Read=0 <br>
        File Output Format Counters  <br>
                Bytes Written=5120000000 <br>
 <br>
real    1m28.743s <br>
user    0m7.960s <br>
sys     0m0.711s <br>

###[hdfs@namenode1 hadoop-0.20-mapreduce]$ hdfs dfs -ls /user/jetli/tgen32 <br>
Found 3 items <br>
-rw-r--r--   3 hdfs supergroup          0 2016-05-20 09:55 /user/jetli/tgen32/_SUCCESS <br>
-rw-r--r--   3 hdfs supergroup 2560000000 2016-05-20 09:55 /user/jetli/tgen32/part-m-00000 <br>
-rw-r--r--   3 hdfs supergroup 2560000000 2016-05-20 09:55 /user/jetli/tgen32/part-m-00001 <br>
[hdfs@namenode1 hadoop-0.20-mapreduce]$ <br>
 <br>

###154 blocks were created to store this file
