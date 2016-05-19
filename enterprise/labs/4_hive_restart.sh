#!/bin/sh<br>
<br>
curl -X POST -u 'cloudera:cloudera' http://192.168.60.80:7180/api/v12/clusters/cluster1/services/hive/commands/restart
<br>
