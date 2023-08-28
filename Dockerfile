FROM circleci/android:api-26-alpha

ARG USER=circleci
USER ${USER}
WORKDIR /home/${USER}
