#cloudera-manager repo <br>
[root@namenode1 ~]# cat /etc/yum.repos.d/cloudera-manager.repo  <br>
[cloudera-manager] <br>
name = Cloudera Manager, Version 5.6.0 <br>
baseurl = http://192.168.60.86/cm/ <br>
gpgkey = http://192.168.60.86/cm/RPM-GPG-KEY-cloudera <br>
gpgcheck = 1 <br>
 <br>
[root@namenode1 ~]# ls /var/www/html/cm/ <br>
cloudera-manager.repo  repodata/              RPMS/   <br>
 <br>
[root@namenode1 ~]# ls /var/www/html/cm/RPMS/x86_64/ <br>
cloudera-manager-agent-5.6.0-1.cm560.p0.54.el6.x86_64.rpm <br>
cloudera-manager-daemons-5.6.0-1.cm560.p0.54.el6.x86_64.rpm <br>
cloudera-manager-server-5.6.0-1.cm560.p0.54.el6.x86_64.rpm <br>
cloudera-manager-server-db-2-5.6.0-1.cm560.p0.54.el6.x86_64.rpm <br>
enterprise-debuginfo-5.6.0-1.cm560.p0.54.el6.x86_64.rpm <br>
jdk-6u31-linux-amd64.rpm <br>
oracle-j2sdk1.7-1.7.0?a—?aμ?o?1.x86_64.rpm <br>
 <br>
[root@namenode1 ~]# ls /var/www/html/parcel/ <br>
CDH-5.6.0-1.cdh5.6.0.p0.45-el6.parcel  CDH-5.6.0-1.cdh5.6.0.p0.45-el6.parcel.sha1  manifest.json <br>
[root@namenode1 ~]#  <br>
 <br>
#db.properties <br>
[root@namenode1 ~]# cat /etc/cloudera-scm-server/db.properties <br>
 Auto-generated by scm_prepare_database.sh on Fri May 20 08:36:07 CST 2016 <br>
 <br>
 For information describing how to configure the Cloudera Manager Server <br>
 to connect to databases, see the "Cloudera Manager Installation Guide." <br>
 <br>
com.cloudera.cmf.db.type=mysql <br>
com.cloudera.cmf.db.host=192.168.60.85 <br>
com.cloudera.cmf.db.name=scm <br>
com.cloudera.cmf.db.user=scm <br>
com.cloudera.cmf.db.password=123456 <br>
[root@namenode1 ~]#  <br>
 <br>