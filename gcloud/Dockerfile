FROM google/cloud-sdk:alpine
LABEL maintainer "Terry Horner <terrhorn@teket.io>"

RUN apk add --no-cache bash

RUN gcloud components update \
	    && gcloud version
