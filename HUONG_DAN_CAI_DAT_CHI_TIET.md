# 🚀 HƯỚNG DẪN CÀI ĐẶT VÀ CHẠY WEBSITE CHI TIẾT

## ⚠️ QUAN TRỌNG - TRANG CHỦ ĐÚNG

**TRANG CHỦ CHÍNH THỨC:** `Sodo/sodochuan.html`

❌ **KHÔNG PHẢI:** `Sodo/index.html` (đây chỉ là trang đăng nhập)
❌ **KHÔNG PHẢI:** `index.html` (đây chỉ là trang redirect)

✅ **ĐÚNG:** `Sodo/sodochuan.html` - Đây là trang chủ thực sự với giao diện đẹp, video, liên hệ

---

## 📋 YÊU CẦU HỆ THỐNG

- **Python 3.x** (đã cài sẵn trên hầu hết hệ thống)
- **Git** (để clone repository)
- **Trình duyệt web** (Chrome, Firefox, Safari, Edge)
- **Kết nối Internet** (để tải thư viện React, Babel)

---

## 🔧 CÁCH CÀI ĐẶT

### Bước 1: Clone Repository
```bash
git clone https://github.com/khpt1976-cloud/Sodo15T91.git
cd Sodo15T91
```

### Bước 2: Khởi động Web Server
```bash
# Sử dụng Python (khuyến nghị)
python3 -m http.server 8000

# Hoặc sử dụng Python 2
python -m SimpleHTTPServer 8000

# Hoặc sử dụng Node.js
npx http-server -p 8000

# Hoặc sử dụng PHP
php -S localhost:8000
```

### Bước 3: Truy cập Website
Mở trình duyệt và truy cập:
```
http://localhost:8000/Sodo/sodochuan.html
```

---

## 🌐 CÁC URL QUAN TRỌNG

### 🏠 Trang chủ chính (ĐÚNG):
```
http://localhost:8000/Sodo/sodochuan.html
```

### 🔐 Trang đăng nhập:
```
http://localhost:8000/Sodo/index.html
```
**Thông tin đăng nhập:**
- Username: `Hpt`
- Password: `Hpt@768696`

### 📊 Trang sơ đồ microservice:
```
http://localhost:8000/Sodo/diagram.html
```

---

## 🎯 TÍNH NĂNG WEBSITE

### 🏠 Trang chủ (sodochuan.html)
- ✅ Giao diện chuyên nghiệp với gradient background
- ✅ Video giới thiệu hệ thống
- ✅ Menu navigation: Trang chủ, Sơ đồ, API, Liên hệ
- ✅ 3 tính năng chính:
  - 📊 Quản lý Dự án
  - 📝 Nhật ký Thi công
  - 👥 Quản lý Nhóm
- ✅ Responsive design (tương thích mobile)

### 🔐 Hệ thống đăng nhập
- Bảo mật truy cập
- Session management
- Redirect tự động

### 📊 Sơ đồ Microservice
- Zoom/Pan tương tác
- Hiển thị kiến trúc hệ thống
- Navigation controls

---

## 🗂️ CẤU TRÚC DỰ ÁN

```
Sodo15T91/
├── 📁 Sodo/                          # Thư mục chính chứa ứng dụng
│   ├── 🏠 sodochuan.html            # ⭐ TRANG CHỦ CHÍNH (QUAN TRỌNG)
│   ├── 🔐 index.html                # Trang đăng nhập
│   ├── 🔐 login.html                # Trang đăng nhập backup
│   ├── 📊 diagram.html              # Trang sơ đồ microservice
│   ├── 📄 sodochuan_backup.html     # Backup trang chủ
│   └── 📄 sodochuan_old.html        # Phiên bản cũ
├── 📁 backup_20250913_230105/       # Thư mục backup
├── 📄 index.html                    # File redirect chính
├── 📄 README.md                     # Hướng dẫn cơ bản
├── 📄 DEPLOYMENT_GUIDE.md           # Hướng dẫn triển khai
├── 📄 HUONG_DAN_CAI_DAT.md         # Hướng dẫn tiếng Việt
└── 📄 HUONG_DAN_CAI_DAT_CHI_TIET.md # File này (hướng dẫn chi tiết)
```

---

## 🚀 TRIỂN KHAI PRODUCTION

### 🌐 GitHub Pages
1. Push code lên GitHub repository
2. Vào **Settings** > **Pages**
3. Chọn source branch (thường là `main`)
4. Truy cập: `https://username.github.io/Sodo15T91/Sodo/sodochuan.html`

### ☁️ Netlify
1. Kết nối repository với Netlify
2. Build command: (để trống)
3. Publish directory: `/`
4. Truy cập domain được cung cấp + `/Sodo/sodochuan.html`

### 🔥 Firebase Hosting
```bash
npm install -g firebase-tools
firebase login
firebase init hosting
firebase deploy
```

### 🐳 Docker
```dockerfile
FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80
```

```bash
docker build -t sodo15t91 .
docker run -p 8080:80 sodo15t91
```

---

## 🔧 TROUBLESHOOTING

### ❌ Lỗi "Không tìm thấy trang"
**Nguyên nhân:** Truy cập sai URL
**Giải pháp:** Đảm bảo truy cập đúng `http://localhost:8000/Sodo/sodochuan.html`

### ❌ Lỗi "CORS Policy"
**Nguyên nhân:** Mở file HTML trực tiếp từ file system
**Giải pháp:** Phải chạy qua web server (python -m http.server)

### ❌ Lỗi "React is not defined"
**Nguyên nhân:** Không có kết nối Internet để tải React CDN
**Giải pháp:** Kiểm tra kết nối Internet

### ❌ Trang hiển thị không đúng
**Nguyên nhân:** Cache trình duyệt
**Giải pháp:** Nhấn Ctrl+F5 hoặc xóa cache

---

## 📱 TƯƠNG THÍCH

### ✅ Desktop Browsers
- Chrome/Chromium 80+
- Firefox 75+
- Safari 13+
- Edge 80+

### ✅ Mobile Browsers
- Chrome Mobile
- Safari Mobile
- Firefox Mobile
- Samsung Internet

### ✅ Operating Systems
- Windows 10/11
- macOS 10.15+
- Ubuntu 18.04+
- CentOS 7+

---

## 🔒 BẢO MẬT

### Thông tin đăng nhập mặc định:
- **Username:** `Hpt`
- **Password:** `Hpt@768696`

### Lưu ý bảo mật:
- Đổi mật khẩu trong production
- Sử dụng HTTPS cho production
- Cấu hình firewall phù hợp

---

## 📞 HỖ TRỢ

### 🐛 Báo lỗi:
- Tạo issue trên GitHub repository
- Mô tả chi tiết lỗi và môi trường

### 💡 Đóng góp:
- Fork repository
- Tạo feature branch
- Submit pull request

### 📧 Liên hệ:
- Project: Sodo15T91 - Hệ thống Quản lý Nhật ký Thi công
- Version: 1.0
- Last Updated: 2025-09-14

---

## 📝 CHANGELOG

### Version 1.0 (2025-09-14)
- ✅ Tạo hướng dẫn cài đặt chi tiết
- ✅ Làm rõ trang chủ chính thức là `sodochuan.html`
- ✅ Bổ sung troubleshooting guide
- ✅ Thêm hướng dẫn triển khai production

---

**🎯 LƯU Ý QUAN TRỌNG: Luôn truy cập `Sodo/sodochuan.html` để xem trang chủ đầy đủ tính năng!**