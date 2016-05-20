[root@dbserver ~]# yum repolist enabled <br>
Loaded plugins: fastestmirror, refresh-packagekit, security <br>
Loading mirror speeds from cached hostfile <br>
 * base: mirrors.tuna.tsinghua.edu.cn <br>
 * extras: mirrors.tuna.tsinghua.edu.cn <br>
 * updates: mirrors.163.com <br>
repo id                                           repo name                                                  status <br>
base                                              CentOS-6 - Base                                            6,575 <br>
extras                                            CentOS-6 - Extras                                             62 <br>
mysql56-community                                 MySQL 5.6 Community Server                                   248 <br>
updates                                           CentOS-6 - Updates                                         1,622 <br>
repolist: 8,507 <br>

[root@dbserver yum.repos.d]# mysql --version <br>
mysql  Ver 14.14 Distrib 5.6.30, for Linux (x86_64) using  EditLine wrapper <br>

[root@dbserver yum.repos.d]# mysql -u root -p <br>
Enter password:       <br>
mysql> show databases; <br>
+--------------------+ <br>
| Database           | <br>
+--------------------+ <br>
| information_schema | <br>
| hivey              | <br>
| huey               | <br>
| mysql              | <br>
| oozie              | <br>
| performance_schema | <br>
| rman               | <br>
| scm                | <br>
+--------------------+ <br>
8 rows in set (0.00 sec) <br>
 <br>
