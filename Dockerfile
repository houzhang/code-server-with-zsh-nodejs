FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y \
  curl

# install nodejs v10
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get update && \
  apt-get install -y \
  git-core \
  nodejs \
  zsh \
  wget \
  nginx

# install zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# start zsh
CMD [ "zsh" ]