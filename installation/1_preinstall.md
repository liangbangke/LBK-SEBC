Enviroment CentOS 6.5
<br>
#Linux Configuration Checks on all your nodes
1. Check vm.swappiness on all your nodes<br>
[root@master /]# cat /etc/sysctl.conf | grep vm.swappiness<br>
vm.swappiness=1<br>
<br>
[root@datanode1 ~]# cat /etc/sysctl.conf | grep vm.swappiness<br>
vm.swappiness=1<br>
<br>
[root@datanode2 ~]# cat /etc/sysctl.conf | grep vm.swappiness<br>
vm.swappiness=1<br>
<br>
[root@datanode3 ~]# cat /etc/sysctl.conf | grep vm.swappiness<br>
vm.swappiness=1<br>
<br>
[root@datanode4 ~]# cat /etc/sysctl.conf | grep vm.swappiness<br>
vm.swappiness=1<br>
<br>
2. Enable the ntp service (on all nodes)<br>
Install ntp service:<br>
[root@master /]# yum install -y ntp<br>
<br>
Verify:<br>
[root@master /]# yum list installed | grep ntp<br>
fontpackages-filesystem.noarch<br>
ntp.x86_64              4.2.6p5-5.el6.centos.4<br>
ntpdate.x86_64          4.2.6p5-5.el6.centos.4<br>
<br>
Start:<br>
[root@master /]# service ntpd start<br>
[root@master /]# chkconfig ntpd on<br>
<br>
Verify:<br>
[root@master /]# chkconfig | grep ntpd<br>
ntpd            0:off   1:off   2:on    3:on    4:on    5:on    6:off<br>
ntpdate         0:off   1:off   2:off   3:off   4:off   5:off   6:off<br>
<br>
NTP Server:<br>
[root@master /]# vi /etc/ntp.conf<br>
driftfile /var/lib/ntp/drift<br>
restrict 127.0.0.1<br>
restrict -6 ::1<br>
restrict default nomodify notrap<br>
server 202.108.6.95 prefer<br>
includefile /etc/ntp/crypto/pw<br>
keys /etc/ntp/keys<br>
<br>
NTP Client:<br>
[root@datanode* /]# vi /etc/ntp.conf<br>
driftfile /var/lib/ntp/drift<br>
restrict 127.0.0.1<br>
restrict -6 ::1<br>
restrict default kod nomodify notrap nopeer noquery<br>
restrict -6 default kod nomodify notrap nopeer noquery<br>
server 192.168.60.80<br>
includefile /etc/ntp/crypto/pw<br>
keys /etc/ntp/keys<br>
<br>
#MySQL Installation Lab<br>
1.Download Mysql repo rpm (on all nodes)<br>
[root@master ~]# cd /etc/yum.repos.d/<br>
[root@master yum.repos.d]# wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm<br>
--2016-05-16 16:33:32--  http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm<br>
Resolving repo.mysql.com... 23.1.21.16<br>
Connecting to repo.mysql.com|23.1.21.16|:80... connected.<br>
HTTP request sent, awaiting response... 200 OK<br>
Length: 6140 (6.0K) [application/x-redhat-package-manager]<br>
Saving to: a€?mysql-community-release-el7-5.noarch.rpma€?<br>

100%[=============================================================>] 6,140       --.-K/s   in 0s     <br> 

2016-05-16 16:33:32 (23.6 MB/s) - a€?mysql-community-release-el7-5.noarch.rpma€? saved [6140/6140]<br>
<br>

2.Install mysql repo rpm (on all nodes)<br>
[root@master yum.repos.d]# rpm -ivh mysql-community-release-el7-5.noarch.rpm<br>
<br>
[root@master yum.repos.d]# ls<br>
CenOS-Base.repo.bak  CentOS-Debuginfo.repo  CentOS-Vault.repo      cloudera-manager.repo.~1~<br>
CentOS-Base.repo     CentOS-Media.repo      cloudera-manager.repo  mysql-community-release-el7-5.noarch.rpm<br>
<br>

3. Install mysql and the JDBC connector on all nodes<br>
[root@localhost /]# yum install -y mysql<br>
[root@localhost /]# yum install -y mysql-connector-java<br>
<br>

4. Install mysql-server on the server node<br>
[root@mster /]#yum install mysql-server<br>
<br>

5. Config mysql<br>
[root@localhost /]# /usr/bin/mysql_secure_installation<br>
Set root password?<br>
Remove anonymous users?<br>
Disallow root login remotely?<br>
Remove test database and access to it?<br>
Reload privilege tables now?<br>
<br>
[root@localhost Desktop]# /usr/bin/mysql_secure_installation<br>
NOTE: RUNNING ALL PARTS OF THIS SCRIPT IS RECOMMENDED FOR ALL MySQL<br>
      SERVERS IN PRODUCTION USE!  PLEASE READ EACH STEP CAREFULLY!<br>
