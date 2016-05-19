#
{ <br>
  "timestamp" : "2016-05-19T16:32:15.447Z",<br>
  "clusters" : [ { <br>
    "name" : "Cluster 1", <br>
    "version" : "CDH5", <br>
    "services" : [ { <br>
      "name" : "hive", <br>
      "type" : "HIVE", <br>
      "config" : { <br>
        "roleTypeConfigs" : [ { <br>
          "roleType" : "HIVEMETASTORE", <br>
          "items" : [ { <br>
            "name" : "hive_metastore_java_heapsize", <br>
            "value" : "282066944" <br>
          } ] <br>
        }, { <br>
          "roleType" : "HIVESERVER2", <br>
          "items" : [ { <br>
            "name" : "hiveserver2_java_heapsize", <br>
            "value" : "797966336" <br>
          }, { <br>
            "name" : "hiveserver2_spark_driver_memory", <br>
            "value" : "966367641" <br>
          }, { <br>
            "name" : "hiveserver2_spark_executor_cores", <br>
            "value" : "2" <br>
          }, { <br>
            "name" : "hiveserver2_spark_executor_memory", <br>
            "value" : "912680550" <br>
          }, { <br>
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead", <br>
            "value" : "102" <br>
          }, { <br>
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead", <br>
            "value" : "153" <br>
          } ] <br>
        } ], <br>
        "items" : [ { <br>
          "name" : "hive_metastore_database_host", <br>
          "value" : "master" <br>
        }, { <br>
          "name" : "hive_metastore_database_name", <br>
          "value" : "hivemeta" <br>
        }, { <br>
          "name" : "hive_metastore_database_password", <br>
          "value" : "123456" <br>
        }, { <br>
          "name" : "hive_metastore_database_user", <br>
          "value" : "root" <br>
        }, { <br>
          "name" : "mapreduce_yarn_service", <br>
          "value" : "yarn" <br>
        }, { <br>
          "name" : "zookeeper_service", <br>
          "value" : "zookeeper" <br>
        } ] <br>
      }, <br>
      "roles" : [ { <br>
        "name" : "hive-GATEWAY-05ced441cca7b50bd95a8724513757bb", <br>
        "type" : "GATEWAY", <br>
        "hostRef" : { <br>
          "hostId" : "i-9d0a9d02" <br>
        }, <br>
        "config" : { <br>
          "items" : [ ] <br>
        } <br>
      }, { <br>
        "name" : "hive-GATEWAY-4c8ee4983a1511ba7934291b7bec9a47", <br>
        "type" : "GATEWAY", <br>
        "hostRef" : { <br>
          "hostId" : "i-9c0a9d03" <br>
        }, <br>
        "config" : { <br>
          "items" : [ ] <br>
        } <br>
      }, { <br>
        "name" : "hive-GATEWAY-5a942853d6dcc330af3eb061f39f5bf3", <br>
        "type" : "GATEWAY", <br>
        "hostRef" : { <br>
          "hostId" : "i-8b0a9d14" <br>
        }, <br>
        "config" : { <br>
          "items" : [ ] <br>
        } <br>
      }, { <br>
        "name" : "hive-GATEWAY-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "GATEWAY", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ ] <br>
        } <br>
      }, { <br>
        "name" : "hive-HIVEMETASTORE-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "HIVEMETASTORE", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "dgyynnjc3jri25fw9eo8jrifl" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hive-HIVESERVER2-05ced441cca7b50bd95a8724513757bb", <br>
        "type" : "HIVESERVER2", <br>
        "hostRef" : { <br>
          "hostId" : "i-9d0a9d02" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "1qmkt1ll1m37l7lhec8d3w2ci" <br>
          } ] <br>
        } <br>
      } ], <br>
      "displayName" : "Hive" <br>
    }, { <br>
      "name" : "zookeeper", <br>
      "type" : "ZOOKEEPER", <br>
      "config" : { <br>
        "roleTypeConfigs" : [ { <br>
          "roleType" : "SERVER", <br>
          "items" : [ { <br>
            "name" : "zookeeper_server_java_heapsize", <br>
            "value" : "282066944" <br>
          } ] <br>
        } ], <br>
        "items" : [ ] <br>
      }, <br>
      "roles" : [ { <br>
        "name" : "zookeeper-SERVER-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "SERVER", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "3vsaam6p8h393blybum7po4of" <br>
          }, { <br>
            "name" : "serverId", <br>
            "value" : "1" <br>
          } ] <br>
        } <br>
      } ], <br>
      "displayName" : "ZooKeeper" <br>
    }, { <br>
      "name" : "hue", <br>
      "type" : "HUE", <br>
      "config" : { <br>
        "roleTypeConfigs" : [ ], <br>
        "items" : [ { <br>
          "name" : "hive_service", <br>
          "value" : "hive" <br>
        }, { <br>
          "name" : "hue_webhdfs", <br>
          "value" : "hdfs-NAMENODE-63eab5f746be478720aa251cf434ed57" <br>
        }, { <br>
          "name" : "oozie_service", <br>
          "value" : "oozie" <br>
        }, { <br>
          "name" : "zookeeper_service", <br>
          "value" : "zookeeper" <br>
        } ] <br>
      }, <br>
      "roles" : [ { <br>
        "name" : "hue-HUE_SERVER-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "HUE_SERVER", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "as3hltvg06t8i43wtzwx0joje" <br>
          }, { <br>
            "name" : "secret_key", <br>
            "value" : "kxuqYjcdOM8V2TwxugVHH8ViZOFkFb" <br>
          } ] <br>
        } <br>
      } ], <br>
      "displayName" : "Hue" <br>
    }, { <br>
      "name" : "oozie", <br>
      "type" : "OOZIE", <br>
      "config" : { <br>
        "roleTypeConfigs" : [ { <br>
          "roleType" : "OOZIE_SERVER", <br>
          "items" : [ { <br>
            "name" : "oozie_database_host", <br>
            "value" : "master" <br>
          }, { <br>
            "name" : "oozie_database_name", <br>
            "value" : "oz" <br>
          }, { <br>
            "name" : "oozie_database_password", <br>
            "value" : "123456" <br>
          }, { <br>
            "name" : "oozie_database_type", <br>
            "value" : "mysql" <br>
          }, { <br>
            "name" : "oozie_database_user", <br>
            "value" : "root" <br>
          }, { <br>
            "name" : "oozie_java_heapsize", <br>
            "value" : "282066944" <br>
          } ] <br>
        } ], <br>
        "items" : [ { <br>
          "name" : "hive_service", <br>
          "value" : "hive" <br>
        }, { <br>
          "name" : "mapreduce_yarn_service", <br>
          "value" : "yarn" <br>
        }, { <br>
          "name" : "zookeeper_service", <br>
          "value" : "zookeeper" <br>
        } ] <br>
      }, <br>
      "roles" : [ { <br>
        "name" : "oozie-OOZIE_SERVER-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "OOZIE_SERVER", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "cps42tvh199epd2dpiyqg8u03" <br>
          } ] <br>
        } <br>
      } ], <br>
      "displayName" : "Oozie" <br>
    }, { <br>
      "name" : "yarn", <br>
      "type" : "YARN", <br>
      "config" : { <br>
        "roleTypeConfigs" : [ { <br>
          "roleType" : "GATEWAY", <br>
          "items" : [ { <br>
            "name" : "mapred_reduce_tasks", <br>
            "value" : "3" <br>
          }, { <br>
            "name" : "mapred_submit_replication", <br>
            "value" : "1" <br>
          } ] <br>
        }, { <br>
          "roleType" : "JOBHISTORY", <br>
          "items" : [ { <br>
            "name" : "mr2_jobhistory_java_heapsize", <br>
            "value" : "282066944" <br>
          } ] <br>
        }, { <br>
          "roleType" : "NODEMANAGER", <br>
          "items" : [ { <br>
            "name" : "rm_cpu_shares", <br>
            "value" : "1500" <br>
          }, { <br>
            "name" : "rm_io_weight", <br>
            "value" : "750" <br>
          }, { <br>
            "name" : "yarn_nodemanager_heartbeat_interval_ms", <br>
            "value" : "100" <br>
          }, { <br>
            "name" : "yarn_nodemanager_local_dirs", <br>
            "value" : "/yarn/nm" <br>
          }, { <br>
            "name" : "yarn_nodemanager_log_dirs", <br>
            "value" : "/yarn/container-logs" <br>
          }, { <br>
            "name" : "yarn_nodemanager_resource_cpu_vcores", <br>
            "value" : "1" <br>
          }, { <br>
            "name" : "yarn_nodemanager_resource_memory_mb", <br>
            "value" : "1024" <br>
          } ] <br>
        }, { <br>
          "roleType" : "RESOURCEMANAGER", <br>
          "items" : [ { <br>
            "name" : "resource_manager_java_heapsize", <br>
            "value" : "282066944" <br>
          }, { <br>
            "name" : "yarn_scheduler_maximum_allocation_mb", <br>
            "value" : "1024" <br>
          }, { <br>
            "name" : "yarn_scheduler_maximum_allocation_vcores", <br>
            "value" : "1" <br>
          } ] <br>
        } ], <br>
        "items" : [ { <br>
          "name" : "hdfs_service", <br>
          "value" : "hdfs" <br>
        }, { <br>
          "name" : "rm_dirty", <br>
          "value" : "false" <br>
        }, { <br>
          "name" : "rm_last_allocation_percentage", <br>
          "value" : "75" <br>
        }, { <br>
          "name" : "yarn_service_cgroups", <br>
          "value" : "true" <br>
        }, { <br>
          "name" : "yarn_service_lce_always", <br>
          "value" : "true" <br>
        }, { <br>
          "name" : "zk_authorization_secret_key", <br>
          "value" : "qg3tRaulzcyXrocrSU8PLcuw8nm2xt" <br>
        }, { <br>
          "name" : "zookeeper_service", <br>
          "value" : "zookeeper" <br>
        } ] <br>
      }, <br>
      "roles" : [ { <br>
        "name" : "yarn-JOBHISTORY-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "JOBHISTORY", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "3g1b0jkamf9qnsujyxjvrtfpz" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "yarn-NODEMANAGER-05ced441cca7b50bd95a8724513757bb", <br>
        "type" : "NODEMANAGER", <br>
        "hostRef" : { <br>
          "hostId" : "i-9d0a9d02" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "4t6hhm8xgmakzurg2a48gfbxe" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "yarn-NODEMANAGER-4c8ee4983a1511ba7934291b7bec9a47", <br>
        "type" : "NODEMANAGER", <br>
        "hostRef" : { <br>
          "hostId" : "i-9c0a9d03" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "8093poix5kg1fi6r925aurayr" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "yarn-NODEMANAGER-5a942853d6dcc330af3eb061f39f5bf3", <br>
        "type" : "NODEMANAGER", <br>
        "hostRef" : { <br>
          "hostId" : "i-8b0a9d14" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "x5r91m9x9p8dayivz3tft96g" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "yarn-RESOURCEMANAGER-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "RESOURCEMANAGER", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "rm_id", <br>
            "value" : "44" <br>
          }, { <br>
            "name" : "role_jceks_password", <br>
            "value" : "e6x51cur9ifj3smn7z54jbjso" <br>
          } ] <br>
        } <br>
      } ], <br>
      "displayName" : "YARN (MR2 Included)" <br>
    }, { <br>
      "name" : "hdfs", <br>
      "type" : "HDFS", <br>
      "config" : { <br>
        "roleTypeConfigs" : [ { <br>
          "roleType" : "BALANCER", <br>
          "items" : [ { <br>
            "name" : "balancer_java_heapsize", <br>
            "value" : "282066944" <br>
          } ] <br>
        }, { <br>
          "roleType" : "DATANODE", <br>
          "items" : [ { <br>
            "name" : "datanode_java_heapsize", <br>
            "value" : "1073741824" <br>
          }, { <br>
            "name" : "dfs_data_dir_list", <br>
            "value" : "/dfs/dn" <br>
          }, { <br>
            "name" : "dfs_datanode_du_reserved", <br>
            "value" : "6341367808" <br>
          }, { <br>
            "name" : "dfs_datanode_max_locked_memory", <br>
            "value" : "4294967296" <br>
          }, { <br>
            "name" : "rm_cpu_shares", <br>
            "value" : "500" <br>
          }, { <br>
            "name" : "rm_io_weight", <br>
            "value" : "250" <br>
          } ] <br>
        }, { <br>
          "roleType" : "GATEWAY", <br>
          "items" : [ { <br>
            "name" : "dfs_client_use_trash", <br>
            "value" : "true" <br>
          } ] <br>
        }, { <br>
          "roleType" : "JOURNALNODE", <br>
          "items" : [ { <br>
            "name" : "dfs_journalnode_edits_dir", <br>
            "value" : "/jr/edit1" <br>
          } ] <br>
        }, { <br>
          "roleType" : "NAMENODE", <br>
          "items" : [ { <br>
            "name" : "dfs_name_dir_list", <br>
            "value" : "/dfs/nn" <br>
          }, { <br>
            "name" : "dfs_namenode_servicerpc_address", <br>
            "value" : "8022" <br>
          }, { <br>
            "name" : "namenode_java_heapsize", <br>
            "value" : "282066944" <br>
          } ] <br>
        }, { <br>
          "roleType" : "SECONDARYNAMENODE", <br>
          "items" : [ { <br>
            "name" : "fs_checkpoint_dir_list", <br>
            "value" : "/dfs/snn" <br>
          }, { <br>
            "name" : "secondary_namenode_java_heapsize", <br>
            "value" : "282066944" <br>
          } ] <br>
        } ], <br>
        "items" : [ { <br>
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key", <br>
          "value" : "rZbzCzKke3mPtQB6ZsRQYQJhDgmbBJ" <br>
        }, { <br>
          "name" : "dfs_ha_fencing_methods", <br>
          "value" : "shell(true)" <br>
        }, { <br>
          "name" : "fc_authorization_secret_key", <br>
          "value" : "FLPKDOch8lE1PlqlGbUE3YEGiLCShO" <br>
        }, { <br>
          "name" : "http_auth_signature_secret", <br>
          "value" : "gaLjE1iUGHMcvwuJonAZ6HS3d18p5V" <br>
        }, { <br>
          "name" : "rm_dirty", <br>
          "value" : "false" <br>
        }, { <br>
          "name" : "rm_last_allocation_percentage", <br>
          "value" : "25" <br>
        }, { <br>
          "name" : "zookeeper_service", <br>
          "value" : "zookeeper" <br>
        } ] <br>
      }, <br>
      "roles" : [ { <br>
        "name" : "hdfs-BALANCER-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "BALANCER", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-DATANODE-05ced441cca7b50bd95a8724513757bb", <br>
        "type" : "DATANODE", <br>
        "hostRef" : { <br>
          "hostId" : "i-9d0a9d02" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "dbnhzylo9d1cfuiinejfs2hzw" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-DATANODE-4c8ee4983a1511ba7934291b7bec9a47", <br>
        "type" : "DATANODE", <br>
        "hostRef" : { <br>
          "hostId" : "i-9c0a9d03" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "6wg29dlgknohgk6lq5uni088c" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-DATANODE-5a942853d6dcc330af3eb061f39f5bf3", <br>
        "type" : "DATANODE", <br>
        "hostRef" : { <br>
          "hostId" : "i-8b0a9d14" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "5aqcvdhyj7qz3ms76kj9xc3xe" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-FAILOVERCONTROLLER-05ced441cca7b50bd95a8724513757bb", <br>
        "type" : "FAILOVERCONTROLLER", <br>
        "hostRef" : { <br>
          "hostId" : "i-9d0a9d02" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "aow0o8xwk4825srbcm8f8j1bu" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-FAILOVERCONTROLLER-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "FAILOVERCONTROLLER", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "b22ouns05vey9th0bu15hh48i" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-JOURNALNODE-05ced441cca7b50bd95a8724513757bb", <br>
        "type" : "JOURNALNODE", <br>
        "hostRef" : { <br>
          "hostId" : "i-9d0a9d02" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "3n4dcml5eq91eyakhrz5t3f1m" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-JOURNALNODE-4c8ee4983a1511ba7934291b7bec9a47", <br>
        "type" : "JOURNALNODE", <br>
        "hostRef" : { <br>
          "hostId" : "i-9c0a9d03" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "4p2j7zfj5om7rqjc6au0vk8pp" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-JOURNALNODE-5a942853d6dcc330af3eb061f39f5bf3", <br>
        "type" : "JOURNALNODE", <br>
        "hostRef" : { <br>
          "hostId" : "i-8b0a9d14" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "role_jceks_password", <br>
            "value" : "6lshds5k2cxnqk3lskppo988q" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-NAMENODE-05ced441cca7b50bd95a8724513757bb", <br>
        "type" : "NAMENODE", <br>
        "hostRef" : { <br>
          "hostId" : "i-9d0a9d02" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "autofailover_enabled", <br>
            "value" : "true" <br>
          }, { <br>
            "name" : "dfs_federation_namenode_nameservice", <br>
            "value" : "nameservice1" <br>
          }, { <br>
            "name" : "dfs_namenode_quorum_journal_name", <br>
            "value" : "nameservice1" <br>
          }, { <br>
            "name" : "namenode_id", <br>
            "value" : "51" <br>
          }, { <br>
            "name" : "role_jceks_password", <br>
            "value" : "4s3fshra54ykuxmxxgkz4riph" <br>
          } ] <br>
        } <br>
      }, { <br>
        "name" : "hdfs-NAMENODE-63eab5f746be478720aa251cf434ed57", <br>
        "type" : "NAMENODE", <br>
        "hostRef" : { <br>
          "hostId" : "i-9f0a9d00" <br>
        }, <br>
        "config" : { <br>
          "items" : [ { <br>
            "name" : "autofailover_enabled", <br>
            "value" : "true" <br>
          }, { <br>
            "name" : "dfs_federation_namenode_nameservice", <br>
            "value" : "nameservice1" <br>
          }, { <br>
            "name" : "dfs_namenode_quorum_journal_name", <br>
            "value" : "nameservice1" <br>
          }, { <br>
            "name" : "namenode_id", <br>
            "value" : "46" <br>
          }, { <br>
            "name" : "role_jceks_password", <br>
            "value" : "39uy61ibujj27f0wz9v00jdjz" <br>
          } ] <br>
        } <br>
      } ], <br>
      "displayName" : "HDFS" <br>
    } ] <br>
  } ], <br>
  "hosts" : [ { <br>
    "hostId" : "i-9f0a9d00", <br>
    "ipAddress" : "172.31.26.69", <br>
    "hostname" : "master", <br>
    "rackId" : "/default", <br>
    "config" : { <br>
      "items" : [ ] <br>
    } <br>
  }, { <br>
    "hostId" : "i-9d0a9d02", <br>
    "ipAddress" : "172.31.26.67", <br>
    "hostname" : "master2", <br>
    "rackId" : "/default", <br>
    "config" : { <br>
      "items" : [ ] <br>
    } <br>
  }, { <br>
    "hostId" : "i-9c0a9d03", <br>
    "ipAddress" : "172.31.26.68", <br>
    "hostname" : "slave1", <br>
    "rackId" : "/default", <br>
    "config" : { <br>
      "items" : [ ] <br>
    } <br>
  }, { <br>
    "hostId" : "i-8b0a9d14", <br>
    "ipAddress" : "172.31.26.66", <br>
    "hostname" : "slave2", <br>
    "rackId" : "/default", <br>
    "config" : { <br>
      "items" : [ { <br>
        "name" : "host_clock_offset_thresholds", <br>
        "value" : "{\"warning\":9000,\"critical\":10000}" <br>
      } ] <br>
    } <br>
  } ], <br>
  "users" : [ { <br>
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-63eab5f746be478720aa251cf434ed57", <br>
    "roles" : [ "ROLE_USER" ], <br>
    "pwHash" : "e1c2ec672eb80f5c319f6fbc02e34b03162be975cc42b9f7a1fa1e7c13744ff2", <br>
    "pwSalt" : -7000578382313711139, <br>
    "pwLogin" : true <br>
  }, { <br>
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-63eab5f746be478720aa251cf434ed57", <br>
    "roles" : [ "ROLE_USER" ], <br>
    "pwHash" : "e855d39dafbf7f2e8a076058b39cecb76e620e5e79a16d1d9b6c8d2ffdfc9daf", <br>
    "pwSalt" : -831703570917587501, <br>
    "pwLogin" : true <br>
  }, { <br>
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-63eab5f746be478720aa251cf434ed57", <br>
    "roles" : [ "ROLE_USER" ], <br>
    "pwHash" : "52a499ba159fb2b02014958ca53064e6dc4f942070b2302ae8e994d15b7344ad", <br>
    "pwSalt" : 5405673055339178486, <br>
    "pwLogin" : true <br>
  }, { <br>
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-63eab5f746be478720aa251cf434ed57", <br>
    "roles" : [ "ROLE_USER" ], <br>
    "pwHash" : "52c6533a4ea9e84f7a7698057cfba49d38d872a6d4ad5c9fde1aedd2a9338674", <br>
    "pwSalt" : 648547987409367727, <br>
    "pwLogin" : true <br>
  }, { <br>
    "name" : "admin", <br>
    "roles" : [ "ROLE_LIMITED" ], <br>
    "pwHash" : "1afbea63b1444cefea323cf2b46248fde6b8be83712a2adfdecd0879a664709d", <br>
    "pwSalt" : 2915526546004185332, <br>
    "pwLogin" : true <br>
  }, { <br>
    "name" : "cloudera", <br>
    "roles" : [ "ROLE_ADMIN" ], <br>
    "pwHash" : "9c9ee5c3b1f54f9ed0d94a652bb0e2c2862804f6ac147237216b9c8033336718", <br>
    "pwSalt" : -7642853833984771425, <br>
    "pwLogin" : true <br>
  }, { <br>
    "name" : "minotaur", <br>
    "roles" : [ "ROLE_CONFIGURATOR" ], <br>
    "pwHash" : "6bb7f08736b485af817a4026e3b127a2195dac1722202ef177fba49f1cfc38fe", <br>
    "pwSalt" : 6792373883719144841, <br>
    "pwLogin" : true <br>
  } ], <br>
  "versionInfo" : { <br>
    "version" : "5.7.0", <br>
    "buildUser" : "jenkins", <br>
    "buildTimestamp" : "20160401-1334", <br>
    "gitHash" : "ec0e7e69444280aa311511998bd83e8e6572f61c", <br>
    "snapshot" : false <br>
  }, <br>
  "managementService" : { <br>
    "name" : "mgmt", <br>
    "type" : "MGMT", <br>
    "config" : { <br>
      "roleTypeConfigs" : [ { <br>
        "roleType" : "EVENTSERVER", <br>
        "items" : [ { <br>
          "name" : "event_server_heapsize", <br>
          "value" : "282066944" <br>
        } ] <br>
      }, { <br>
        "roleType" : "HOSTMONITOR", <br>
        "items" : [ { <br>
          "name" : "firehose_heapsize", <br>
          "value" : "282066944" <br>
        }, { <br>
          "name" : "firehose_non_java_memory_bytes", <br>
          "value" : "805306368" <br>
        } ] <br>
      }, { <br>
        "roleType" : "REPORTSMANAGER", <br>
        "items" : [ { <br>
          "name" : "headlamp_database_host", <br>
          "value" : "master" <br>
        }, { <br>
          "name" : "headlamp_database_name", <br>
          "value" : "rm" <br>
        }, { <br>
          "name" : "headlamp_database_password", <br>
          "value" : "123456" <br>
        }, { <br>
          "name" : "headlamp_database_user", <br>
          "value" : "root" <br>
        }, { <br>
          "name" : "headlamp_heapsize", <br>
          "value" : "282066944" <br>
        } ] <br>
      }, { <br>
        "roleType" : "SERVICEMONITOR", <br>
        "items" : [ { <br>
          "name" : "firehose_heapsize", <br>
          "value" : "282066944" <br>
        }, { <br>
          "name" : "firehose_non_java_memory_bytes", <br>
          "value" : "805306368" <br>
        } ] <br>
      } ], <br>
      "items" : [ ] <br>
    }, <br>
    "roles" : [ { <br>
      "name" : "mgmt-ALERTPUBLISHER-63eab5f746be478720aa251cf434ed57", <br>
      "type" : "ALERTPUBLISHER", <br>
      "hostRef" : { <br>
        "hostId" : "i-9f0a9d00" <br>
      }, <br>
      "config" : { <br>
        "items" : [ { <br>
          "name" : "role_jceks_password", <br>
          "value" : "4lhmgdsn651lfr747h8lu4mjp" <br>
        } ] <br>
      } <br>
    }, { <br>
      "name" : "mgmt-EVENTSERVER-63eab5f746be478720aa251cf434ed57", <br>
      "type" : "EVENTSERVER", <br>
      "hostRef" : { <br>
        "hostId" : "i-9f0a9d00" <br>
      }, <br>
      "config" : { <br>
        "items" : [ { <br>
          "name" : "role_jceks_password", <br>
          "value" : "axroz194mgliclcmd48jp8cwz" <br>
        } ] <br>
      } <br>
    }, { <br>
      "name" : "mgmt-HOSTMONITOR-63eab5f746be478720aa251cf434ed57", <br>
      "type" : "HOSTMONITOR", <br>
      "hostRef" : { <br>
        "hostId" : "i-9f0a9d00" <br>
      }, <br>
      "config" : { <br>
        "items" : [ { <br>
          "name" : "role_jceks_password", <br>
          "value" : "exzo2musecwbdje1zoj1ahqlf" <br>
        } ] <br>
      } <br>
    }, { <br>
      "name" : "mgmt-REPORTSMANAGER-63eab5f746be478720aa251cf434ed57", <br>
      "type" : "REPORTSMANAGER", <br>
      "hostRef" : { <br>
        "hostId" : "i-9f0a9d00" <br>
      }, <br>
      "config" : { <br>
        "items" : [ { <br>
          "name" : "role_jceks_password", <br>
          "value" : "72dkz2bm6d1jxahbocoofeox7" <br>
        } ] <br>
      } <br>
    }, { <br>
      "name" : "mgmt-SERVICEMONITOR-63eab5f746be478720aa251cf434ed57", <br>
      "type" : "SERVICEMONITOR", <br>
      "hostRef" : { <br>
        "hostId" : "i-9f0a9d00" <br>
      }, <br>
      "config" : { <br>
        "items" : [ { <br>
          "name" : "role_jceks_password", <br>
          "value" : "1w1s0hy5pb3ymx7p7cwrl3fj5" <br>
        } ] <br>
      } <br>
    } ], <br>
    "displayName" : "Cloudera Management Service" <br>
  }, <br>
  "managerSettings" : { <br>
    "items" : [ { <br>
      "name" : "CLUSTER_STATS_START", <br>
      "value" : "10/22/2012 4:50" <br>
    }, { <br>
      "name" : "PUBLIC_CLOUD_STATUS", <br>
      "value" : "ON_PUBLIC_CLOUD" <br>
    }, { <br>
      "name" : "REMOTE_PARCEL_REPO_URLS", <br>
      "value" : "https://archive.cloudera.com/cdh5/parcels/5.7.0/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/" <br>
    } ] <br>
  } <br>
} <br>
``` <br>
