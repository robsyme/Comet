############################################################
# Dockerfile to build Comet container images
# Based on Ubuntu 14.04
############################################################

# Set the base image to Ubuntu
FROM hexabio/ubuntu-14.04

# Set noninterative mode
ENV DEBIAN_FRONTEND noninteractive

################## BEGIN INSTALLATION ######################

RUN apt-get update -y
RUN apt-get upgrade -y

ADD comet.2014011.linux.exe /

RUN chmod +x comet.2014011.linux.exe

ENTRYPOINT ["./comet.2014011.linux.exe"]

##################### INSTALLATION END #####################

# File Author / Maintainer
MAINTAINER Felipe da Veiga Leprevost <felipe@leprevost.com.br>
