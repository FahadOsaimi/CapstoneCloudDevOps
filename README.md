# Capstone Project for Udacity Cloud DevOps
---

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

#### A.4. AWS account to access AWS Lambda
You'll need an [AWS account](https://aws.amazon.com/free/?all-free-tier.&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc) to get started with [AWS Lambda](https://aws.amazon.com/lambda/), which is a serverless computing platform on cloud.  

Create capstoneDevopsUdacity Stack in AWS :
``` sh scripts/createStackScript.sh capstoneDevopsUdacity servers.yml parameters-servers.json ```

Update capstoneDevopsUdacity Stack in AWS :
``` sh scripts/updateStackScript.sh capstoneDevopsUdacity servers.yml parameters-servers.json ```

<!-- RollBack capstoneDevopsUdacity Stack  :
``` sh scripts/rollBackStackScript.sh capstoneDevopsUdacity ``` -->

#### A.5. Jenkins 
You would need to install Jenkins in your local or in docker :
[Install Jenkins](https://jenkins.io/doc/book/installing/)


---
