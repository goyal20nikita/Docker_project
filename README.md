Under the mentorship of Vimal Dagar sir i successfully completed the Docker Project .
I want to thank Vimal sir and Preeti chandak mam for providing such expertise training and oprotunity to  create project to showcase ourselves.


# PROJECT

I created an image that has jenkins installed using dockerfile.
*REQUIREMENTS:
  docker
  centos latest image
  docker-compose



*TO BUILD THE IMAGE :-
 docker built -t <image_name:version>

*TO RUN CONTAINER 
 docker run -dit  -P  --name jenkins_image  <image_name :version>

*TO CHECK IP ADDRESS OF IMAGE
 docker inspect jenkins_image

*JENKINS WILL BE LAUNCH IN RHEL8(local-server)
 <ipaddress_of_image> :8080


*JENKINS WILL BE LAUNCH IN WINDOWS(base-os)
 docker ps
 ##32768->8080
 <ipaddress_of_rhel> :32768

*TO GO INSIDE THE CONTAINER
 docker exec -it jenkins_image bash

#BY USING DOCKER-COMPOSE
  *docker-compose up 
  *docker ps 
  *docker-compose ps
  *docker-compose up -d(launch in background)

#WHEN WE LAUNCH THE IMAGE IT WILL AUTOMATICALLY START THE SERVICE.

IF IN CASE FAIL:
RUN SOME BASIC COMMAND
 *systemctl stop firewalld
 *getenforce
 *setenforce 0
 *systemctl restart docker
 *docker ps
 *docker images



#THANKYOU
#NIKITA GOYAL
#IIEC RISE 2020.8.5.4


