FROM ubuntu:latest

ARG USERNAME

RUN mkdir /home/$USERNAME \
  && touch /home/$USERNAME/.bashrc \
  && echo 'export PS1="\[\033[01;31m\]\u@\H\[\033[01;37m\]:\[\033[01;34m\]\W\[\033[00m\]\n\[\033[1;37m\]\$ "' >> /home/$USERNAME/.bashrc \
  && echo 'alias ll="ls -alF"' >> /home/$USERNAME/.bashrc
