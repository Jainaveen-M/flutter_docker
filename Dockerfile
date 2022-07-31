FROM node:latest
RUN git clone https://github.com/flutter/flutter.git -b 2.10.5
ENV PATH="/flutter/bin:$PATH"
RUN flutter doctor