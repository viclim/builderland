FROM alpine:3.16
WORKDIR /home/ruby
RUN apk add --no-cache bash gcc git make openssl
RUN git clone --depth 1 --branch v20220630 https://github.com/rbenv/ruby-build.git
RUN PREFIX=/usr/local ./ruby-build/install.sh
RUN ruby-build 2.7.6 ./2.7.6
RUN gem install bundler
