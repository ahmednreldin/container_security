FROM jenkins/jenkins:lts
# change user to root because Jenkins image run Jenkins user as default 
USER root 

# install docker client on the image 
RUN apt-get update -qq
RUN apt-get install -qq apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable"
RUN apt-get update -qq \
    && apt-get install docker-ce -y 
# add Jenkins user to docker group 
RUN usermod -aG docker jenkins
