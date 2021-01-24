FROM gcc:8

MAINTAINER sentiboard

RUN apt-get update && apt-get install -y --no-install-recommends \
    cmake ninja-build \
    git \
    python3-pip \
    gcovr lcov \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install cpplint
