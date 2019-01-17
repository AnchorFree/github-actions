FROM hashicorp/terraform:0.11.10

LABEL "com.github.actions.name"="terraform apply"
LABEL "com.github.actions.description"="Run terraform apply"
LABEL "com.github.actions.icon"="book-open"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/AnchorFree/github-actions"
LABEL "homepage"="https://github.com/AnchorFree/github-actions"
LABEL "maintainer"="devops@anchorfree.com"

RUN apk --no-cache add jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
