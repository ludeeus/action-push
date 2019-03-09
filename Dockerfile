FROM alpine/git:latest

COPY runaction.sh /runaction.sh
RUN chmod +x /runaction.sh

ENTRYPOINT ["/runaction.sh"]

LABEL "name"="action-push"
LABEL "maintainer"="Ludeeus <ludeeus@gmail.com>"
LABEL "version"="0.0.1"
LABEL "com.github.actions.name"="action-push"
LABEL "com.github.actions.description"="Push the updated workspace back to the repository."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="black"
