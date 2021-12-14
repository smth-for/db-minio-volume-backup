FROM docker.io/tiredofit/alpine:3.14

RUN apk update && apk upgrade && apk add --no-cache mongodb-tools jq coreutils

COPY files/mc /usr/local/bin/mc
RUN chmod +x /usr/local/bin/mc
RUN mc --version   # Just to make sure its installed alright

# Should output aws-cli/1.18.69 etc.

# create data folder in which mount volumes
RUN mkdir /backupVolume

### S6 Setup
ADD install  /
