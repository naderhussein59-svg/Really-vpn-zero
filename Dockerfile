FROM ubuntu:20.04

RUN apt update && apt install -y curl gnupg
RUN curl -s https://install.zerotier.com | bash

CMD zerotier-cli join <Network-ID> && tail -f /dev/null
