 <br>
16/05/19 20:41:31 INFO client.RMProxy: Connecting to ResourceManager at namenode1/192.168.60.80:8032 <br>
16/05/19 20:41:31 INFO terasort.TeraSort: Generating 100000 using 2 <br>
16/05/19 20:41:31 INFO mapreduce.JobSubmitter: number of splits:2 <br>
16/05/19 20:41:31 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1463555800463_0005 <br>
16/05/19 20:41:34 INFO impl.YarnClientImpl: Submitted application application_1463555800463_0005 <br>
16/05/19 20:41:34 INFO mapreduce.Job: The url to track the job: http://namenode1:8088/proxy/application_1463555800463_0005/ <br>
16/05/19 20:41:34 INFO mapreduce.Job: Running job: job_1463555800463_0005 <br>
16/05/19 20:41:43 INFO mapreduce.Job: Job job_1463555800463_0005 running in uber mode : false <br>
16/05/19 20:41:43 INFO mapreduce.Job:  map 0% reduce 0% <br>
16/05/19 20:41:43 INFO mapreduce.Job:  map 50% reduce 0% <br>
16/05/19 20:41:45 INFO mapreduce.Job:  map 100% reduce 0% <br>
16/05/19 20:41:45 INFO mapreduce.Job: Job job_1463555800463_0005 completed successfully <br>
16/05/19 20:41:45 INFO mapreduce.Job: Counters: 31 <br>
        File System Counters <br>
                FILE: Number of bytes read=0 <br>
                FILE: Number of bytes written=237254 <br>
                FILE: Number of read operations=0 <br>
                FILE: Number of large read operations=0 <br>
                FILE: Number of write operations=0 <br>
                HDFS: Number of bytes read=164 <br>
                HDFS: Number of bytes written=10000000 <br>
                HDFS: Number of read operations=8 <br>
                HDFS: Number of large read operations=0 <br>
                HDFS: Number of write operations=4 <br>
        Job Counters <br>
                Launched map tasks=2 <br>
                Other local map tasks=2 <br>
                Total time spent by all maps in occupied slots (ms)=11790 <br>
                Total time spent by all reduces in occupied slots (ms)=0 <br>
                Total time spent by all map tasks (ms)=11790 <br>
                Total vcore-seconds taken by all map tasks=11790 <br>
                Total megabyte-seconds taken by all map tasks=12072960 <br>
        Map-Reduce Framework <br>
                Map input records=100000 <br>
                Map output records=100000 <br>
                Input split bytes=164 <br>
                Spilled Records=0 <br>
                Failed Shuffles=0 <br>
                Merged Map outputs=0 <br>
                GC time elapsed (ms)=90 <br>
                CPU time spent (ms)=2710 <br>
                Physical memory (bytes) snapshot=346398720 <br>
                Virtual memory (bytes) snapshot=3121758208 <br>
                Total committed heap usage (bytes)=360710144 <br>
        org.apache.hadoop.examples.terasort.TeraGen$Counters <br>
                CHECKSUM=214574985129000 <br>
        File Input Format Counters <br>
                Bytes Read=0 <br>
        File Output Format Counters <br>
                Bytes Written=10000000 <br>
~                                                                                                                                                                                                          <br>
~                                          <br>
        File System Counters <br>
                FILE: Number of bytes read=4357727 <br>
                FILE: Number of bytes written=9188140 <br>
                FILE: Number of read operations=0 <br>
                FILE: Number of large read operations=0 <br>
                FILE: Number of write operations=0 <br>
                HDFS: Number of bytes read=10000254 <br>
                HDFS: Number of bytes written=10000000 <br>
                HDFS: Number of read operations=12 <br>
                HDFS: Number of large read operations=0 <br>
                HDFS: Number of write operations=4 <br>
        Job Counters <br>
                Launched map tasks=2 <br>
                Launched reduce tasks=2 <br>
                Data-local map tasks=2 <br>
                Total time spent by all maps in occupied slots (ms)=12172 <br>
                Total time spent by all reduces in occupied slots (ms)=12422 <br>
                Total time spent by all map tasks (ms)=12172 <br>
                Total time spent by all reduce tasks (ms)=12422 <br>
                Total vcore-seconds taken by all map tasks=12172 <br>
                Total vcore-seconds taken by all reduce tasks=12422 <br>
                Total megabyte-seconds taken by all map tasks=12464128 <br>
                Total megabyte-seconds taken by all reduce tasks=12720128 <br>
        Map-Reduce Framework <br>
                Map input records=100000 <br>
                Map output records=100000 <br>
                Map output bytes=10200000 <br>
                Map output materialized bytes=4349773 <br>
                Input split bytes=254 <br>
                Combine input records=0 <br>
                Combine output records=0 <br>
                Reduce input groups=100000 <br>
                Reduce shuffle bytes=4349773 <br>
                Reduce input records=100000 <br>
                Reduce output records=100000 <br>
                Spilled Records=200000 <br>
                Shuffled Maps =4 <br>
                Failed Shuffles=0 <br>
                Merged Map outputs=4 <br>
                GC time elapsed (ms)=200 <br>
                CPU time spent (ms)=10840 <br>
                Physical memory (bytes) snapshot=1287831552 <br>
                Virtual memory (bytes) snapshot=6298611712 <br>
                Total committed heap usage (bytes)=1325924352 <br>
        Shuffle Errors <br>
                BAD_ID=0 <br>
                CONNECTION=0 <br>
                IO_ERROR=0 <br>
                WRONG_LENGTH=0 <br>
                WRONG_MAP=0 <br>
                WRONG_REDUCE=0 <br>
        File Input Format Counters <br>
                Bytes Read=10000000 <br>
        File Output Format Counters <br>
                Bytes Written=10000000 <br>
16/05/19 20:42:11 INFO terasort.TeraSort: done <br>
