FROM hashicorp/consul-template:alpine

LABEL "repository"="https://github.com/AnchorFree/github-actions"
LABEL "homepage"="https://github.com/AnchorFree/github-actions"
LABEL "maintainer"="devops@anchorfree.com"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
