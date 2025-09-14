# 🚀 Hướng dẫn Triển khai Sodo15T9

## 📋 Cấu trúc Dự án

```
Sodo15T9/
├── index.html              # File redirect chính (QUAN TRỌNG: phải redirect đến /Sodo/index.html)
├── Sodo/
│   ├── index.html          # 🔐 TRANG ĐĂNG NHẬP - KHÔNG ĐƯỢC XÓA/SỬA
│   └── sodochuan.html      # Trang sơ đồ chính (sau khi đăng nhập)
├── README.md               # Tài liệu dự án
└── DEPLOYMENT_GUIDE.md     # File này

```

## 🔐 **QUAN TRỌNG: Luồng Đăng nhập**

### Bước 1: Truy cập trang chủ
- URL: `http://localhost:8000/` hoặc `http://localhost:8000/index.html`
- File `index.html` (root) PHẢI redirect đến `/Sodo/index.html`

### Bước 2: Trang đăng nhập
- URL: `http://localhost:8000/Sodo/index.html`
- **Thông tin đăng nhập:**
  - Username: `Hpt`
  - Password: `Hpt@768696`

### Bước 3: Sau khi đăng nhập thành công
- Tự động chuyển đến: `http://localhost:8000/Sodo/sodochuan.html`
- Hiển thị sơ đồ microservice đầy đủ

## ⚠️ **LỖI THƯỜNG GẶP VÀ CÁCH KHẮC PHỤC**

### Lỗi 1: Bỏ qua trang đăng nhập
**Nguyên nhân:** File `index.html` (root) redirect trực tiếp đến `sodochuan.html`

**Khắc phục:**
```html
<!-- File: /index.html -->
<script>
    // ĐÚNG: Redirect đến trang đăng nhập
    window.location.href = '/Sodo/index.html';
    
    // SAI: Redirect trực tiếp đến sơ đồ
    // window.location.href = '/Sodo/sodochuan.html';
</script>
```

### Lỗi 2: Không tìm thấy trang đăng nhập
**Nguyên nhân:** File `/Sodo/index.html` bị xóa hoặc đổi tên

**Khắc phục:** Đảm bảo file `/Sodo/index.html` tồn tại và chứa form đăng nhập

## 🛠️ **Các bước Triển khai An toàn**

### 1. Kiểm tra cấu trúc file
```bash
# Kiểm tra các file quan trọng tồn tại
ls -la index.html
ls -la Sodo/index.html
ls -la Sodo/sodochuan.html
```

### 2. Kiểm tra nội dung redirect
```bash
# Kiểm tra file index.html root có redirect đúng không
grep -n "Sodo/index.html" index.html
```

### 3. Test luồng đăng nhập
1. Truy cập: `http://localhost:8000/`
2. Kiểm tra có redirect đến trang đăng nhập không
3. Nhập thông tin đăng nhập: `Hpt` / `Hpt@768696`
4. Kiểm tra có chuyển đến sơ đồ không

### 4. Backup quan trọng
```bash
# Backup file đăng nhập trước khi deploy
cp Sodo/index.html Sodo/index.html.backup
```

## 🔧 **Lệnh Khởi chạy**

```bash
# Chạy server
cd Sodo15T9
python -m http.server 8000 --bind 0.0.0.0

# Truy cập
# http://localhost:8000/
```

## 📝 **Checklist Trước khi Deploy**

- [ ] File `index.html` (root) redirect đến `/Sodo/index.html`
- [ ] File `/Sodo/index.html` chứa form đăng nhập
- [ ] File `/Sodo/sodochuan.html` chứa sơ đồ
- [ ] Test luồng đăng nhập hoàn chỉnh
- [ ] Backup các file quan trọng

## 🆘 **Khôi phục nhanh nếu bị lỗi**

Nếu trang đăng nhập bị mất, chạy lệnh sau:

```bash
# Khôi phục từ backup
cp Sodo/index.html.backup Sodo/index.html

# Hoặc sửa file index.html root
sed -i 's|/Sodo/sodochuan.html|/Sodo/index.html|g' index.html
```

---

**⚠️ LƯU Ý:** Không bao giờ xóa hoặc sửa file `/Sodo/index.html` mà không backup trước!