<br>
In order to log into MySQL to secure it, we'll need the current<br>
password for the root user.  If you've just installed MySQL, and<br>
you haven't set the root password yet, the password will be blank,<br>
so you should just press enter here.<br>
<br>
Enter current password for root (enter for none):<br>
OK, successfully used password, moving on...<br>
<br>
Setting the root password ensures that nobody can log into the MySQL<br>
root user without the proper authorisation.<br>
<br>
Set root password? [Y/n] Y<br>
New password:<br>
Re-enter new password:<br>
Password updated successfully!<br>
Reloading privilege tables..<br>
... Success!<br>
<br>
<br>
By default, a MySQL installation has an anonymous user, allowing anyone<br>
to log into MySQL without having to have a user account created for<br>
them.  This is intended only for testing, and to make the installation<br>
go a bit smoother.  You should remove them before moving into a<br>
production environment.<br>
<br>
Remove anonymous users? [Y/n] Y<br>
... Success!<br>

Normally, root should only be allowed to connect from 'localhost'.  This<br>
ensures that someone cannot guess at the root password from the network.<br>
<br>
Disallow root login remotely? [Y/n] N<br>
... Success!<br>
<br>
By default, MySQL comes with a database named 'test' that anyone can<br>
access.  This is also intended only for testing, and should be removed<br>
before moving into a production environment.<br>
<br>
Remove test database and access to it? [Y/n] Y<br>
- Dropping test database...<br>
... Success!<br>
- Removing privileges on test database...<br>
... Success!<br>
<br>
Reloading the privilege tables will ensure that all changes made so far<br>
will take effect immediately.<br>
<br>
Reload privilege tables now? [Y/n] Y<br>
... Success!<br>
<br>
Cleaning up...<br>
<br>
All done!  If you've completed all of the above steps, your MySQL<br>
installation should now be secure.<br>
<br>
Thanks for using MySQL!<br>
<br>
6. Crete database<br>
[root@localhost /]# mysql -u root --password='123456' -e 'create database metastore default character set utf8;'<br>
[root@localhost /]# mysql -u root --password='123456' -e "CREATE USER 'hive'@'%' IDENTIFIED BY '123456'; GRANT ALL PRIVILEGES ON metastore. * TO 'hive'@'%'; FLUSH PRIVILEGES;"<br>
[root@localhost /]# mysql -u root --password='123456' -e "create user 'cm'@'%' identified by '123456'" <br>
[root@localhost /]# mysql -u root --password='123456' -e 'create database cm default character set utf8' <br>
[root@localhost /]# mysql -u root --password='123456' -e "grant all privileges on cm.* to 'cm'@'%'"<br>
[root@localhost /]# mysql -u root --password='123456' -e "create user 'amon'@'%' identified by '123456'"<br>
[root@localhost /]# mysql -u root --password='123456' -e 'create database amon default character set utf8'<br>
[root@localhost /]# mysql -u root --password='123456' -e "grant all privileges on amon.* to 'amon'@'%'"<br>
[root@localhost /]# mysql -u root --password='123456' -e "create user 'rman'@'%' identified by '123456'" <br>
[root@localhost /]# mysql -u root --password='123456' -e 'create database rman default character set utf8' <br>
[root@localhost /]# mysql -u root --password='123456' -e "grant all privileges on rman.* to 'rman'@'%'" <br>
[root@localhost /]# mysql -u root --password='123456' -e "create user 'sentry'@'%' identified by '123456'" <br>
[root@localhost /]# mysql -u root --password='123456' -e 'create database sentry default character set utf8'<br>
[root@localhost /]# mysql -u root --password='123456' -e "grant all privileges on sentry.* to 'sentry'@'%'"<br>
[root@localhost /]# mysql -u root --password='123456' -e "create user 'nav'@'%' identified by '123456'" <br>
[root@localhost /]# mysql -u root --password='123456' -e 'create database nav default character set utf8' <br>
[root@localhost /]# mysql -u root --password='123456' -e "grant all privileges on nav.* to 'nav'@'%'"<br>
[root@localhost /]# mysql -u root --password='123456' -e "create user 'navms'@'%' identified by '123456'" <br>
[root@localhost /]# mysql -u root --password='123456' -e 'create database navms default character set utf8' <br>
[root@localhost /]# mysql -u root --password='123456' -e "grant all privileges on navms.* to 'navms'@'%'" <br>
<br>
<br>
#CM/CDH Install Lab<br>
1. Install and enable httpd service<br>
[root@master ~]# yum install -y httpd<br>
[root@master ~]# service httpd start<br>
[root@master ~]# chkconfig httpd on<br>
<br>
2. Download CDH Parcels to directory /var/www/html/parcel/<br>
http://archive.cloudera.com/cdh5/parcels/5.7.0/
<br>
3. Download cloudera-manager.repo to directory /etc/yum.repos.d/<br>
http://archive.cloudera.com/cm5/redhat/6/x86_64/cm/cloudera-manager.repo<br>
<br>
4.Download Cloudera-manager RPMS and RPM-GPG-KEY-cloudera to directory /var/www/html/cm/<br>
RPM-GRG-KEY-cloudera URL:<br>
http://archive.cloudera.com/cm5/redhat/6/x86_64/cm/RPM-GPG-KEY-cloudera<br>
<br>
CM RPMS URL:<br>
http://archive.cloudera.com/cm5/redhat/6/x86_64/cm/5.7.0/<br>
<br>
<br>
5. Edit yum repo(on all nodes)<br>
[root@master ~]# more /etc/yum.repos.d/cloudera-manager.repo<br>
[cloudera-manager]<br>
name = Cloudera Manager, Version 5.7.0<br>
baseurl = http://192.168.60.80/cm/<br>
gpgkey = http://192.168.60.80/cm/RPM-GPG-KEY-cloudera<br>
gpgcheck = 1<br>
<br>
6. Install and enable CM CM-Agent <br>
[root@datanode1 ~]# yum install -y cloudera-manager-agent cloudera-manager-daemons cloudera-manager-server<br>
Loaded plugins: fastestmirror, refresh-packagekit, security<br>
Loading mirror speeds from cached hostfile<br>
* base: mirrors.btte.net<br>
* extras: mirror.bit.edu.cn<br>
* updates: mirror.bit.edu.cn<br>
Setting up Install Process<br>
Resolving Dependencies<br>
--> Running transaction check<br>
---> Package cloudera-manager-agent.x86_64 0:5.7.0-1.cm570.p0.76.el6 will be installed<br>
--> Processing Dependency: mod_ssl for package: cloudera-manager-agent-5.7.0-1.cm570.p0.76.el6.x86_64<br>
--> Processing Dependency: MySQL-python for package: cloudera-manager-agent-5.7.0-1.cm570.p0.76.el6.x86_64<br><br>
--> Processing Dependency: python-psycopg2 for package: cloudera-manager-agent-5.7.0-1.cm570.p0.76.el6.x86_64<br>
--> Processing Dependency: openssl-devel for package: cloudera-manager-agent-5.7.0-1.cm570.p0.76.el6.x86_64<br>
---> Package cloudera-manager-daemons.x86_64 0:5.7.0-1.cm570.p0.76.el6 will be installed<br>
--> Running transaction check<br>
---> Package MySQL-python.x86_64 0:1.2.3-0.3.c1.1.el6 will be installed<br>
---> Package mod_ssl.x86_64 1:2.2.15-47.el6.centos.4 will be installed<br>
--> Processing Dependency: httpd = 2.2.15-47.el6.centos.4 for package: 1:mod_ssl-2.2.15-47.el6.centos.4.x86_64<br>
---> Package openssl-devel.x86_64 0:1.0.1e-42.el6_7.4 will be installed<br>
--> Processing Dependency: openssl = 1.0.1e-42.el6_7.4 for package: openssl-devel-1.0.1e-42.el6_7.4.x86_64<br>
--> Processing Dependency: zlib-devel for package: openssl-devel-1.0.1e-42.el6_7.4.x86_64<br>
--> Processing Dependency: krb5-devel for package: openssl-devel-1.0.1e-42.el6_7.4.x86_64<br>
---> Package python-psycopg2.x86_64 0:2.0.14-2.el6 will be installed<br>
--> Running transaction check<br>
---> Package httpd.x86_64 0:2.2.15-29.el6.centos will be updated<br>
---> Package httpd.x86_64 0:2.2.15-47.el6.centos.4 will be an update<br>
--> Processing Dependency: httpd-tools = 2.2.15-47.el6.centos.4 for package: httpd-2.2.15-47.el6.centos.4.x86_64<br>
---> Package krb5-devel.x86_64 0:1.10.3-42z1.el6_7 will be installed<br>
--> Processing Dependency: krb5-libs = 1.10.3-42z1.el6_7 for package: krb5-devel-1.10.3-42z1.el6_7.x86_64<br>
--> Processing Dependency: libselinux-devel for package: krb5-devel-1.10.3-42z1.el6_7.x86_64<br>
--> Processing Dependency: libcom_err-devel for package: krb5-devel-1.10.3-42z1.el6_7.x86_64<br>
--> Processing Dependency: keyutils-libs-devel for package: krb5-devel-1.10.3-42z1.el6_7.x86_64<br>
---> Package openssl.x86_64 0:1.0.1e-15.el6 will be updated<br>
---> Package openssl.x86_64 0:1.0.1e-42.el6_7.4 will be an update<br>
---> Package zlib-devel.x86_64 0:1.2.3-29.el6 will be installed<br>
--> Running transaction check<br>
---> Package httpd-tools.x86_64 0:2.2.15-29.el6.centos will be updated<br>
---> Package httpd-tools.x86_64 0:2.2.15-47.el6.centos.4 will be an update<br>
---> Package keyutils-libs-devel.x86_64 0:1.4-5.el6 will be installed<br>
--> Processing Dependency: keyutils-libs = 1.4-5.el6 for package: keyutils-libs-devel-1.4-5.el6.x86_64<br>
---> Package krb5-libs.x86_64 0:1.10.3-10.el6_4.6 will be updated<br>
--> Processing Dependency: krb5-libs = 1.10.3-10.el6_4.6 for package: krb5-workstation-1.10.3-10.el6_4.6.x86_64<br>
---> Package krb5-libs.x86_64 0:1.10.3-42z1.el6_7 will be an update<br>
---> Package libcom_err-devel.x86_64 0:1.41.12-22.el6 will be installed<br>
--> Processing Dependency: libcom_err = 1.41.12-22.el6 for package: libcom_err-devel-1.41.12-22.el6.x86_64<br>
---> Package libselinux-devel.x86_64 0:2.0.94-5.8.el6 will be installed<br>
--> Processing Dependency: libselinux = 2.0.94-5.8.el6 for package: libselinux-devel-2.0.94-5.8.el6.x86_64<br>
--> Processing Dependency: libsepol-devel >= 2.0.32-1 for package: libselinux-devel-2.0.94-5.8.el6.x86_64<br>
--> Processing Dependency: pkgconfig(libsepol) for package: libselinux-devel-2.0.94-5.8.el6.x86_64<br>
--> Running transaction check<br>
---> Package keyutils-libs.x86_64 0:1.4-4.el6 will be updated<br>
--> Processing Dependency: keyutils-libs = 1.4-4.el6 for package: keyutils-1.4-4.el6.x86_64<br>
---> Package keyutils-libs.x86_64 0:1.4-5.el6 will be an update<br>
---> Package krb5-workstation.x86_64 0:1.10.3-10.el6_4.6 will be updated<br>
---> Package krb5-workstation.x86_64 0:1.10.3-42z1.el6_7 will be an update<br>
---> Package libcom_err.x86_64 0:1.41.12-18.el6 will be updated<br>
--> Processing Dependency: libcom_err = 1.41.12-18.el6 for package: e2fsprogs-libs-1.41.12-18.el6.x86_64<br>
--> Processing Dependency: libcom_err = 1.41.12-18.el6 for package: libss-1.41.12-18.el6.x86_64<br>
--> Processing Dependency: libcom_err = 1.41.12-18.el6 for package: e2fsprogs-1.41.12-18.el6.x86_64<br>
---> Package libcom_err.x86_64 0:1.41.12-22.el6 will be an update<br>
---> Package libselinux.x86_64 0:2.0.94-5.3.el6_4.1 will be updated<br>
--> Processing Dependency: libselinux = 2.0.94-5.3.el6_4.1 for package: libselinux-python-2.0.94-5.3.el6_4.1.x86_64<br>
--> Processing Dependency: libselinux = 2.0.94-5.3.el6_4.1 for package: libselinux-utils-2.0.94-5.3.el6_4.1.x86_64<br>
---> Package libselinux.x86_64 0:2.0.94-5.8.el6 will be an update<br>
---> Package libsepol-devel.x86_64 0:2.0.41-4.el6 will be installed<br>
--> Running transaction check<br>
---> Package e2fsprogs.x86_64 0:1.41.12-18.el6 will be updated<br>
---> Package e2fsprogs.x86_64 0:1.41.12-22.el6 will be an update<br>
---> Package e2fsprogs-libs.x86_64 0:1.41.12-18.el6 will be updated<br>
---> Package e2fsprogs-libs.x86_64 0:1.41.12-22.el6 will be an update<br>
---> Package keyutils.x86_64 0:1.4-4.el6 will be updated<br>
---> Package keyutils.x86_64 0:1.4-5.el6 will be an update<br>
---> Package libselinux-python.x86_64 0:2.0.94-5.3.el6_4.1 will be updated<br>
---> Package libselinux-python.x86_64 0:2.0.94-5.8.el6 will be an update<br>
---> Package libselinux-utils.x86_64 0:2.0.94-5.3.el6_4.1 will be updated<br>
---> Package libselinux-utils.x86_64 0:2.0.94-5.8.el6 will be an update<br>
---> Package libss.x86_64 0:1.41.12-18.el6 will be updated<br>
---> Package libss.x86_64 0:1.41.12-22.el6 will be an update<br>
--> Finished Dependency Resolution<br>
<br>
Dependencies Resolved<br>
<br>
==========================================================================================<br>
Package                    Arch     Version                     Repository          Size<br>
==========================================================================================<br>
Installing:<br>
cloudera-manager-agent     x86_64   5.7.0-1.cm570.p0.76.el6     cloudera-manager   7.5 M<br>
cloudera-manager-daemons   x86_64   5.7.0-1.cm570.p0.76.el6     cloudera-manager   539 M<br>
Installing for dependencies:<br>
MySQL-python               x86_64   1.2.3-0.3.c1.1.el6          base                86 k<br>
keyutils-libs-devel        x86_64   1.4-5.el6                   base                29 k<br>
krb5-devel                 x86_64   1.10.3-42z1.el6_7           updates            502 k<br>
libcom_err-devel           x86_64   1.41.12-22.el6              base                33 k<br>
libselinux-devel           x86_64   2.0.94-5.8.el6              base               137 k<br>
libsepol-devel             x86_64   2.0.41-4.el6                base                64 k<br>
mod_ssl                    x86_64   1:2.2.15-47.el6.centos.4    updates             95 k<br>
openssl-devel              x86_64   1.0.1e-42.el6_7.4           updates            1.2 M<br>
python-psycopg2            x86_64   2.0.14-2.el6                base               100 k<br>
zlib-devel                 x86_64   1.2.3-29.el6                base                44 k<br>
Updating for dependencies:<br>
e2fsprogs                  x86_64   1.41.12-22.el6              base               554 k<br>
e2fsprogs-libs             x86_64   1.41.12-22.el6              base               121 k<br>
httpd                      x86_64   2.2.15-47.el6.centos.4      updates            831 k<br>
httpd-tools                x86_64   2.2.15-47.el6.centos.4      updates             77 k<br>
keyutils                   x86_64   1.4-5.el6                   base                39 k<br>
keyutils-libs              x86_64   1.4-5.el6                   base                20 k<br>
krb5-libs                  x86_64   1.10.3-42z1.el6_7           updates            769 k<br>
krb5-workstation           x86_64   1.10.3-42z1.el6_7           updates            811 k<br>
libcom_err                 x86_64   1.41.12-22.el6              base                37 k<br>
libselinux                 x86_64   2.0.94-5.8.el6              base               108 k<br>
libselinux-python          x86_64   2.0.94-5.8.el6              base               203 k<br>
libselinux-utils           x86_64   2.0.94-5.8.el6              base                82 k<br>
libss                      x86_64   1.41.12-22.el6              base                42 k<br>
openssl                    x86_64   1.0.1e-42.el6_7.4           updates            1.5 M<br>
<br>
Transaction Summary<br>
==========================================================================================<br>
Install      12 Package(s)<br>
Upgrade      14 Package(s)<br>
<br>
Total download size: 554 M<br>
Downloading Packages:<br>
(1/26): MySQL-python-1.2.3-0.3.c1.1.el6.x86_64.rpm                 |  86 kB     00:00    <br>
(2/26): cloudera-manager-agent-5.7.0-1.cm570.p0.76.el6.x86_64.rpm  | 7.5 MB     00:00    <br>
(3/26): cloudera-manager-daemons-5.7.0-1.cm570.p0.76.el6.x86_64.rp | 539 MB     00:04    <br>
(4/26): e2fsprogs-1.41.12-22.el6.x86_64.rpm                        | 554 kB     00:00    <br>
(5/26): e2fsprogs-libs-1.41.12-22.el6.x86_64.rpm                   | 121 kB     00:00    <br>
(6/26): httpd-2.2.15-47.el6.centos.4.x86_64.rpm                    | 831 kB     00:00    <br>
(7/26): httpd-tools-2.2.15-47.el6.centos.4.x86_64.rpm              |  77 kB     00:00    <br>
(8/26): keyutils-1.4-5.el6.x86_64.rpm                              |  39 kB     00:00    <br>
(9/26): keyutils-libs-1.4-5.el6.x86_64.rpm                         |  20 kB     00:00    <br>
(10/26): keyutils-libs-devel-1.4-5.el6.x86_64.rpm                  |  29 kB     00:00    <br>
(11/26): krb5-devel-1.10.3-42z1.el6_7.x86_64.rpm                   | 502 kB     00:00    <br>
(12/26): krb5-libs-1.10.3-42z1.el6_7.x86_64.rpm                    | 769 kB     00:00    <br>
(13/26): krb5-workstation-1.10.3-42z1.el6_7.x86_64.rpm             | 811 kB     00:00    <br>
(14/26): libcom_err-1.41.12-22.el6.x86_64.rpm                      |  37 kB     00:00    <br>
(15/26): libcom_err-devel-1.41.12-22.el6.x86_64.rpm                |  33 kB     00:00    <br>
(16/26): libselinux-2.0.94-5.8.el6.x86_64.rpm                      | 108 kB     00:00    <br>
(17/26): libselinux-devel-2.0.94-5.8.el6.x86_64.rpm                | 137 kB     00:00    <br>
(18/26): libselinux-python-2.0.94-5.8.el6.x86_64.rpm               | 203 kB     00:00    <br>
(19/26): libselinux-utils-2.0.94-5.8.el6.x86_64.rpm                |  82 kB     00:00    <br>
(20/26): libsepol-devel-2.0.41-4.el6.x86_64.rpm                    |  64 kB     00:00    <br>
(21/26): libss-1.41.12-22.el6.x86_64.rpm                           |  42 kB     00:00    <br>
(22/26): mod_ssl-2.2.15-47.el6.centos.4.x86_64.rpm                 |  95 kB     00:00    <br>
(23/26): openssl-1.0.1e-42.el6_7.4.x86_64.rpm                      | 1.5 MB     00:01    <br>
(24/26): openssl-devel-1.0.1e-42.el6_7.4.x86_64.rpm                | 1.2 MB     00:00    <br>
(25/26): python-psycopg2-2.0.14-2.el6.x86_64.rpm                   | 100 kB     00:00    <br>
(26/26): zlib-devel-1.2.3-29.el6.x86_64.rpm                        |  44 kB     00:00    <br>
------------------------------------------------------------------------------------------<br>
Total                                                      46 MB/s | 554 MB     00:12    <br>
warning: rpmts_HdrFromFdno: Header V4 DSA/SHA1 Signature, key ID e8f86acd: NOKEY<br>
Retrieving key from https://archive.cloudera.com/cm5/redhat/6/x86_64/cm/RPM-GPG-KEY-cloudera<br>
Importing GPG key 0xE8F86ACD:<br>
Userid: "Yum Maintainer <webmaster@cloudera.com>"<br>
From  : https://archive.cloudera.com/cm5/redhat/6/x86_64/cm/RPM-GPG-KEY-cloudera<br>
Running rpm_check_debug<br>
Running Transaction Test<br>
Transaction Test Succeeded<br>
Running Transaction<br>
  Updating   : libcom_err-1.41.12-22.el6.x86_64                                      1/40<br>
  Updating   : libselinux-2.0.94-5.8.el6.x86_64                                      2/40<br>
  Updating   : keyutils-libs-1.4-5.el6.x86_64                                        3/40<br>
  Updating   : krb5-libs-1.10.3-42z1.el6_7.x86_64                                    4/40<br>
  Updating   : openssl-1.0.1e-42.el6_7.4.x86_64                                      5/40<br>
  Updating   : libss-1.41.12-22.el6.x86_64                                           6/40<br>
  Installing : MySQL-python-1.2.3-0.3.c1.1.el6.x86_64                                7/40<br>
  Updating   : httpd-tools-2.2.15-47.el6.centos.4.x86_64                             8/40<br>
  Updating   : httpd-2.2.15-47.el6.centos.4.x86_64                                   9/40<br>
  Installing : 1:mod_ssl-2.2.15-47.el6.centos.4.x86_64                              10/40<br>
  Installing : keyutils-libs-devel-1.4-5.el6.x86_64                                 11/40<br>
  Installing : libcom_err-devel-1.41.12-22.el6.x86_64                               12/40<br>
  Updating   : e2fsprogs-libs-1.41.12-22.el6.x86_64                                 13/40<br>
  Installing : libsepol-devel-2.0.41-4.el6.x86_64                                   14/40<br>
  Installing : libselinux-devel-2.0.94-5.8.el6.x86_64                               15/40<br>
  Installing : krb5-devel-1.10.3-42z1.el6_7.x86_64                                  16/40<br>
  Installing : cloudera-manager-daemons-5.7.0-1.cm570.p0.76.el6.x86_64              17/40<br>
  Installing : zlib-devel-1.2.3-29.el6.x86_64                                       18/40<br>
  Installing : openssl-devel-1.0.1e-42.el6_7.4.x86_64                               19/40<br>
  Installing : python-psycopg2-2.0.14-2.el6.x86_64                                  20/40<br>
  Installing : cloudera-manager-agent-5.7.0-1.cm570.p0.76.el6.x86_64                21/40<br>
  Updating   : e2fsprogs-1.41.12-22.el6.x86_64                                      22/40<br>
  Updating   : krb5-workstation-1.10.3-42z1.el6_7.x86_64                            23/40<br>
  Updating   : keyutils-1.4-5.el6.x86_64                                            24/40<br>
  Updating   : libselinux-utils-2.0.94-5.8.el6.x86_64                               25/40<br>
  Updating   : libselinux-python-2.0.94-5.8.el6.x86_64                              26/40<br>
  Cleanup    : krb5-workstation-1.10.3-10.el6_4.6.x86_64                            27/40<br>
  Cleanup    : e2fsprogs-1.41.12-18.el6.x86_64                                      28/40<br>
  Cleanup    : httpd-2.2.15-29.el6.centos.x86_64                                    29/40<br>
  Cleanup    : httpd-tools-2.2.15-29.el6.centos.x86_64                              30/40<br>
  Cleanup    : openssl-1.0.1e-15.el6.x86_64                                         31/40<br>
  Cleanup    : krb5-libs-1.10.3-10.el6_4.6.x86_64                                   32/40<br>
  Cleanup    : e2fsprogs-libs-1.41.12-18.el6.x86_64                                 33/40<br>
  Cleanup    : libss-1.41.12-18.el6.x86_64                                          34/40<br>
  Cleanup    : libselinux-python-2.0.94-5.3.el6_4.1.x86_64                          35/40<br>
  Cleanup    : keyutils-1.4-4.el6.x86_64                                            36/40<br>
  Cleanup    : libselinux-utils-2.0.94-5.3.el6_4.1.x86_64                           37/40<br>
  Cleanup    : libselinux-2.0.94-5.3.el6_4.1.x86_64                                 38/40<br>
  Cleanup    : keyutils-libs-1.4-4.el6.x86_64                                       39/40<br>
  Cleanup    : libcom_err-1.41.12-18.el6.x86_64                                     40/40<br>
  Verifying  : krb5-devel-1.10.3-42z1.el6_7.x86_64                                   1/40<br>
  Verifying  : krb5-libs-1.10.3-42z1.el6_7.x86_64                                    2/40<br>
  Verifying  : libselinux-utils-2.0.94-5.8.el6.x86_64                                3/40<br>
  Verifying  : httpd-2.2.15-47.el6.centos.4.x86_64                                   4/40<br>
  Verifying  : python-psycopg2-2.0.14-2.el6.x86_64                                   5/40<br>
  Verifying  : keyutils-libs-devel-1.4-5.el6.x86_64                                  6/40<br>
  Verifying  : libss-1.41.12-22.el6.x86_64                                           7/40<br>
  Verifying  : MySQL-python-1.2.3-0.3.c1.1.el6.x86_64                                8/40<br>
  Verifying  : krb5-workstation-1.10.3-42z1.el6_7.x86_64                             9/40<br>
  Verifying  : zlib-devel-1.2.3-29.el6.x86_64                                       10/40<br>
  Verifying  : openssl-devel-1.0.1e-42.el6_7.4.x86_64                               11/40<br>
  Verifying  : keyutils-libs-1.4-5.el6.x86_64                                       12/40<br>
  Verifying  : libcom_err-devel-1.41.12-22.el6.x86_64                               13/40<br>
  Verifying  : keyutils-1.4-5.el6.x86_64                                            14/40<br>
  Verifying  : cloudera-manager-agent-5.7.0-1.cm570.p0.76.el6.x86_64                15/40<br>
  Verifying  : cloudera-manager-daemons-5.7.0-1.cm570.p0.76.el6.x86_64              16/40<br>
  Verifying  : e2fsprogs-1.41.12-22.el6.x86_64                                      17/40<br>
  Verifying  : 1:mod_ssl-2.2.15-47.el6.centos.4.x86_64                              18/40<br>
  Verifying  : libsepol-devel-2.0.41-4.el6.x86_64                                   19/40<br>
  Verifying  : libselinux-2.0.94-5.8.el6.x86_64                                     20/40<br>
  Verifying  : httpd-tools-2.2.15-47.el6.centos.4.x86_64                            21/40<br>
  Verifying  : libselinux-devel-2.0.94-5.8.el6.x86_64                               22/40<br>
  Verifying  : libcom_err-1.41.12-22.el6.x86_64                                     23/40<br>
  Verifying  : libselinux-python-2.0.94-5.8.el6.x86_64                              24/40<br>
  Verifying  : e2fsprogs-libs-1.41.12-22.el6.x86_64                                 25/40<br>
  Verifying  : openssl-1.0.1e-42.el6_7.4.x86_64                                     26/40<br>
  Verifying  : httpd-2.2.15-29.el6.centos.x86_64                                    27/40<br>
  Verifying  : e2fsprogs-1.41.12-18.el6.x86_64                                      28/40<br><br>
  Verifying  : libselinux-2.0.94-5.3.el6_4.1.x86_64                                 29/40<br>
  Verifying  : openssl-1.0.1e-15.el6.x86_64                                         30/40<br>
  Verifying  : libselinux-utils-2.0.94-5.3.el6_4.1.x86_64                           31/40<br>
  Verifying  : libss-1.41.12-18.el6.x86_64                                          32/40<br>
  Verifying  : libcom_err-1.41.12-18.el6.x86_64                                     33/40<br>
  Verifying  : e2fsprogs-libs-1.41.12-18.el6.x86_64                                 34/40<br>
  Verifying  : libselinux-python-2.0.94-5.3.el6_4.1.x86_64                          35/40<br>
  Verifying  : krb5-libs-1.10.3-10.el6_4.6.x86_64                                   36/40<br>
  Verifying  : keyutils-1.4-4.el6.x86_64                                            37/40<br>
  Verifying  : httpd-tools-2.2.15-29.el6.centos.x86_64                              38/40<br>
  Verifying  : krb5-workstation-1.10.3-10.el6_4.6.x86_64                            39/40<br>
  Verifying  : keyutils-libs-1.4-4.el6.x86_64                                       40/40<br>
