FROM &bioc.CONTAINER_BASE_IMAGE
ARG LIBRARY
ARG PKG
ARG PLATFORM
COPY . /home/ubuntu/
WORKDIR /home/ubuntu
RUN mkdir -p $LIBRARY && mv ./$LIBRARY/* $LIBRARY/ && bash .github/scripts/build_package.sh $LIBRARY $PKG $PLATFORM
