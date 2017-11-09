FROM ruby:2.4.2

RUN apt-get update
RUN gem install bundler

ENV HOME=/home/matrix
RUN mkdir -p $HOME
ADD . $HOME
WORKDIR $HOME

RUN bundle install

ARG SOUL=agent_smith
ENV USER ${SOUL}

RUN useradd -ms /bin/bash $USER

USER $USER
