[root@dbserver ~]# ls /var/kerberos/krb5kdc/ <br>
 <br>
[root@dbserver ~]# cat /var/kerberos/krb5kdc/kdc.conf  <br>
[kdcdefaults] <br>
 kdc_ports = 88 <br>
 kdc_tcp_ports = 88 <br>
 <br>
[realms] <br>
 LIANGBANGKE.SHG = { <br>
  #master_key_type = aes256-cts <br>
  acl_file = /var/kerberos/krb5kdc/kadm5.acl <br>
  dict_file = /usr/share/dict/words <br>
  admin_keytab = /var/kerberos/krb5kdc/kadm5.keytab <br>
  supported_enctypes = aes256-cts:normal aes128-cts:normal des3-hmac-sha1:normal arcfour-hmac:normal des-hmac-sha1:normal des-cbc-md5:normal des-cbc-crc:normal <br>
 } <br>
[root@dbserver ~]#  <br>
 <br>
[root@dbserver ~]# cat /var/kerberos/krb5kdc/kadm5.acl  <br>
*/admin@EXAMPLE.COM     * <br>
cloudera-scm@LIANGBANGKE.SHG admilc <br>
yaoming@LIANGBANGKE.SHG admilc <br>
jetli@LIANGBANGKE.SHG admilc <br>
[root@dbserver ~]#  <br>
 <br>
