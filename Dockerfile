FROM gitlab/gitlab-runner
RUN apt-get update
RUN apt-get remove docker docker-engine docker.io
RUN apt-get install docker.io -y
RUN systemctl start docker
RUN systemctl enable docker
RUN docker --version