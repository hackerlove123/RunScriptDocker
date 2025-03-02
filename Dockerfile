FROM node:alpine

# Cài đặt git
RUN apk add --no-cache git

# Clone repository
RUN git clone https://github.com/hackerlove123/RunScriptDocker/ /app

# Đặt thư mục làm thư mục làm việc
WORKDIR /app

# Cài đặt các gói npm trực tiếp
RUN npm install hpack https commander colors socks set-cookie-parser --prefix /app

# Kiểm tra phiên bản node và npm
RUN node -v && npm -v

# Giữ cho container luôn chạy
RUN tail -f /dev/null
