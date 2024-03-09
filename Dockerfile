FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install git
RUN git clone https://github.com/p2kpat/Docker_Jenkins_Pipeline.git
RUN cd Docker_Jenkins_Pipeline; ls -a; sh myscript.sh

