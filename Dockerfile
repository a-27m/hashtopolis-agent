FROM nvidia/cuda:11.1-runtime-ubuntu18.04

LABEL maintainer a-27m@users.noreply.github.com

RUN apt install -y --no-install-recommends \
      curl \
      pciutils \
      python3 \
      python3-psutil \
      python3-requests && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /hashtopolis-agent-python
WORKDIR /hashtopolis-agent-python

COPY	hashtopolis.zip 	/hashtopolis-agent-python

ENTRYPOINT ["python3", "hashtopolis.zip"]
