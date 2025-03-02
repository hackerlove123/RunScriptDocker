#!/bin/sh

# Yêu cầu nhập URL
if [ -z "$1" ]; then
  echo "❌ Lỗi: Bạn phải nhập URL!"
  echo "👉 Cách chạy: ./entrypoint.sh <URL>"
  exit 1
fi

TARGET_URL="$1"

echo "🔹 Đang chạy flood.js với URL: $TARGET_URL"
node /RunScriptDocker/flood.js "$TARGET_URL" 120 10 10 /RunScriptDocker/live.txt flood || echo "✅ Script đã hoàn thành!"
