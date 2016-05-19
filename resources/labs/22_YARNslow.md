```

16/05/19 20:34:25 INFO client.RMProxy: Connecting to ResourceManager at namenode1/192.168.60.80:8032
16/05/19 20:34:25 INFO terasort.TeraSort: Generating 100000 using 2
16/05/19 20:34:25 INFO mapreduce.JobSubmitter: number of splits:2
16/05/19 20:34:25 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1463555800463_0003
16/05/19 20:34:25 INFO impl.YarnClientImpl: Submitted application application_1463555800463_0003
16/05/19 20:34:25 INFO mapreduce.Job: The url to track the job: http://namenode1:8088/proxy/application_1463555800463_0003/
16/05/19 20:34:26 INFO mapreduce.Job: Running job: job_1463555800463_0003
16/05/19 20:34:26 INFO mapreduce.Job: Job job_1463555800463_0003 running in uber mode : false
16/05/19 20:34:27 INFO mapreduce.Job:  map 0% reduce 0%
16/05/19 20:34:15 INFO mapreduce.Job:  map 50% reduce 0%
16/05/19 20:34:15 INFO mapreduce.Job:  map 100% reduce 0%
16/05/19 20:34:21 INFO mapreduce.Job: Job job_1463555800463_0003 completed successfully
16/05/19 20:34:21 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=237250
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=164
                HDFS: Number of bytes written=10000000
                HDFS: Number of read operations=8
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=4
        Job Counters
                Launched map tasks=2
                Other local map tasks=2
                Total time spent by all maps in occupied slots (ms)=12513
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=12513
                Total vcore-seconds taken by all map tasks=12513
                Total megabyte-seconds taken by all map tasks=6406656
        Map-Reduce Framework
                Map input records=100000
                Map output records=100000
                Input split bytes=164
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=111
                CPU time spent (ms)=2500
                Physical memory (bytes) snapshot=345870336
                Virtual memory (bytes) snapshot=2218311680
                Total committed heap usage (bytes)=297795584
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=214574985129000
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=10000000


               FILE: Number of bytes read=4357727
                FILE: Number of bytes written=9188120
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=10000252
                HDFS: Number of bytes written=10000000
                HDFS: Number of read operations=12
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=4
        Job Counters
                Launched map tasks=2
                Launched reduce tasks=2
                Data-local map tasks=1
                Rack-local map tasks=1
                Total time spent by all maps in occupied slots (ms)=12661
                Total time spent by all reduces in occupied slots (ms)=13184
                Total time spent by all map tasks (ms)=12661
                Total time spent by all reduce tasks (ms)=13184
                Total vcore-seconds taken by all map tasks=12661
                Total vcore-seconds taken by all reduce tasks=13184
                Total megabyte-seconds taken by all map tasks=6482432
                Total megabyte-seconds taken by all reduce tasks=6750208
        Map-Reduce Framework
                Map input records=100000
                Map output records=100000
                Map output bytes=10200000
                Map output materialized bytes=4349773
                Input split bytes=252
                Combine input records=0
                Combine output records=0
                Reduce input groups=100000
                Reduce shuffle bytes=4349773
                Reduce input records=100000
                Reduce output records=100000
                Spilled Records=200000
                Shuffled Maps =4
                Failed Shuffles=0
                Merged Map outputs=4
                GC time elapsed (ms)=305
                CPU time spent (ms)=11080
                Physical memory (bytes) snapshot=1269858304
                Virtual memory (bytes) snapshot=4507906048
                Total committed heap usage (bytes)=1138229248
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=10000000
        File Output Format Counters
                Bytes Written=10000000
16/05/19 20:34:49 INFO terasort.TeraSort: done

```


