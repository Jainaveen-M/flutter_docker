FROM node:latest
RUN apt-get update && \
    apt-get install android-sdk &&\
    ulimit -c unlimited &&\
    npm install -g firebase-tools
ENV ANDROID_SDK_ROOT=/usr/lib/android-sdk
RUN git clone https://github.com/flutter/flutter.git -b 2.10.5 
ENV PATH="/flutter/bin:$PATH"
ENV PATH="flutter/bin/cache/dart-sdk/bin:$PATH"
RUN flutter doctor