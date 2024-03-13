FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install git
RUN git clone https://github.com/p2kpat/Docker_Jenkins_Pipeline.git
RUN cd Docker_Jenkins_Pipeline; ls -a; sh myscript.sh
FROM openjdk:8
COPY . /var/www/java
WORKDIR /var/www/java
RUN javac myJavaapp.java
CMD java myJavaapp; ls -a; sh myscript.sh
#CMD ls -a; sh myscript.sh #this was commented out due to only 1 CMD allowed per Dockerfile
EXPOSE 80