<br>
Installed:<br>
  cloudera-manager-agent.x86_64 0:5.7.0-1.cm570.p0.76.el6                             <br>   
  cloudera-manager-daemons.x86_64 0:5.7.0-1.cm570.p0.76.el6                              <br>
<br>
Dependency Installed:<br>
  MySQL-python.x86_64 0:1.2.3-0.3.c1.1.el6    keyutils-libs-devel.x86_64 0:1.4-5.el6    <br>
  krb5-devel.x86_64 0:1.10.3-42z1.el6_7       libcom_err-devel.x86_64 0:1.41.12-22.el6  <br>
  libselinux-devel.x86_64 0:2.0.94-5.8.el6    libsepol-devel.x86_64 0:2.0.41-4.el6      <br>
  mod_ssl.x86_64 1:2.2.15-47.el6.centos.4     openssl-devel.x86_64 0:1.0.1e-42.el6_7.4  <br>
  python-psycopg2.x86_64 0:2.0.14-2.el6       zlib-devel.x86_64 0:1.2.3-29.el6          <br>
<br>
Dependency Updated:<br>
  e2fsprogs.x86_64 0:1.41.12-22.el6          e2fsprogs-libs.x86_64 0:1.41.12-22.el6     <br>
  httpd.x86_64 0:2.2.15-47.el6.centos.4      httpd-tools.x86_64 0:2.2.15-47.el6.centos.4<br>
  keyutils.x86_64 0:1.4-5.el6                keyutils-libs.x86_64 0:1.4-5.el6           <br>
  krb5-libs.x86_64 0:1.10.3-42z1.el6_7       krb5-workstation.x86_64 0:1.10.3-42z1.el6_7<br>
  libcom_err.x86_64 0:1.41.12-22.el6         libselinux.x86_64 0:2.0.94-5.8.el6         <br>
  libselinux-python.x86_64 0:2.0.94-5.8.el6  libselinux-utils.x86_64 0:2.0.94-5.8.el6   <br>
  libss.x86_64 0:1.41.12-22.el6              openssl.x86_64 0:1.0.1e-42.el6_7.4         <br>
<br>
Complete!<br>
<br>
7. Enable Cloudera-Manager Cloudera-Manager-Agent<br>
[root@master ~]# service cloudera-scm-server start<br>
Starting cloudera-scm-server:                              [  OK  ]<br>
[root@master ~]# service cloudera-scm-agent start<br>
Starting cloudera-scm-agent:                              [  OK  ]<br>
<br>
[root@master ~]# chkconfig cloudera-scm-server on<br>
[root@master ~]# chkconfig cloudera-scm-agent on
<br>
<br>
