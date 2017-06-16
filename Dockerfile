FROM debian:latest

RUN apt-get update
RUN apt-get install -y \
	jekyll \
	ruby-maruku
RUN mkdir -p /src
WORKDIR /src
