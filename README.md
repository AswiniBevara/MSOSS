# Microsoft

# OSS Quickstart (Phase-2)

## Solution Architecture:

This solution will deploy the following architecture:

1. A Virtual Network with four subnets:

- Subnet1 – Jenkins server, Build instance with Chef Habitat
- Subnet2 – VM scale set
- Subnet3 – Elastic Stack
- Subnet4 – MongoDB

1. Azure Load Balancer
2. Azure Storage Account
3. GitHub- The Terraform code is taken from GitHub and has been configured as a job in Jenkins.

1. 2.Terraform:

**Terraform** is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing popular service providers as well as custom in-house solutions.

Terraform generates an execution plan describing what it will do to reach the desired state, and then executes it to build the described infrastructure.

Terraform&#39;s manageable infrastructure includes low-level components such as compute instances, storage, and networking, as well as high-level components such as DNS entries, SaaS features, etc.

1. 3.Kubernetes:

**Kubernetes** is an orchestrator tool provides a platform for automatic deployment, scaling and operations of applications. It is a system for managing containerized applications across a cluster of nodes and Kubernetes uses etcd to store configuration data that can be used by each of the nodes in the cluster.


  1. 3.1.Why Kubernetes?

- Developing and updating the software at scale.
- Better management through modularity.
- Kubernetes is the largest and fastest growing open source software solution focused on distributing system patterns.

1. 4.ELK Stack:

**Elastic** is the company behind Elastic stack, which is a suite of products including **E** lasticsearch, **L** ogstash and **K** ibana.  The ELK stack makes it easier and faster to search and analyze large data sets. Logstash is used to normalize the data, Elasticsearch processes, and then Kibana visualizes it.


  1. 4.1.Elasticsearch

Elasticsearch is an open-source, broadly-distributable, readily-scalable, enterprise-grade search engine. Elasticsearch can power extremely fast searches that support your data discovery applications **.** Consider these benefits:

- **Real-time data and real-time analytics:** The ELK stack gives you the power of real-time data insights, with the ability to perform super-fast data extractions from virtually all structured or unstructured data sources. With real-time extraction and real-time analytics, Elasticsearch is the engine that gives you both power and speed.
- **Scalable, high-availability, multi-tenant:**   It is built to scale horizontally out of the box. As you need more capacity, simply add another node and let the cluster reorganize itself to accommodate and exploit the extra hardware. Elasticsearch clusters are resilient since they automatically detect and remove node failures. You can set up multiple indices and query each of them independently or in combination.
- **Full text search: ** Elasticsearch uses Lucene to provide the most powerful full-text search capabilities available in any open-source product. The search features come with multi-language support, an extensive query language, geolocation support, context-sensitive suggestions, and autocompletion.
- **Document orientation:**  You can store complex, real-world entities in Elasticsearch as structured JSON documents. All fields have a default index, and you can use all the indices in a single query to get precise results in the blink of an eye.


  1. 4.2.Logstash — Routing Your Log Data

**Logstash** is a tool for log data intake, processing, and output. This includes virtually any type of log that you manage: system logs, webserver logs, error logs, and app logs.  You can save a lot of time by training Logstash to normalize the data, getting Elasticsearch to process the data, and then visualizing it with Kibana. With Logstash, it&#39;s easy to take all those logs and store them in a central location. The only prerequisite is a Java runtime, and it takes just two commands to get Logstash up and running. Logstash will serve as the workhorse for storage, querying, and analysis of your logs. Since it has an arsenal of ready-made inputs, filters, codecs, and outputs, you can grab hold of a very powerful feature-set with a very little effort on your part. Think of Logstash as a pipeline for event processing: it takes precious little time to choose the inputs, configure the filters, and extract the relevant, high-value data from your log.


  1. 4.3.Kibana — Visualizing Your Log Data

**Kibana ** is your log-data dashboard. Get a better grip on your large data stores with point-and-click pie charts, bar graphs, trendlines, maps, and scatter plots. You can visualize trends and patterns for data that would otherwise be extremely tedious to read and interpret. Eventually, each business line can make practical use of your data collection as you help them customize their dashboards. Save it, share it, and link your data visualizations for quick and smart communication.

  1. 4.4.Beats —  Lightweight Data Shippers

