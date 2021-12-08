FROM node:lts-alpine
ARG user=jenkins

# As root
USER root
# Create yarn cache directory
RUN mkdir /.yarn
RUN chmod 777 /.yarn
# Get timezone data timezone
RUN apk add --update --no-cache tzdata
ENV TZ=Europe/London
# Install GIT
RUN apk add --no-cache git
# Update and upgrade
RUN apk update
RUN apk upgrade
# change user as jenkins user
USER ${user}
