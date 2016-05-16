# SEBC

#Cluster IP Address
192.168.60.80 NameNode(master.hadoop)
192.168.60.81 datanode1
192.168.60.82 datanode2
192.168.60.83 datanode3
192.168.60.84 datanode4

#CM Web URL(Remote Access)
112.230.206.126:7181            102.168.60.80:7180
username:admin
password:admin

#All hosts SSHv2
112.230.206.126:2280            102.168.60.80:22      NameNode(master.hadoop)
112.230.206.126:2281            102.168.60.81:22      dataNode1
112.230.206.126:2282            102.168.60.82:22      dataNode2
112.230.206.126:2283            102.168.60.83:22      dataNode3
112.230.206.126:2284            102.168.60.84:22      dataNode4
username:root
password:123456







