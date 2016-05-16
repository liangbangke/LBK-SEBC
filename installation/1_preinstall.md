Enviroment CentOS 7.0

#Install a MySQL server 
1.Download Mysql repo rpm<br>
[root@master ~]# cd /etc/yum.repos.d/<br>
[root@master yum.repos.d]# wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm<br>
--2016-05-16 16:33:32--  http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm<br>
Resolving repo.mysql.com... 23.1.21.16<br>
Connecting to repo.mysql.com|23.1.21.16|:80... connected.<br>
HTTP request sent, awaiting response... 200 OK<br>
Length: 6140 (6.0K) [application/x-redhat-package-manager]<br>
Saving to: â€œmysql-community-release-el7-5.noarch.rpmâ€<br>

100%[=============================================================>] 6,140       --.-K/s   in 0s     <br> 

2016-05-16 16:33:32 (23.6 MB/s) - â€œmysql-community-release-el7-5.noarch.rpmâ€ saved [6140/6140]<br>
<br>
[root@master yum.repos.d]# ls<br>
CenOS-Base.repo.bak  CentOS-Debuginfo.repo  CentOS-Vault.repo      cloudera-manager.repo.~1~<br>
CentOS-Base.repo     CentOS-Media.repo      cloudera-manager.repo  mysql-community-release-el7-5.noarch.rpm<br>
[root@master yum.repos.d]# <br>
<br>
2.Install mysql repo rpm<br>













