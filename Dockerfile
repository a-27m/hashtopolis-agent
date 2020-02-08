FROM nvidia/opencl:devel-ubuntu16.04

RUN apt update && apt install -y --no-install-recommends \
  pciutils \
  git \
  python3 \
  python3-psutil \
  python3-requests && \
  git clone https://github.com/s3inlc/hashtopolis-agent-python.git

WORKDIR hashtopolis-agent-python

ENTRYPOINT ["python3", "__main__.py"]

