FROM gitlab/gitlab-runner
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN sudo apt-get install systemd
RUN apt-get remove docker docker-engine docker.io
RUN apt-get install docker.io -y
RUN systemctl start docker
RUN systemctl enable docker
RUN docker --version