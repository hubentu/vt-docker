FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends git curl ca-certificates openssl build-essential automake libz-dev libbz2-dev liblzma-dev libcurl4-openssl-dev libssl-dev

WORKDIR /opt
RUN git clone https://github.com/atks/vt.git && cd /opt/vt &&  make && ln -s /opt/vt/vt /usr/local/bin/

RUN apt-get purge -y git ca-certificates openssl && apt-get autoremove -y && apt-get clean
