FROM jenkins:2.60.1

USER root

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        patch rsync \
        ca-certificates mysql-client gcc gettext && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
