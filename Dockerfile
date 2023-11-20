# use the official ubuntu image as the base image
FROM ubuntu

# update the package list and install apache2
RUN apt-get update -y && \
	apt-get install apache2 -y

# copy the index.html file to the apache root directory
COPY index.html /var/www/html/

# start the apache2 server in the foregound
CMD ["/usr/sbin/apache1", "-D", "FOREGROUND"]


