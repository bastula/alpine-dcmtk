FROM alpine:latest
RUN apk update && apk upgrade && \
    apk add --no-cache git build-base
WORKDIR /usr/src
RUN git clone https://github.com/DCMTK/dcmtk.git && \
    cd dcmtk && \
    ./configure && \
    make all && \
    make install && \
    make distclean && \
    cd .. && \
    rm -r dcmtk && \
    apk del git build-base && \
    apk add libstdc++ && \
    rm /var/cache/apk/*