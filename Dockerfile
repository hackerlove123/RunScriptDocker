FROM node:alpine

# Cài đặt git và curl
RUN apk add --no-cache git curl

# Tạo thư mục làm việc
WORKDIR /RunScriptDocker

# Tải xuống các file cần thiết từ GitHub
RUN curl -L -o flood.js https://raw.githubusercontent.com/hackerlove123/RunScriptDocker/main/flood.js && \
    curl -L -o live.txt https://raw.githubusercontent.com/hackerlove123/RunScriptDocker/main/live.txt

# Kiểm tra danh sách file trong thư mục
RUN ls -la

# Cài đặt các gói npm trực tiếp trong thư mục làm việc
RUN npm install hpack https commander colors socks set-cookie-parser

# Kiểm tra phiên bản node và npm
RUN node -v && npm -v

# Sao chép entrypoint script vào container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Định nghĩa startup script
RUN ["/entrypoint.sh"]
