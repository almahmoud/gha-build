FROM &bioc.CONTAINER_BASE_IMAGE
ARG LIBRARY
ARG PKG
ARG PLATFORM
COPY . /home/ubuntu/
RUN mkdir -p $(dirname $LIBRARY)
COPY $LIBRARY $LIBRARY
WORKDIR /home/ubuntu
RUN bash .github/scripts/build_package.sh $LIBRARY $PKG $PLATFORM