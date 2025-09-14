# 📋 HƯỚNG DẪN CÀI ĐẶT VÀ CHẠY DỰ ÁN SODO15T9

## 🎯 Tổng quan
**Sodo15T9** là hệ thống tài liệu kiến trúc microservice được bảo vệ bằng form đăng nhập. Dự án hiển thị sơ đồ tương tác với 56 thành phần được tổ chức thành 13 ứng dụng độc lập.

## ⚠️ **QUAN TRỌNG - ĐỌC KỸ TRƯỚC KHI CÀI ĐẶT**

### 🔐 **Lưu ý về Trang Đăng nhập**
- **PHẢI TRUY CẬP ĐÚNG URL** để thấy form đăng nhập
- **KHÔNG** truy cập trực tiếp vào file `sodochuan.html`
- Hệ thống có **BẢO MẬT** - phải đăng nhập mới xem được tài liệu

---

## 🚀 HƯỚNG DẪN CÀI ĐẶT

### **Bước 1: Tải dự án từ GitHub**

```bash
# Clone repository
git clone https://github.com/khpt1976-cloud/Sodo15T9.git

# Di chuyển vào thư mục dự án
cd Sodo15T9
```

### **Bước 2: Chạy Local Server**

#### **Phương pháp 1: Sử dụng Python (Khuyến nghị)**
```bash
# Python 3.x
python -m http.server 8000

# Hoặc Python 2.x
python -m SimpleHTTPServer 8000
```

#### **Phương pháp 2: Sử dụng Node.js**
```bash
# Cài đặt http-server (nếu chưa có)
npm install -g http-server

# Chạy server
http-server -p 8000
```

#### **Phương pháp 3: Sử dụng PHP**
```bash
php -S localhost:8000
```

---

## 🔑 **CÁCH TRUY CẬP ĐÚNG - QUAN TRỌNG!**

### ✅ **ĐÚNG - Truy cập Form Đăng nhập:**
```
http://localhost:8000/Sodo/index.html
```

### ❌ **SAI - Không truy cập trực tiếp:**
```
http://localhost:8000/Sodo/sodochuan.html  ❌ (Bỏ qua bảo mật)
http://localhost:8000/index.html           ❌ (Chỉ redirect)
```

---

## 🔐 **THÔNG TIN ĐĂNG NHẬP**

### **Tài khoản mặc định:**
- **Tên đăng nhập:** `Hpt`
- **Mật khẩu:** `Hpt@768696`

### **Quy trình đăng nhập:**
1. Truy cập: `http://localhost:8000/Sodo/index.html`
2. Nhập thông tin đăng nhập
3. Nhấn "Đăng nhập"
4. Hệ thống tự động chuyển hướng đến trang tài liệu

---

## 📁 **CẤU TRÚC DỰ ÁN**

```
Sodo15T9/
├── README.md                    # Tài liệu tổng quan
├── HUONG_DAN_CAI_DAT.md        # Tài liệu này
├── index.html                   # File redirect (không dùng trực tiếp)
└── Sodo/
    ├── index.html              # 🔑 TRANG ĐĂNG NHẬP (QUAN TRỌNG)
    └── sodochuan.html          # 📊 Trang tài liệu được bảo vệ
```

---

## ⚠️ **CÁC LỖI THƯỜNG GẶP VÀ CÁCH KHẮC PHỤC**

### **1. Không thấy form đăng nhập**
**Nguyên nhân:** Truy cập sai URL
**Giải pháp:** 
```bash
✅ Đúng: http://localhost:8000/Sodo/index.html
❌ Sai:  http://localhost:8000/index.html
```

### **2. Đăng nhập không thành công**
**Nguyên nhân:** Nhập sai thông tin
**Giải pháp:** 
- Username: `Hpt` (chính xác, có chữ H viết hoa)
- Password: `Hpt@768696` (chính xác, có ký tự đặc biệt)

### **3. Trang không load được**
**Nguyên nhân:** Server chưa chạy hoặc port bị chiếm
**Giải pháp:**
```bash
# Kiểm tra port khác
python -m http.server 3000
python -m http.server 5000
```

### **4. File không tìm thấy (404 Error)**
**Nguyên nhân:** Chạy server không đúng thư mục
**Giải pháp:**
```bash
# Đảm bảo đang ở thư mục gốc Sodo15T9
pwd  # Kiểm tra thư mục hiện tại
ls   # Phải thấy thư mục Sodo/
```

---

## 🌐 **TRIỂN KHAI PRODUCTION**

### **Cấu hình Web Server (Apache/Nginx)**

