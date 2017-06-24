FROM debian:latest

RUN apt-get update
RUN apt-get install -y \
	jekyll \
	ruby-jekyll-gist \
	ruby-maruku
RUN mkdir -p /src
WORKDIR /src
