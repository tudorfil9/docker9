# base stage  for multistage
FROM alpine:latest as base

# install base packages
RUN apk add --no-cache git
RUN apk --update add openjdk7-jre
RUN apk --update add junit
RUN apk --update add maven

## Status report
RUN /usr/bin/java -version
RUN /usr/bin/git --version
#RUN /usr/bin/junit -version

## Begin work
WORKDIR /project
RUN git clone https://bitbucket.org/tudorfil8/docker/src/production/
WORKDIR production/App/
