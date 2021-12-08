FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

COPY scripts/install-android-dev.sh /tmp/
RUN chmod +x /tmp/install-android-dev.sh \
  && /tmp/install-android-dev.sh 6.5.1 21.1.6352462 \
  && rm -rf /tmp/install-android-dev.sh /var/lib/apt/lists/*
ENV GRADLE_HOME="/opt/gradle/latest"
ENV ANDROID_SDK_ROOT="/usr/lib/android-sdk/"
ENV PATH="/opt/gradle/latest/bin:${PATH}"
