FROM ubuntu:16.04
RUN sed -i -- 's/archive.ubuntu.com/mirror.kku.ac.th/g' /etc/apt/sources.list

MAINTAINER Watchanon Numnam "jiramot@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

ENV B2_ACCOUNT_ID   ""
ENV B2_APP_KEY      ""
ENV B2_BUCKET_ID    ""


RUN apt-get update
RUN apt-get install -q -y python-yaml python-pip
RUN pip install fusepy

RUN mkdir -p /opt/b2_fuse
COPY config.yml /opt/b2_fuse/config.yml
COPY setup.sh /opt/b2_fuse/setup.sh
WORKDIR /opt/b2_fuse

CMD ["./setup.sh"]