**Beats** is the platform for single-purpose data shippers. They install as lightweight agents and send data from hundreds or thousands of machines to Logstash or Elasticsearch. ELK allows Filebeat, Packetbeat, Metricbeat and Winlogbeat to ship log data from client servers.

**Filebeat** : For Text log files.                   **Metricbeat** : For OS and application.

**Packetbeat** : For Network monitoring.     **Winlogbeat** : For windows event logs.

**Flow Diagram:**


  1. 4.5.The following logs are visualized in Kibana:

| S.No | Nodes | Logs Path |
| --- | --- | --- |
| 1. | Application Node | /hab/svc/national-parks/logs/ /hab/pkgs/core/tomcat8/8.5.9/20170514144202/tc/logs//root/sup-national-parks.log |
| 2. | mongoDB | /hab/svc/mongodb/logs /hab/svc/mongodb/var/mongod.log /root/sup.mongodb.log |

1. 5.Jenkins:

**Jenkins**  is an open-source, continuous integration software tool written in the Java programming language for testing and reporting on isolated changes in a larger code base in real time. This software enables developers to find and solve defects in a code base rapidly and automate testing of their builds. There are also hundreds of **plugins**  available to enhance its power and usability.


  1. 5.1.Plugins:

The concept of plugins makes Jenkins attractive, easy to learn, and easy to use. Jenkins has many plugins available for free. These plugins help to integrate with various software tools for better convenience.

In this solution, we are using the Kubernetes Continuous Deploy plugins.


  
    1. 5.1.1.Kubernetes Continuous Deploy plugin:

This plugin allows for a Jenkins plugin to deploy resource configurations to a Kubernetes cluster.
It supports three options as:

- It helps to Fill the contents in kubeconfig file directly
- It provides to Fetch cluster details through SSH connection to the mater node
- To get the kubeconfig file from the workspace path.


  1. 5.2.Jenkins Pipeline

Jenkins Pipeline is a suite of plugins which supports implementing and integrating _continuous delivery pipelines_ into Jenkins.

A _continuous delivery pipeline_ is an automated expression of your process for getting software from version control through to users and customers. Every change to your software (committed in source control) goes through a complex process on its way to being released. This process involves building the software in a reliable and repeatable manner, as well as the progression of the built software (called a &quot;build&quot;) through multiple stages of testing and deployment. The Jenkins Pipeline automates large chunks of this process, making it easier to get vital changes to your users in a timely manner.

1. 6.Azure Storage Account:

**Microsoft Azure Storage** is a Microsoft-managed cloud service that provides storage that is highly available, secure, durable, scalable, and redundant. Microsoft takes care of maintenance and handles critical problems for you.

Azure Storage consists of three data services: Blob storage, File storage, and Queue storage. Blob storage supports both standard and premium storage, with premium storage using only SSDs for the fastest performance possible. Another feature is cool storage, allowing you to store large amounts of rarely accessed data for a lower cost. Azure Queue storage is a service for storing large numbers of messages that can be accessed from anywhere in the world via authenticated calls using HTTP or HTTPS.

To use any of the services provided by Azure Storage -- Blob storage, File storage, and Queue storage -- you must first create a storage account, then you transfer data to/from a specific service in that storage account.

1. 7.Chef Habitat:

**Chef Habitat** is a new open source project that allows developers to package their applications and run them on a wide variety of infrastructures.

Habitat essentially wraps applications into their own lightweight runtime environments and then allows you to run them in any environment, including bare metal servers, virtual machines, Docker containers (and their respective container management services), and PaaS systems like Cloud Foundry.


  1. 7.1.Why Habitat?

Habitat is a modern technology to build, deploy, and manage applications in any environment from traditional datacenters to containerized microservices.

This is because in Habitat, the application is the unit of automation.  This means the application package contains everything needed to deploy, run, and maintain the application.


  1. 7.2.Packaging an Application with Habitat:




  1. 7.3.Habitat Components:

**Habitat Supervisor:**

Habitat Supervisor is what runs the application artifact. The Supervisor is what allows you to run the artifact natively on hardware, in a virtual machine, or in a container (in the case of a container, you can also run it through a container orchestration service like Kubernetes, Mesosphere, or Docker Swarm).

**Service Group:**

A service group is a logical grouping of services with the same package and topology type connected in a ring. They are created to share configuration and file updates among the services within those groups and can be segmented based on workflow or deployment needs (QA, Production, and so on).


  1. 7.4.Habitat Packaging Format:

