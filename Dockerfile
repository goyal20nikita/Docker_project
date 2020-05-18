FROM centos:latest
RUN yum -y install wget
RUN yum -y install tar
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install jenkins -y
Run yum -y install java-11-openjdk.x86_64
RUN yum install curl -y
RUN yum install httpd -y
RUN yum install git -y
RUN yum install sudo -y
RUN echo -e "jenkins ALL=(ALL) NOPASSWD: ALL" >>/etc/sudoers


USER jenkins
ENV USER jenkins
EXPOSE 8080
CMD ["java","-jar","/usr/lib/jenkins/jenkins.war"]




