FROM node:alpine

# Cài đặt git và các công cụ cần thiết
RUN apk add --no-cache git

# Clone repository
RUN git clone https://github.com/hackerlove123/RunScriptDocker/ && \
    cd RunScriptDocker && \
    npm install && \
    npm install hpack https commander colors socks set-cookie-parser

# Kiểm tra phiên bản node và npm
RUN node -v && npm -v

# Giữ cho container luôn chạy
RUN tail -f /dev/null
