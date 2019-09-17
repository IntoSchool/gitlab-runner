FROM gitlab/gitlab-runner
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install systemd -y
RUN apt-get remove docker docker-engine docker.io
RUN apt-get install docker.io -y
RUN service docker start
RUN service docker enable
RUN docker --version