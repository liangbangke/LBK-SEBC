#OS type and version
CentOS 6.5

#uptime
[root@namenode1 ~]# uptime
 07:42:47 up 32 min,  1 user,  load average: 0.00, 0.02, 0.00
[root@namenode1 ~]# 

#MySQL Node YUM
[root@dbserver ~]# ls /etc/yum.repos.d
CentOS-Base.repo  CentOS-Debuginfo.repo  CentOS-Media.repo  CentOS-Vault.repo  mysql-community.repo
[root@dbserver ~]# 

#Add User
[root@namenode1 ~]# id yaoming
uid=2200(yaoming) gid=2200(yaoming) groups=2200(yaoming),2301(shanghai)
[root@namenode1 ~]# id jetli
uid=2300(jetli) gid=2300(jetli) groups=2300(jetli),2302(beijing)

[root@namenode1 ~]# cat /etc/passwd
yaoming:x:2200:2200::/home/yaoming:/bin/bash
jetli:x:2300:2300::/home/jetli:/bin/bash
[root@namenode1 ~]# 

[root@namenode1 ~]# cat /etc/group
shanghai:x:2301:yaoming
beijing:x:2302:jetli
[root@namenode1 ~]# 


