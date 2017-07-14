# https://github.com/jenkinsci/docker/
# https://hub.docker.com/r/jenkinsci/jenkins/tags/
FROM jenkinsci/jenkins:2.0-beta-2

USER root

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        patch rsync \
        ca-certificates mysql-client libmysqlclient-dev gcc gettext && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
