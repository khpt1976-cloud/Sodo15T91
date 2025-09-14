#!/bin/bash

# 💾 Script backup các file quan trọng cho tính năng đăng nhập
# Chạy script này trước khi thay đổi gì đó

echo "💾 Tạo backup các file quan trọng..."

# Tạo thư mục backup với timestamp
BACKUP_DIR="backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

# Backup file index.html root
if [ -f "index.html" ]; then
    cp "index.html" "$BACKUP_DIR/index.html"
    echo "✅ Backup index.html (root)"
fi

# Backup file đăng nhập
if [ -f "Sodo/index.html" ]; then
    cp "Sodo/index.html" "$BACKUP_DIR/login_index.html"
    echo "✅ Backup Sodo/index.html (đăng nhập)"
fi

# Backup file sơ đồ
if [ -f "Sodo/sodochuan.html" ]; then
    cp "Sodo/sodochuan.html" "$BACKUP_DIR/sodochuan.html"
    echo "✅ Backup Sodo/sodochuan.html (sơ đồ)"
fi

# Tạo file thông tin backup
cat > "$BACKUP_DIR/backup_info.txt" << EOF
🔐 BACKUP THÔNG TIN ĐĂNG NHẬP
============================
Ngày tạo: $(date)
Thư mục: $BACKUP_DIR

📁 Files được backup:
- index.html (root redirect)
- login_index.html (trang đăng nhập)
- sodochuan.html (trang sơ đồ)

🔐 Thông tin đăng nhập:
- Username: Hpt
- Password: Hpt@768696

🔄 Để khôi phục:
cp $BACKUP_DIR/index.html ./
cp $BACKUP_DIR/login_index.html Sodo/index.html
cp $BACKUP_DIR/sodochuan.html Sodo/
EOF

echo ""
echo "🎉 Backup hoàn thành!"
echo "📁 Thư mục backup: $BACKUP_DIR"
echo "📄 Xem thông tin: cat $BACKUP_DIR/backup_info.txt"
echo ""
echo "🔄 Để khôi phục nhanh:"
echo "   cp $BACKUP_DIR/index.html ./"
echo "   cp $BACKUP_DIR/login_index.html Sodo/index.html"