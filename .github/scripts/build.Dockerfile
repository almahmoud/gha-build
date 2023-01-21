FROM &bioc.CONTAINER_BASE_IMAGE
ARG LIBRARY
ARG PKG
ARG PLATFORM
COPY . /home/ubuntu/
RUN bash /home/ubuntu/.github/scripts/download_artifact.sh $LIBRARY $PKG $PLATFORM