FROM k8s.gcr.io/git-sync/git-sync:v3.5.1

USER 0:0

RUN apt-get -q -y update
RUN apt-get -q -y upgrade
RUN apt-get -q -y install curl
RUN apt-get -q -y autoremove
RUN rm -rf /var/lib/apt/lists/*

USER 65533:65533
