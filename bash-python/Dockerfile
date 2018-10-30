FROM python:3.7-alpine
LABEL maintainer "Terry Horner <terrhorn@teket.io>"

COPY . .

RUN apk add --no-cache bash
RUN pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash"]
