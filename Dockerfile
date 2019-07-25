FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave

RUN apt-get update

RUN apt-get install -y apt-transport-https  ca-certificates  curl  gnupg-agent software-properties-common
    
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

RUN apt-key fingerprint 0EBFCD88


RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
   
RUN apt-get update

RUN apt-get install -y docker-ce=5:18.09.3~3-0~debian-stretch docker-ce-cli=5:18.09.3~3-0~debian-stretch containerd.io
