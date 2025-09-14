# Sodo15T91 - Microservice Architecture Diagram

🎯 **Phiên bản tối ưu hóa chỉ hiển thị sơ đồ kiến trúc microservice**

## 📋 Tổng quan

Đây là phiên bản được tối ưu hóa của Sodo15T9, tập trung hoàn toàn vào việc hiển thị sơ đồ kiến trúc microservice. Phần documentation đã được loại bỏ hoàn toàn để tạo ra một ứng dụng gọn nhẹ và tập trung.

## ✨ Tính năng

- 🏗️ **Sơ đồ kiến trúc microservice đầy đủ** - Hiển thị tất cả các thành phần hệ thống
- 🔍 **Zoom và Pan tương tác** - Phóng to/thu nhỏ và di chuyển sơ đồ
- 🔐 **Hệ thống đăng nhập** - Bảo mật truy cập
- 🧭 **Navigation menu sạch sẽ** - Chỉ các mục cần thiết
- 📱 **Responsive design** - Hoạt động tốt trên mọi thiết bị

## 🚀 Cách sử dụng

### Truy cập ứng dụng:
1. Mở file `Sodo/index.html` trong trình duyệt
2. Đăng nhập với thông tin:
   - **Username:** `Hpt`
   - **Password:** `Hpt@768696`
3. Khám phá sơ đồ microservice với các chức năng zoom/pan

### Chạy server local:
```bash
# Chạy HTTP server đơn giản
python3 -m http.server 8000

# Hoặc sử dụng Node.js
npx http-server

# Truy cập: http://localhost:8000/Sodo/index.html
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