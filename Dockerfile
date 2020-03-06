FROM gcc

MAINTAINER sentiboard

RUN apt-get update && apt-get install -y --no-install-recommends \
    cmake ninja-build \
    python3-pip \
    gcovr lcov \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install cpplint
