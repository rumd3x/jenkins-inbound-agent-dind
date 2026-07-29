FROM jenkins/inbound-agent:alpine

# we need root access to use dind
ARG user=root

USER root
RUN  apk add docker openssh-client sshpass curl lftp python3 py3-pip tar gzip bzip2 xz bash coreutils grep sed gawk bind-tools iputils netcat-openbsd wget git jq tzdata ca-certificates

USER ${user}
