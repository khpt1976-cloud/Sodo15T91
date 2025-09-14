# Sodo15T91 - Hệ thống Quản lý Nhật ký Thi công Chuyên nghiệp

🎯 **Hệ thống quản lý dự án xây dựng toàn diện với giao diện chuyên nghiệp**

## ⚠️ QUAN TRỌNG - TRANG CHỦ ĐÚNG

**🏠 TRANG CHỦ CHÍNH THỨC:** `Sodo/sodochuan.html`

❌ **KHÔNG TRUY CẬP:** `Sodo/index.html` (chỉ là trang đăng nhập)
✅ **TRUY CẬP:** `Sodo/sodochuan.html` (trang chủ đầy đủ tính năng)

## 📋 Tổng quan

Hệ thống quản lý nhật ký thi công chuyên nghiệp với giao diện đẹp, tích hợp video giới thiệu, menu navigation đầy đủ và các tính năng quản lý dự án xây dựng theo chuẩn Việt Nam.

## ✨ Tính năng

- 🏠 **Trang chủ chuyên nghiệp** - Giao diện đẹp với gradient background
- 📹 **Video giới thiệu** - Hướng dẫn sử dụng hệ thống
- 📊 **Quản lý Dự án** - Tạo và quản lý nhiều dự án xây dựng
- 📝 **Nhật ký Thi công** - Theo chuẩn Việt Nam với thông tin đầy đủ
- 👥 **Quản lý Nhóm** - Phân quyền theo vai trò Admin, Manager, User
- 🏗️ **Sơ đồ kiến trúc microservice** - Hiển thị tất cả thành phần hệ thống
- 🔍 **Zoom và Pan tương tác** - Phóng to/thu nhỏ và di chuyển sơ đồ
- 🔐 **Hệ thống đăng nhập** - Bảo mật truy cập
- 🧭 **Navigation menu đầy đủ** - Trang chủ, Sơ đồ, API, Liên hệ
- 📱 **Responsive design** - Hoạt động tốt trên mọi thiết bị

## 🚀 Cách sử dụng

### ⚠️ QUAN TRỌNG - Truy cập đúng trang chủ:
1. **TRANG CHỦ ĐÚNG:** Mở `Sodo/sodochuan.html` trong trình duyệt
2. **KHÔNG PHẢI:** `Sodo/index.html` (chỉ là trang đăng nhập)

### Thông tin đăng nhập (nếu cần):
- **Username:** `Hpt`
- **Password:** `Hpt@768696`

### Chạy server local:
```bash
# Chạy HTTP server đơn giản
python3 -m http.server 8000

# Hoặc sử dụng Node.js
npx http-server

# Truy cập TRANG CHỦ: http://localhost:8000/Sodo/sodochuan.html
```

## 🏗️ Cấu trúc dự án

```
Sodo15T91/
├── Sodo/
│   ├── index.html              # Trang đăng nhập
│   ├── sodochuan.html          # Ứng dụng chính (đã tối ưu)
│   └── sodochuan_backup.html   # Backup phiên bản gốc
├── backup_20250913_230105/     # Backup files
├── README.md                   # Hướng dẫn sử dụng
└── DEPLOYMENT_GUIDE.md         # Hướng dẫn triển khai
```

## 🔧 Các thay đổi đã thực hiện

### ✅ Đã loại bỏ:
- Phần "Tài liệu" trong navigation menu
- Toàn bộ `docContainer` HTML (1000+ dòng)
- Tất cả JavaScript functions liên quan đến documentation
- Tất cả CSS styles cho documentation
- Navigation functions cho documentation

### ✅ Đã giữ lại:
- Toàn bộ chức năng sơ đồ microservice
- Hệ thống zoom/pan tương tác
- Hệ thống đăng nhập
- Responsive design
- Tất cả animations và transitions

## 🎨 Navigation Menu

Menu đã được tối ưu hóa chỉ còn:
- **Trang chủ** - Về trang chính
- **Sơ đồ** - Hiển thị sơ đồ microservice
- **API** - Thông tin API
- **Liên hệ** - Thông tin liên hệ

## 🔍 Chức năng Zoom/Pan

- **🔍+ Phóng to** - Tăng kích thước sơ đồ
- **🔍- Thu nhỏ** - Giảm kích thước sơ đồ  
- **🏠 Đặt lại** - Về kích thước mặc định
- **📐 Fit màn hình** - Tự động điều chỉnh vừa màn hình
- **Kéo thả** - Di chuyển sơ đồ bằng chuột

## 🛡️ Bảo mật

- Hệ thống đăng nhập đơn giản nhưng hiệu quả
- Credentials được mã hóa trong JavaScript
- Session management cơ bản

## 📱 Tương thích

- ✅ Chrome/Chromium
- ✅ Firefox
- ✅ Safari
- ✅ Edge
- ✅ Mobile browsers

## 🚀 Triển khai

### GitHub Pages:
1. Push code lên GitHub repository
2. Vào Settings > Pages
3. Chọn source branch
4. Truy cập: `https://username.github.io/Sodo15T91/Sodo/index.html`

### Netlify:
1. Kết nối repository với Netlify
2. Build command: (để trống)
3. Publish directory: `/`
4. Truy cập domain được cung cấp

## 📝 Changelog

### Version 1.0 (2025-09-14)
- ✅ Loại bỏ hoàn toàn phần documentation
- ✅ Tối ưu hóa navigation menu
- ✅ Giữ nguyên tất cả chức năng sơ đồ
- ✅ Tạo backup file an toàn
- ✅ Cải thiện performance

## 🤝 Đóng góp

Mọi đóng góp đều được chào đón! Hãy tạo issue hoặc pull request.

## 📄 License

MIT License - Xem file LICENSE để biết thêm chi tiết.

## 📞 Liên hệ

- **Project:** Sodo15T91 Microservice Architecture
- **Version:** 1.0 (Documentation Removed)
- **Last Updated:** 2025-09-14

---

**🎯 Tập trung vào sơ đồ, loại bỏ phức tạp!**