Habitat packages are in a format called the HART format, which stands for Habitat Artifact.

These HART packages contain the compiled application itself – if, for example, you had a Java application you were automating, you would have the compiled Java application within this package. Along with the application, these packages also include everything needed to deploy and run the application, all in one place.


  1. 7.5.Habitat Highlights:

Habitat is a first of its kind open source project that offers an entirely new approach to application management. Habitat makes the application and its automation the unit of deployment. When applications are wrapped in a lightweight &quot;habitat,&quot; the runtime environment, whether it is a container, bare metal, or PaaS, is no longer the focus and does not constrain the application. Features of Habitat include:

- Support for the Modern Applications
- Run Any Application, Anywhere
- Easily Port Legacy Applications
- Improve the Container Experience
- Integrate into Chef&#39;s DevOps Workflow

1. 8.Prerequisites:

1. Generate your SSH key
2. Create service principal


  1. 8.1.Generate your SSH key:

PuTTYgen is a key generator tool for creating  [SSH keys](https://www.ssh.com/ssh/key/) for  [PuTTY](https://www.ssh.com/ssh/putty/download).

1. PuTTYgen is normally installed as part of the normal PuTTY .msi package installation. There is no need for a separate PuTTYgen download. Download PuTTY from the  [**PuTTY download page**](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)
2. Go to Windows  **Start menu**  →  **All Programs**  →  **PuTTY** →  **PuTTYgen** to generate an SSH key.

1. Click  **Generate** , and start moving the mouse within the window. Putty uses mouse movements to collect randomness. You may need to move the mouse for some time, depending on the size of your key. As you move it, the green progress bar should advance.

1. Once the progress bar becomes full, the actual key generation computation takes place. When complete, the public key should appear in the Window.
2. Copy the Public Key in a notepad. This will be used while deploying the ARM Template.
3. You should save at the private key by clicking  **Save private key** , this private key will be used to log in to the Jenkins server.


  1. 8.2.Create Service principal

To deploy the ARM template, you need to create a service principal to deploy the Terraform code which is configured as an ELK job in Jenkins.

You can create a service principal within the Azure Portal via  [Azure Cloud Shell](https://azure.microsoft.com/en-us/features/cloud-shell/). The AD identity running this installation should have the  **Owner**  role on the required Subscription.

1. **1.** We need to create a Service Principal to pass in to the template properties. If you do not have an existing Service Principal, you can create one using the  **following**  command:

**az ad sp create-for-rbac**

You will receive the following output:

_Retrying role assignment creation: 1/36_

_    {_

_      &quot;appId&quot;:_ **&quot;a530c3a0-YOUR-GUID-HERE-21e3d7ede80c&quot;,**

_      &quot;displayName&quot;: &quot;azure-cli-2017-05-23-15-28-34&quot;,_

_      &quot;name&quot;: &quot;http://azure-cli-2017-05-23-15-28-34&quot;,_

_      &quot;password&quot;:_ **&quot;an autogenerated password will appear here&quot;,**

_      &quot;tenant&quot;:_ **&quot;a2b2d6bc-YOUR-GUID-HERE-f97a7ac416d7&quot;**

_    }_

1. **2.** Note the values for  **appId** , **password(ClientSecret)**, **tenant ID** for the parameters section.

You can take the **subscription ID** by running the following command:

**azure account show**

_You will receive the following output:_

_info:    Executing command account show_

_data:    Name                        : Sysgain-Backup_

_data_ **:    ID** _                             :_ **086ef973-**** YOUR-GUID-HERE ****-c3d05c01a287**

_data:    State                          : Enabled_

_data:    Tenant ID                   :_ _a2b2d6bc-YOUR-GUID-HERE-f97a7ac416d7_

_data:    Is Default                   : true_

_data:    Environment              : AzureCloud_

_data:    Has Certificate            : No_

_data:    Has Access Token       : Yes_

_data:    User name                   : username@sysgaininc.onmicrosoft.com_

_data:_

_info:    account show command OK_

1. **3.** Note down the ID from the displayed details, that is the **Subscription ID.**

1. 9.Deploy the ARM Template:

1. Take the main-template from the provided GitHub URL.
2. Log in to your Azure portal using your credentials
3. Click on **New (+)** and search for **Template deployment** , then click on it.



1. Click on **Create.**



1. Click on **Build your own template in the editor**.



1. Clear the default template section, paste the template from the GitHub and click on **Save**.



1. Enter the detailsfor **Admin username, SSH Public key (Generated in prerequisites section), then provide Subscription Id, Application Id, Client Secret (Password), Tenant Id (Created in prerequisites section)** in Custom Deployment and click on **Purchase**.



1. The below screen shot shows that the template has been successfully deployed.



1. We can view the output section as shown below.



1. 10. Environment Details:

The ARM template will deploy the following resources on Azure:

| **S.No** | **Nodes** | **Installed application** | **No of nodes** | **Node Purpose** | **Ports** |
| --- | --- | --- | --- | --- | --- |
|
1.
 | Jenkins server | Jenkins | 1 | Install and configure plugins and jobs | 8080 |
|
1.
 | Build Instance | Chef habitat | 1 | Creating habitat packages | 9631,9638 |
|
1.
 | ELK Stack | Elasticsearch, Kibana, Filebeat | 1 | Elasticsearch: Contains Index dataKibana: Segregate logs to visualize as graphsFilebeat: Forwarding logs to Kibana | 80 |
|
1.
 | Load Balancer | - | 1 | Directs traffic to **Application Nodes** |   |
|
1.
 | Azure Storage Account | - | 1 | To store the VM VHD&#39;s |   |
|
1.
 | Kubernetes | - | 1 master, 3 agents | To Deploy applications in pods |   |
|
1.
 | Azure Container Registry | - | 1 | To store Docker images |   |







1. 11. Solution Workflow:

After the template has been successfully deployed, log in to the Jenkins server with its Fully Qualified Domain Name (FQDN) provided in the output section, along with the private SSH key and username.

1. Open PuTTY and enter the Jenkins FQDN under **Session**.



1. Navigate to **Connection &gt; SSH &gt; Auth**.

1. Click on the **Browse** section, select SSH private key file which was generated earlier as part of the prerequisites section.

1. Enter the same username, which was provided while deploying the ARM template.



1. Change to the root user by using the below command:

**sudo -i**

1. Change the directory to **cd /var/lib/jenkins/secrets** and run the below command to get the initial admin password.

**cat initialAdminPassword**

1. Make a note of this value (Password), this credential will be used to login into the Jenkins WEBUI. (as part of step 9)

1. Open a new browser and enter the Jenkins FQDN with extension 8080, as shown below:

**Eg** : **&lt;jenkinsFQDN&gt;:8080**

1. To unlock the Jenkins server, provide the Initialadminpassword which was retrieved as part of step 7.
2.



1. Click on **Install suggested plugins**.



1. Click on **Continue as admin**.



1. Click on **Start using Jenkins**.

1. We can see the jobs which are created in Jenkins server.

1.
  1. 11.1.Jobs

1. **1.** The following are the jobs that are created in Jenkins.

1. **2.** For the above jobs, we have installed the Kubernetes Continuous Deploy plugins.



1.
  1. 11.2.Executing the Jobs
    1. 11.2.1.ELKJob

In ELKJob, we have configured terraform to deploy ELK stack on Azure. This will bring up one node, configured with Elasticsearch, Logstash and Kibana.

1.
  1.
    1. 11.2.2. [KubernetesClusterjob](http://jenkinsserverkymy3.westus.cloudapp.azure.com:8080/job/KubernetesClusterjob/)


In Kubernetes Cluster job, it configures to deploy Kubernetes cluster on Azure, this will bring up one master and three nodes. This job also deploys Azure Container registry.

1.
  1.
    1. 11.2.3.VMSSjob

This job will launch a Virtual Machine Scale set with three application nodes.

1. Move to the Jenkins Dashboard and click on **ELKJob**.

1. Click on **Build Now**. Then, to view the Console output, click on **Build number** (Eg: **#1** ) as shown below.



1. Click on **Console Output.**

1. The console output log will be shown as below. If the build is successful, the output will reflect as &quot;Success&quot;.



1. Once the ELKJob is successfully executed, move to the Jenkins Dashboard and click on **KuberentesClusterjob**.

1. Click on **Build Now**. Then, to view the Console output, click on **Build number** (Eg: **#1** ) as shown below.



1. Click on **Console Output.**



1. The console output log will be shown as below. If the build is successful, the output will reflect as &quot;Success&quot;.

1. 12.Chef Habitat:

1.
  1. 12.1Configuring Habitat:

To build the National Park application, begin by logging in to the Build Instance using Fully Qualified Domain Name (FQDN) from the output section of the ARM template. (As shown in the solution workflow step at page 22)

1. Switch to the root user using **sudo -i**
2. Chef Habitat can be configured using the command _&quot;_ **hab setup** _&quot;._



1. Enter &quot; **yes**&quot; for setting up the default origin
2. Enter origin name as &quot; **root&quot;**
3. Enter &quot; **yes**&quot; to generate the origin key
4. Enter &quot; **no**&quot; to setup the github access token
5. Enter &quot; **yes**&quot; to Enable analytics

1.
  1. 12.2Creating Hart File:

1. Clone the repository from URL **https://github.com/sysgain/MSOSS.git,** from the branch **habcode** using below commands.

**git clone** [https://github.com/sysgain/MSOSS.git](https://github.com/sysgain/MSOSS.git)

**cd MSOSS**

**git checkout habcode**

1. Navigate to the location of the Directory where package plan.sh file is located.

**cd national-parks-plan-kubernetes**

1. Enter &quot; **hab studio enter** _&quot;_

1. Build the Application, using the &quot; **Build**&quot; Command.

1. Then exit the hab studio, by entering the **exit** command.

1. Once **build** is successful, a **HART** file will be generated in results Directory.



### 12.3 Get Azure Container Registry Password from Azure portal

1. **1.**  Login to Azure Portal   [https://portal.azure.com/](https://portal.azure.com/) .On the home page on left side menu click on more services and search for container registries


1. **2.** Click on **Available azure container registries**** resource **and click on** Access Keys**

1. **3.** Be handy with username, password 1 and password 2 for furtherdeployments

### 12.4 Uploading MongoDB HART file to Azure Container Registry:

Change directory to **/scripts** by using below command

cd /scripts/

Execute mongodb\_acrimage.sh command using below command

 sh mongodb\_acrimage.sh &lt;username&gt;&lt;password1&gt;

**NOTE:  ** password 1 value is copied from previous step. Password 1 value should be one of the password 1 and password 2 but not both.

1.
  1. 12.5Uploading National parks HART File to the Azure Container Registry:

Change directory to **/scripts** by using below command

**cd /scripts**

Execute np\_acrimage.sh command using below command

 sh np\_acrimage.sh &lt;username&gt; &lt;password1&gt;

**NOTE:  ** password 1 value is copied from previous step. Password 1 value should be one of the password 1 and password 2 but not both.

## 12.6 Verify Docker Images in Azure Container Registry:

1. **1.** Login to Azure Portal   [https://portal.azure.com/](https://portal.azure.com/) .On the home page on left side menu click on more services and search for container registries


1. **2.** Click on **Available azure container registries**** resource **and click on** Repositories**

1.
  1. 12.7Run VMSS Job:

1. Move to the Jenkins Dashboard and click on VMSS Job.

1. Click on **Build Now**. Then, to view the Console output, click on **Build number** (Eg: **#1** ) as shown below.



1. Click on **Console Output.**

1. The console output log will be shown as below. If the build is successful, the output will reflect as &quot;Success&quot;.





## 12.7 Verify Kubernetes Pods and Services:

1. **1.** Get the DNS of Jenkins server and Kubernetes master Instances from Azure portal
2. **2.** Login to Jenkins using private key and execute below command to connect to Kubernetes master instance.

**ssh -i /var/lib/jenkins/.ssh/id\_rsa adminuser@&lt;**** Kubernetes master Instance dns name ****&gt;**

1. **3.** Change to the root user by using the below command:

**sudo -i**

1. **4.**  Verify Kubernetes pods using below command

    **Kubectl get pods**

1. **5.****  **Verify kubernetes service using below command

**    Kubectl get svc**

** **

## 12.8 Access National Park Applications

1. Get the External IP of web service in the above picture and access national parks applications in browser as below

http://&lt;external-ip&gt;:8080/national-parks

1.
  1. 12.9Verifying Application Logs:

1. Get pod details by running command below command

  **Kubectl get pods**

1. Get Logs of each pod by using below command. Replace podname with exact pod name one at a time.

Kubectl logs &lt;podname&gt;
