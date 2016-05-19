
#1. What is ubertask optimization? <br>
mapreduce_job_ubertask_enabled:Whether to enable ubertask optimization, which runs "sufficiently small" jobs sequentially within a single JVM. "Small" is defined by the mapreduce.job.ubertask.maxmaps, mapreduce.job.ubertask.maxreduces, and mapreduce.job.ubertask.maxbytes settings.<br>
#2. Where in CM is the Kerberos Security Realm value displayed?<br>
setting: Kerberos Security Realm default_realm HADOOP.COM
The realm to use for Kerberos security. Note: Changing this setting would clear up all existing credentials and keytabs from Cloudera Manager.<br>
#3. Which CDH service(s) host a property for enabling Kerberos authentication?<br>
	a.hadoop_secure_web_ui yarn :Enables Kerberos authentication for Hadoop HTTP web consoles for all roles of this service using the SPNEGO protocol. Note: This is effective only if Kerberos is enabled for the HDFS service<br>
	b.enableSecurity:<br>
	Enable Kerberos authentication for ZooKeeper.<br>
	c.Enable Kerberos Authentication for HDFS HTTP Web-Consoles：	 Enables Kerberos authentication for Hadoop HTTP web consoles for all roles of this service using the SPNEGO protocol. Note: This is effective only if Kerberos is enabled for the HDFS service.<br>
<br>
#4. How do you upgrade the CM agents?<br>
	1.Log in to the Cloudera Manager Admin Console.<br>
	2.Upgrade hosts using one of the following methods:<br>
	  a.Select Yes, I would like to upgrade the Cloudera Manager Agent packages now and click Continue.<br>
	  b.Select the release of the Cloudera Manager Agent to install. Normally, this is the Matched Release for this Cloudera Manager Server. However, if you used a custom repository (instead of archive.cloudera.com) for the Cloudera Manager server, select Custom Repository and provide the required information. The custom repository allows you to use an alternative location, but that location must contain the matched Agent version.<br>
	  c.Click Continue. The JDK Installation Options page displays.Leave Install Oracle Java SE Development Kit (JDK) checked to allow Cloudera Manager to install the JDK on each cluster host, or uncheck if you plan to install it yourself.<br>
	     If local laws permit you to deploy unlimited strength encryption, and you are running a secure cluster, check the Install Java Unlimited Strength Encryption Policy Files checkbox.
	     Click Continue.
	  d.Specify credentials and initiate Agent installation:<br>
		 Select root or enter the username for an account that has password-less sudo permission.<br>
		 Select an authentication method:<br>
		 If you choose password authentication, enter and confirm the password.<br>
		 If you choose public-key authentication, provide a passphrase and path to the required key files.<br>
		 You can specify an alternate SSH port. The default value is 22.<br>
		 You can specify the maximum number of host installations to run at once. The default value is 10.<br>
	  e.Click Continue. The Cloudera Manager Agent packages and optionally the JDK are installed.<br>
	  f.Click Continue. The Host Inspector runs to inspect your managed hosts for correct versions and configurations. If there are problems, you can make changes and then rerun the inspector. When you are satisfied with the inspection results, click Continue.<br>
<br>
	3.Click Finish.<br>
	4.If you are upgrading from Cloudera Manager 5.0 and are using an external database for Cloudera Navigator, the Database Setup page displays. Configure database settings:<br>
	5.Enter the database host, database type, database name, username, and password for the database that you created when you set up the database.<br>
	6.Click Test Connection to confirm that Cloudera Manager can communicate with the database using the information you have supplied. If the test succeeds in all cases, click Continue; otherwise check and correct the information you have provided for the database and then try the test again. (For some servers, if you are using the embedded database, you will see a message saying the database will be created at a later step in the installation process.)<br>
	7.The Review Changes page displays. Review the configuration changes to be applied and click Continue. The Upgrade wizard displays a dialog box allowing you to choose whether to restart the Cloudera Management Service.<br>
	8.Click Continue. If you kept the default selection, the Upgrade wizard restarts the Cloudera Management Service.<br>
	9.Click Finish. The Home > Status tab displays.<br>
	<br>
#5. Give the tsquery statement used to chart Hue CPU utilization?<br>
	select cpu_system_rate + cpu_user_rate where category=ROLE and serviceName="hue"<br>
#6. List all the roles that make up the Hive service.<br>
   a.Hive metatstore Server<br>
   c. HiveServer2<br>
<br>
#7.List the prerequisite steps necessary to integrating Cloudera Manager with a Kerberos MIT KDC.<br>
<br>
		if the type is Local MIT KDC:<br>
		<br>
		1.An MIT KDC and a distinct Kerberos realm is deployed locally to the CDH cluster. The local MIT KDC is typically deployed on a Utility host. Additional replicated MIT KDCs for high-availability are optional.<br>
		2.All cluster hosts must be configured to use the local MIT Kerberos realm using the krb5.conf file.<br>
		3.All service and user principals must be created in the local MIT KDC and Kerberos realm.<br>
		4.The local MIT KDC will authenticate both the service principals (using keytab files) and user principals (using passwords).<br>
		5.Cloudera Manager connects to the local MIT KDC to create and manage the principals for the CDH services running on the cluster.<br> To do this Cloudera Manager uses an admin principal and keytab that is created during the security setup. This step has been automated by the Kerberos wizard. Instructions for manually creating the Cloudera Manager admin principal are provided in the Cloudera Manager security documentation.<br>
		6.Typically, the local MIT KDC administrator is responsible for creating all other user principals. If you use the Kerberos wizard, Cloudera Manager will create these principals and associated keytab files for you.<br>
		<br>
		if the type is Local MIT KDC with Active Directory Integration<br>
		<br>
		1.An MIT KDC and a distinct Kerberos realm is deployed locally to the CDH cluster. The local MIT KDC is typically deployed on a Utility host and additional replicated MIT KDCs for high-availability are optional.<br>
		2.All cluster hosts are configured with both Kerberos realms (local and central AD) using the krb5.conf file. The default realm should be the local MIT Kerberos realm.<br>
		3.Service principals should be created in the local MIT KDC and the local Kerberos realm. Cloudera Manager connects to the local MIT KDC to create and manage the principals for the CDH services running on the cluster. To do this, Cloudera Manager uses an admin principal and keytab that is created during the security setup. This step has been automated by the Kerberos wizard. Instructions for manually creating the Cloudera Manager admin principal are provided in the Cloudera Manager security documentation.<br>
		4.A one-way, cross-realm trust must be set up from the local Kerberos realm to the central AD realm containing the user principals that require access to the CDH cluster. There is no need to create the service principals in the central AD realm and no need to create user principals in the local realm.<br>
		
		Considerations when using an Active Directory KDC<br>
		<br>
		1.All service and user principals are created in the Active Directory KDC.<br>
		2.All cluster hosts are configured with the central AD Kerberos realm using krb5.conf.<br>
		3.Cloudera Manager connects to the Active Directory KDC to create and manage the principals for the CDH services running on the cluster. To do this, Cloudera Manager uses a principal that has the privileges to create other accounts within the given Organisational Unit (OU). This step has been automated by the Kerberos wizard. Instructions for manually creating the Cloudera Manager admin principal are provided in the Cloudera Manager security documentation.<br>
		4.All service and user principals are authenticated by the Active Directory KDC.<br>

<br>

