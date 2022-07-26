FROM ubuntu:latest

RUN set -x && \
    apt update && \
    apt install -y git curl wget cmake ncurses-dev jq xz-utils && \
    cd root && \
    git clone https://github.com/vim/vim.git && \
    cd vim/src && \
    make && \
    make install
 
 COPY ./setup.sh /tmp/
 RUN bash /tmp/setup.sh