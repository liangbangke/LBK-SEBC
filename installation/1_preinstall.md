Enviroment CentOS 7.0

#Install a MySQL server 
1.Download Mysql repo rpm
[root@master ~]# cd /etc/yum.repos.d/
[root@master yum.repos.d]# wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
--2016-05-16 16:33:32--  http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
Resolving repo.mysql.com... 23.1.21.16
Connecting to repo.mysql.com|23.1.21.16|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 6140 (6.0K) [application/x-redhat-package-manager]
Saving to: â€œmysql-community-release-el7-5.noarch.rpmâ€

100%[=============================================================>] 6,140       --.-K/s   in 0s      

2016-05-16 16:33:32 (23.6 MB/s) - â€œmysql-community-release-el7-5.noarch.rpmâ€ saved [6140/6140]

[root@master yum.repos.d]# ls
CenOS-Base.repo.bak  CentOS-Debuginfo.repo  CentOS-Vault.repo      cloudera-manager.repo.~1~
CentOS-Base.repo     CentOS-Media.repo      cloudera-manager.repo  mysql-community-release-el7-5.noarch.rpm
[root@master yum.repos.d]# 

2.Install mysql repo rpm













