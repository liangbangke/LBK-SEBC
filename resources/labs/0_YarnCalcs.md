#
on one node,total memory can be allocated to nodemanager (if there is only cm, hdfs,yarn)= 128-1-8-1 = 118<br>
<br>
because <br><br>

mapreduce.map.cpu.memory.mb >= container min 1 <br>
mapreduce.map.cpu.memory.mb <= container max 8	<br>
<br>
and per node has 20 vcore , total running maps is 20<br>
<br>
mem first , cpu second ,<br>

<br>
so if we got 10 nodes, the max total running maps is  10 * (20-3) <br>

<br>
but this question don`t show us whether there are any other services ,such as Hbase so the memeory calculated result maybe wrong .<br>
<br>
I think I need more time on learning how to give the detail solutions to compute the map numbers<br>
<br>
