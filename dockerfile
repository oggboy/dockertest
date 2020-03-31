#
# This Dockerfile builds a recent curl with HTTP/2 client support, using
# a recent nghttp2 build.
#
# See the Makefile for how to tag it. If Docker and that image is found, the
# Go tests use this curl binary for integration tests.
#

FROM alpine:latest

RUN apk add --no-cache \
	ca-certificates \
	nghttp2 \
	openssl

ENV CURL_VERSION 7.67.0

ENTRYPOINT ["/usr/local/bin/curl"]
CMD ["-h"]
