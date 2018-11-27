FROM ruby:2.5.3-alpine3.7
LABEL maintainer "Terry Horner <terrhorn@teket.io>"

COPY . .

RUN apk add --no-cache bash
RUN bundle install; exit 0

CMD ["/bin/bash"]
