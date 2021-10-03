FROM debian:10
<<<<<< docker-legacy
LABEL MAINTAINER="Equinockx moisestapia741@gmail.com"

WORKDIR /home/

COPY . /home/


RUN apt-get update &&\
    apt-get install -y --no-install-recommends openssh-server && \
    apt-get install -y curl && \
    apt-get install --no-install-recommends -y php && \
    apt-get install -y unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
=======
LABEL MAINTAINER="https://github.com/htr-tech/zphisher"

WORKDIR zphisher/
ADD . /zphisher

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean
RUN apt-get install -y wget

CMD ["./zphisher.sh"]
>>>>>> master