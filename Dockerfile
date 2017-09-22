FROM ubuntu:17.10

ENV AWS_CLI_VERSION 1.11.158

RUN apt-get update
RUN apt-get install -y build-essential npm python-pip libpng-dev autoconf pngquant wget
RUN wget -q -O /tmp/libpng12.deb http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb && dpkg -i /tmp/libpng12.deb && rm /tmp/libpng12.deb
RUN apt-get clean
RUN pip --no-cache-dir install awscli==${AWS_CLI_VERSION}

WORKDIR /data
