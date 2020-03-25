FROM codercom/code-server:latest

RUN sudo apt-get update && \
  sudo apt-get install -y \
  curl

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

RUN sudo apt-get update && \
  sudo apt-get install -y \
  git-core \
  nodejs \
  zsh \
  wget

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# start zsh
CMD [ "zsh" ]