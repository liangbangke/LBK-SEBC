# SEBC


==========Cluster IP Address==========
192.168.60.80 NameNode
192.168.60.81 Datanode1
192.168.60.82 Datanode2
192.168.60.83 Datanode3
192.168.60.84 Datanode4

==========Remote Access==========
#CM Web URL
112.230.206.126:7181            102.168.60.80:7180
username:admin
password:admin

#All hosts SSHv2
112.230.206.126:2280            102.168.60.80:22      NameNode(master.hadoop)
112.230.206.126:2281            102.168.60.81:22      DataNode1
112.230.206.126:2282            102.168.60.82:22      DataNode2
112.230.206.126:2283            102.168.60.83:22      DataNode3
112.230.206.126:2284            102.168.60.84:22      DataNode4
username:root
password:123456







