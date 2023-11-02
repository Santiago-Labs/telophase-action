FROM golang:1.21
LABEL maintainer="Danny Schofield, danny@telophase.dev"

# copy from repo into container image:
COPY entrypoint.sh /entrypoint.sh
COPY telophasecli /telophase

# make default on start-up:
ENTRYPOINT ["/entrypoint.sh"]

