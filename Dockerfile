FROM jenkins/jenkins:lts

USER root

RUN apt-get update \
 && apt-get install --no-install-recommends -y \
        patch \
        rsync \
        python-setuptools \
        ca-certificates \
        mysql-client \
        gcc \
        gettext \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

USER jenkins
