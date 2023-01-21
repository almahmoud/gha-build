FROM &bioc.CONTAINER_BASE_IMAGE
ARG LIBRARY
ARG PKG
ARG PLATFORM
COPY . /home/ubuntu/
RUN mkdir -p $LIBRARY
COPY ./$LIBRARY $LIBRARY
WORKDIR /home/ubuntu
RUN mv $LIBRARY/$(basename $LIBRARY); bash .github/scripts/build_package.sh $LIBRARY $PKG $PLATFORM