FROM circleci/android:api-26-alpha

# Build:
#
# $ docker build -t ghost-android-build \
#     --build-arg USER_ID=$(id -u) \
#     --build-arg GROUP_ID=$(id -g) - < Dockerfile

# Run:
#
# $ docker run -it --workdir /home/user \
#     --volume ~/Ghost-Android:/home/user/ghost-android ghost-android-build bash

ARG USER_ID
ARG GROUP_ID

USER root
RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

ENV USER user
ENV HOME /home/user
ENV TARGET_SDK_VERSION 26

USER user
