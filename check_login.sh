#!/bin/bash

# 🔍 Script kiểm tra tính năng đăng nhập
# Chạy script này trước khi deploy để đảm bảo mọi thứ hoạt động

echo "🔍 Kiểm tra cấu trúc dự án Sodo15T9..."

# Màu sắc cho output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Biến đếm lỗi
ERRORS=0

echo "=================================="
echo "📁 KIỂM TRA CẤU TRÚC FILE"
echo "=================================="

# Kiểm tra file index.html root
if [ -f "index.html" ]; then
    echo -e "${GREEN}✅ File index.html (root) tồn tại${NC}"
else
    echo -e "${RED}❌ File index.html (root) KHÔNG tồn tại${NC}"
    ERRORS=$((ERRORS + 1))
fi

# Kiểm tra file đăng nhập
if [ -f "Sodo/index.html" ]; then
    echo -e "${GREEN}✅ File Sodo/index.html (đăng nhập) tồn tại${NC}"
else
    echo -e "${RED}❌ File Sodo/index.html (đăng nhập) KHÔNG tồn tại${NC}"
    ERRORS=$((ERRORS + 1))
fi

# Kiểm tra file sơ đồ
if [ -f "Sodo/sodochuan.html" ]; then
    echo -e "${GREEN}✅ File Sodo/sodochuan.html (sơ đồ) tồn tại${NC}"
else
    echo -e "${RED}❌ File Sodo/sodochuan.html (sơ đồ) KHÔNG tồn tại${NC}"
    ERRORS=$((ERRORS + 1))
fi

echo ""
echo "=================================="
echo "🔗 KIỂM TRA REDIRECT"
echo "=================================="

# Kiểm tra redirect trong file index.html root
if [ -f "index.html" ]; then
    if grep -q "/Sodo/index.html" index.html; then
        echo -e "${GREEN}✅ File index.html redirect ĐÚNG đến trang đăng nhập${NC}"
    elif grep -q "/Sodo/sodochuan.html" index.html; then
        echo -e "${RED}❌ File index.html redirect SAI - bỏ qua trang đăng nhập${NC}"
        echo -e "${YELLOW}🔧 Cần sửa: window.location.href = '/Sodo/index.html';${NC}"
        ERRORS=$((ERRORS + 1))
    else
        echo -e "${YELLOW}⚠️  Không tìm thấy redirect trong file index.html${NC}"
        ERRORS=$((ERRORS + 1))
    fi
fi

echo ""
echo "=================================="
echo "🔐 KIỂM TRA THÔNG TIN ĐĂNG NHẬP"
echo "=================================="

# Kiểm tra thông tin đăng nhập trong file Sodo/index.html
if [ -f "Sodo/index.html" ]; then
    if grep -q "username === 'Hpt'" Sodo/index.html && grep -q "password === 'Hpt@768696'" Sodo/index.html; then
        echo -e "${GREEN}✅ Thông tin đăng nhập: Username: Hpt, Password: Hpt@768696${NC}"
    else
        echo -e "${YELLOW}⚠️  Không tìm thấy thông tin đăng nhập hoặc đã thay đổi${NC}"
    fi
    
    if grep -q "sodochuan.html" Sodo/index.html; then
        echo -e "${GREEN}✅ Redirect sau đăng nhập đến sodochuan.html${NC}"
    else
        echo -e "${RED}❌ Không tìm thấy redirect sau đăng nhập${NC}"
        ERRORS=$((ERRORS + 1))
    fi
fi

echo ""
echo "=================================="
echo "📊 KẾT QUẢ KIỂM TRA"
echo "=================================="

if [ $ERRORS -eq 0 ]; then
    echo -e "${GREEN}🎉 TẤT CẢ KIỂM TRA THÀNH CÔNG!${NC}"
    echo -e "${GREEN}✅ Dự án sẵn sàng để deploy${NC}"
    echo ""
    echo "🚀 Để chạy server:"
    echo "   python -m http.server 8000 --bind 0.0.0.0"
    echo ""
    echo "🌐 Truy cập:"
    echo "   http://localhost:8000/"
    echo ""
    echo "🔐 Thông tin đăng nhập:"
    echo "   Username: Hpt"
    echo "   Password: Hpt@768696"
else
    echo -e "${RED}❌ Tìm thấy $ERRORS lỗi!${NC}"
    echo -e "${YELLOW}🔧 Vui lòng sửa các lỗi trên trước khi deploy${NC}"
    exit 1
fi

echo "=================================="