#### **Apache (.htaccess):**
```apache
# Redirect root to login page
DirectoryIndex Sodo/index.html

# Security headers
Header always set X-Frame-Options DENY
Header always set X-Content-Type-Options nosniff
```

#### **Nginx:**
```nginx
server {
    listen 80;
    server_name your-domain.com;
    root /path/to/Sodo15T9;
    
    # Redirect root to login
    location = / {
        return 301 /Sodo/index.html;
    }
    
    # Security headers
    add_header X-Frame-Options DENY;
    add_header X-Content-Type-Options nosniff;
}
```

---

## 🔧 **TÙY CHỈNH THÔNG TIN ĐĂNG NHẬP**

### **Thay đổi username/password:**
Chỉnh sửa file `Sodo/index.html` tại dòng 313:

```javascript
// Tìm dòng này:
if (username === 'Hpt' && password === 'Hpt@768696') {

// Thay đổi thành:
if (username === 'TenMoi' && password === 'MatKhauMoi') {
```

---

## 📱 **TƯƠNG THÍCH THIẾT BỊ**

### **Desktop:**
- ✅ Chrome, Firefox, Safari, Edge
- ✅ Độ phân giải: 1024x768 trở lên

### **Mobile:**
- ✅ iOS Safari, Android Chrome
- ✅ Touch gestures cho zoom/pan
- ✅ Responsive design

### **Tablet:**
- ✅ iPad, Android tablets
- ✅ Landscape/Portrait modes

---

## 🎮 **HƯỚNG DẪN SỬ DỤNG SAU KHI ĐĂNG NHẬP**

### **Điều khiển Sơ đồ:**
- **🖱️ Mouse Wheel:** Zoom in/out
- **🖱️ Click & Drag:** Pan (di chuyển)
- **⌨️ Keyboard:** `+/-` (zoom), `0` (reset), `F` (fit screen)

### **Buttons điều khiển:**
- **🔍+** Phóng to
- **🔍-** Thu nhỏ  
- **🏠** Đặt lại view
- **📐** Fit màn hình

### **Menu Navigation:**
- **Trang chủ:** Quay về trang chính
- **Sơ đồ:** Xem sơ đồ kiến trúc
- **Tài liệu:** Xem tài liệu chi tiết
- **API:** Thông tin API
- **Liên hệ:** Thông tin liên hệ

---

## 🛡️ **BẢO MẬT VÀ QUYỀN RIÊNG TƯ**

### **Tính năng bảo mật:**
- ✅ Form đăng nhập bắt buộc
- ✅ Session validation
- ✅ Auto-redirect sau đăng nhập
- ✅ Error handling cho login sai

### **Lưu ý bảo mật:**
- 🔒 Không chia sẻ thông tin đăng nhập
- 🔒 Thay đổi password mặc định khi deploy
- 🔒 Sử dụng HTTPS trong production
- 🔒 Cấu hình firewall cho server

---

## 📞 **HỖ TRỢ VÀ LIÊN HỆ**

### **Khi gặp vấn đề:**
1. **Kiểm tra lại URL:** Đảm bảo truy cập `/Sodo/index.html`
2. **Kiểm tra thông tin đăng nhập:** Username/Password chính xác
3. **Kiểm tra server:** Đảm bảo server đang chạy
4. **Kiểm tra browser:** Thử browser khác hoặc clear cache

### **Thông tin liên hệ:**
- **GitHub:** [khpt1976-cloud](https://github.com/khpt1976-cloud)
- **Repository:** [Sodo15T9](https://github.com/khpt1976-cloud/Sodo15T9)

---

## ✅ **CHECKLIST CÀI ĐẶT THÀNH CÔNG**

- [ ] Clone repository thành công
- [ ] Server chạy không lỗi
- [ ] Truy cập được `http://localhost:8000/Sodo/index.html`
- [ ] Thấy form đăng nhập với giao diện đẹp
- [ ] Đăng nhập thành công với `Hpt` / `Hpt@768696`
- [ ] Tự động chuyển hướng đến trang sơ đồ
- [ ] Sơ đồ hiển thị đầy đủ với các controls
- [ ] Zoom/Pan hoạt động bình thường

---

## 🎉 **HOÀN THÀNH!**

Nếu tất cả các bước trên đều thành công, bạn đã cài đặt và chạy thành công dự án **Sodo15T9** với hệ thống bảo mật đăng nhập!

**🔥 Lưu ý cuối cùng:** Luôn nhớ truy cập `/Sodo/index.html` để thấy form đăng nhập, không truy cập trực tiếp vào `sodochuan.html`!

---

*© 2025 Sơ đồ dự án Hpt • Powered by Advanced Technology*