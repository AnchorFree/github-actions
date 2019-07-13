FROM hashicorp/consul-template:0.20.0-alpine

LABEL "repository"="https://github.com/AnchorFree/github-actions"
LABEL "homepage"="https://github.com/AnchorFree/github-actions"
LABEL "maintainer"="devops@anchorfree.com"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
