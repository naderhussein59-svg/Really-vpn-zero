FROM alpine:latest

RUN apk add --no-cache curl bash

WORKDIR /app

COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]
