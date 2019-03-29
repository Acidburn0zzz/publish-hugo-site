FROM debian:stable-slim

LABEL "maintainer"="tcitry <tcitry@gmail.com>"
LABEL "repository"="https://github.com/tcitry/publish-hugo-site"
LABEL "homepage"="https://github.com/marketplace/actions/publish-hugo-site"

LABEL "com.github.actions.name"="Publish Hugo Site"
LABEL "com.github.actions.description"="Publish your hugo to master or other gh-pages"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="purple"

COPY LICENSE README.md /

RUN apt-get -y update && \
    apt-get -y install git && \
    apt-get -y install hugo && \
    apt-get clean

COPY entrypoint.sh /usr/bin/action

ENTRYPOINT ["action"]