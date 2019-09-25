FROM debian:9.5-slim

# Update
RUN apt-get update

# Install packages
RUN apt-get -yq install rsync openssh-client

# Label
LABEL "com.github.actions.name"="ssh deployments"
LABEL "com.github.actions.description"="For deploying code over ssh"
LABEL "com.github.actions.icon"="truck"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/easingthemes/ssh-deploy"
LABEL "homepage"="https://github.com/easingthemes/ssh-deploy"
LABEL "maintainer"="Dragan Filipovic <info@frontenddot.com>"

# Copy entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]