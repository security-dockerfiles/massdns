FROM alpine:edge
LABEL maintainer "Ilya Glotov <ilya@ilyaglotov.com"

RUN apk --update --no-cache add ldns \
  && apk --no-cache --virtual .deps add ldns-dev \
                                        git \
                                        build-base \
  && git clone --branch=master \
               --depth=1 \
               https://github.com/blechschmidt/massdns.git \
  && cd massdns \
  && make \
  && mv bin/massdns /bin/massdns \
  && rm -rf /massdns \
  && apk del .deps

COPY resolvers.txt /resolvers.txt

ENTRYPOINT ["/bin/massdns", "-r", "/resolvers.txt"]
