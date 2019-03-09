FROM alpine/git:latest

COPY runaction.sh /runaction.sh
RUN chmod +x /runaction.sh

ENTRYPOINT ["/runaction.sh"]

LABEL "name"="push"
LABEL "maintainer"="Ludeeus <ludeeus@gmail.com>"
LABEL "version"="0.0.1"
LABEL "com.github.actions.name"="push"
LABEL "com.github.actions.description"="Push the updated workspace back to the repository."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="black"
