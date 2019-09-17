FROM gitlab/gitlab-runner
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install systemd -y
RUN apt-get install chkconfig -y
RUN apt-get remove docker docker-engine docker.io
RUN apt-get install docker.io -y
RUN service docker start
RUN chkconfig enable docker
RUN docker --version