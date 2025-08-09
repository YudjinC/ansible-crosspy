FROM alpine:3.19

#hadolint ignore=DL3018
RUN apk --no-cache add py-pip \
  git \
  openssh \
  ansible \
  ansible-lint \
  && ansible-galaxy collection install community.general \
  && rm -rf /var/cache/apk/*

RUN printf "Host *\n  StrictHostKeyChecking no\n" >> /etc/ssh/ssh_config
