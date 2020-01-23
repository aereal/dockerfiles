FROM debian:bullseye

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends graphviz

ENTRYPOINT [ "/usr/bin/dot" ]
