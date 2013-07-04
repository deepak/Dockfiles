# Run Rails server
#
# VERSION        0.0.1
# DOCKER-VERSION 0.4.8

# USAGE: docker build -t codemancers/rails https://raw.github.com/deepak/Dockfiles/master/rails/Dockerfile

FROM codemancers/basebox/ruby2
 
MAINTAINER Deepak Kannan "deepak@codemancers.com"

## Install nginx
RUN apt-add-repository -y ppa:chris-lea/nginx-devel
RUN apt-get -yq install nginx nginx-common nginx-full

