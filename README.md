# Capstone Project for Udacity Cloud DevOps


### A. Dependencies
#### A.1. Python
[Download and install the python](https://www.python.org/downloads/). 

#### A.2. Docker Desktop
You would require you to install Docker Desktop to create containers for individual microservices. Refer the following links for instructions 
* [macOS](https://docs.docker.com/docker-for-mac/install/), 
* [Windows 10 64-bit: Pro, Enterprise, or Education](https://docs.docker.com/docker-for-windows/install/), 
* [Windows  10 64-bit Home](https://docs.docker.com/toolbox/toolbox_install_windows/). 
* You can find installation instructions for other operating systems at:  https://docs.docker.com/install/

#### A.3. Kubernetes 
You would need to install any one tool for creating a Kubernetes cluster - KubeOne / Minikube / kubectl on top of Docker Desktop:
1. [Install and Set Up kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) directly on top of Docker desktop - For Windows/macOS
2. [Install Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) - For Linux/macOS

#### A.4. AWS account with EKS serivce 
1. You'll need an [AWS account](https://aws.amazon.com/free/?all-free-tier.&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc) 
2. Create EKS Cluster in AWS :
``` sh scripts/run_createEKSCluster.sh CapstoneDevopsUdacity ```
<!-- 2. Create capstoneDevopsUdacity Stack in AWS :
``` sh scripts/createStackScript.sh capstoneDevopsUdacity servers.yml parameters-servers.json ```
3. Update capstoneDevopsUdacity Stack in AWS :
``` sh scripts/updateStackScript.sh capstoneDevopsUdacity servers.yml parameters-servers.json ``` -->
<!-- RollBack capstoneDevopsUdacity Stack  :
``` sh scripts/rollBackStackScript.sh capstoneDevopsUdacity ``` -->

#### A.5. Jenkins 
You would need to install Jenkins in your local or in docker :
[Install Jenkins](https://jenkins.io/doc/book/installing/)


---

### B. Deploy to EKS cluster 
1. To deploy docker image to Kubernetes cluster run the following command :
``` sh scripts/run_kubernetes.sh ``` 


---

### C. Rolling Deployment 
1. To rollback docker image deplyment in Kubernetes cluster run the following command :
``` sh scripts/rollback_kubernetes.sh ``` 


---

### D. Demonstration 
1. Execute linting step in code pipeline 
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/LintDockerStep0.png?raw=true)
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/LintDockerStep1%5C.png?raw=true)

2. Build a Docker container in a pipeline 
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/build.png?raw=true)

3. And Push it to the repository.
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/push.png?raw=true)

4. AWS console in the EKS section showing the cluster
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/EKS1.png?raw=true)
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/EKS2.png?raw=true)

5. AWS console in the CloudFormation section showing the stack for the cluster
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/cloudFormation.png?raw=true)

6. Terminal showing the results of running the commands to create the cluster
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/CreateCluster.png?raw=true)

7. Deploy image to EKS cluster 
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/deploymentDone.png?raw=true)

8. Rolling back deployment 
![alt text](https://github.com/FahadOsaimi/CapstoneCloudDevOps/blob/master/screenshots/rollingbackDeployment.png?raw=true)

