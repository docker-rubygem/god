FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.0

RUN gem install god --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["god"]
CMD ["--help"]
