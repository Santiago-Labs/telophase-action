FROM golang:1.21
LABEL maintainer="Danny Schofield, danny@telophase.dev"

# copy from repo into container image:
COPY entrypoint.sh /entrypoint.sh
RUN go install github.com/santiago-labs/telophasecli@latest
RUN apt-get update
# We need npm to install the CDK
RUN apt-get install -y npm 
RUN npm install -g aws-cdk
# COPY telophasecli /telophase

ENTRYPOINT ["/entrypoint.sh"]
