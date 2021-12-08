FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

COPY scripts/install-cmake.sh /tmp/
RUN chmod +x /tmp/install-cmake.sh \
  && /tmp/install-cmake.sh 3.19.7 \
  && rm -rf /tmp/install-cmake.sh /var/lib/apt/lists/*
