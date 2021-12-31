FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="Wei Developers <support@weicrypto.com>"
LABEL description="Dockerised WeiCore, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /wei

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} wei
RUN useradd -u ${USER_ID} -g wei -s /bin/bash -m -d /wei wei
RUN mkdir /wei/.weicore
RUN chown wei:wei -R /wei

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER wei

VOLUME ["/wei"]

EXPOSE 9998 9999 19998 19999

WORKDIR /wei
