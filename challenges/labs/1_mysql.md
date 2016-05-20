[root@dbserver ~]# yum repolist enabled
Loaded plugins: fastestmirror, refresh-packagekit, security
Loading mirror speeds from cached hostfile
 * base: mirrors.tuna.tsinghua.edu.cn
 * extras: mirrors.tuna.tsinghua.edu.cn
 * updates: mirrors.163.com
repo id                                           repo name                                                  status
base                                              CentOS-6 - Base                                            6,575
extras                                            CentOS-6 - Extras                                             62
mysql56-community                                 MySQL 5.6 Community Server                                   248
updates                                           CentOS-6 - Updates                                         1,622
repolist: 8,507
[root@dbserver ~]#

[root@dbserver yum.repos.d]# mysql --version
mysql  Ver 14.14 Distrib 5.6.30, for Linux (x86_64) using  EditLine wrapper
[root@dbserver yum.repos.d]# 

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hivey              |
| huey               |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
+--------------------+
8 rows in set (0.00 sec)

