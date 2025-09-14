# 🏗️ Sodo15T9 - Microservice Architecture Documentation

## 🔐 **QUAN TRỌNG: Tính năng Đăng nhập**

### 🚨 LƯU Ý Bảo mật
Dự án này có tính năng đăng nhập để bảo vệ tài liệu. **KHÔNG ĐƯỢC** bỏ qua hoặc xóa trang đăng nhập!

### 🔑 Thông tin Đăng nhập
- **Username:** `Hpt`
- **Password:** `Hpt@768696`

## 🏗️ Tổng quan

Dự án **Sodo15T9** là một tài liệu kiến trúc microservice tương tác với sơ đồ chi tiết, hướng dẫn triển khai đầy đủ và **tính năng bảo mật đăng nhập**.

## 🎯 Tính năng chính

### 📊 Sơ đồ Tương tác
- **56 thành phần** được tổ chức thành 13 ứng dụng độc lập
- **Zoom & Pan** - Phóng to/thu nhỏ và di chuyển sơ đồ
- **4 màu phân loại** cho các nhóm chức năng khác nhau
- **Responsive design** - Tương thích mọi thiết bị

### 📚 Tài liệu Chi tiết
- **Implementation Roadmap** - Lộ trình triển khai 7 phases
- **Independent Applications** - 12 ứng dụng nghiệp vụ độc lập
- **Dependencies Map** - Sơ đồ phụ thuộc giữa các services
- **Zoom & Pan Documentation** - Đọc tài liệu dễ dàng với zoom/pan

### 🎨 Giao diện
- **Dark Navy Theme** - Thiết kế chuyên nghiệp
- **Navigation Bar** - Menu điều hướng trực quan
- **Fixed Controls** - Buttons cố định tiện lợi
- **Mobile Support** - Hỗ trợ touch gestures

## 🚀 Cách sử dụng

### ⚠️ QUAN TRỌNG: Luồng Đăng nhập
1. **Kiểm tra trước khi chạy:**
   ```bash
   ./check_login.sh
   ```

2. **Chạy server:**
   ```bash
   python -m http.server 8000 --bind 0.0.0.0
   ```

3. **Truy cập ứng dụng:**
   - Mở: `http://localhost:8000/`
   - Sẽ tự động chuyển đến trang đăng nhập
   - Nhập: Username `Hpt`, Password `Hpt@768696`
   - Sau đăng nhập → Xem sơ đồ microservice

### ❌ KHÔNG làm như này:
```bash
# SAI - Bỏ qua đăng nhập
http://localhost:8000/Sodo/sodochuan.html
```

### Điều khiển Sơ đồ
- **Mouse Wheel**: Zoom in/out
- **Click & Drag**: Pan (di chuyển)
- **Buttons**: 🔍+ (zoom in), 🔍- (zoom out), ⚡ (reset)
- **Keyboard**: `+/-` (zoom), `0` (reset), `F` (fit screen)

### Điều khiển Tài liệu
- **Mouse Wheel**: Zoom in/out tài liệu
- **Click & Drag**: Pan tài liệu
- **Buttons**: 🔍+ (zoom in), 🔍- (zoom out), ⚡ (reset)
- **Navigation**: Click "Tài liệu" để xem hướng dẫn chi tiết

## 📁 Cấu trúc dự án

```
Sodo15T9/
├── Sodo/
│   ├── sodochuan.html      # File chính - Sơ đồ + Tài liệu
│   └── index.html          # File HTML gốc
├── README.md               # Tài liệu này
└── .gitignore             # Git ignore file
```

## 🏢 Kiến trúc Hệ thống

### 13 Ứng dụng Độc lập:
1. **Cart Application** - Ứng dụng Giỏ hàng
2. **Product Application** - Ứng dụng Sản phẩm  
3. **News Application** - Ứng dụng Tin tức
4. **Design Calculation Application** - Ứng dụng Tính toán Thiết kế
5. **Football Application** - Ứng dụng Bóng đá
6. **Communication Log Application** - Ứng dụng Nhật ký thi công
7. **Chatbot Application** - Ứng dụng Chatbot
8. **Payment Application** - Ứng dụng Thanh toán
9. **User Application** - Ứng dụng Người dùng
10. **Admin Application** - Ứng dụng Quản trị
11. **Agent Management Application** - Ứng dụng Quản lý Đại lý
12. **Agent Policy Application** - Ứng dụng Chính sách Đại lý
13. **Shell Configuration Application** - Ứng dụng Cấu hình Shell

### Shared Infrastructure:
- **API Gateway** (User/Admin)
- **Message Broker** (RabbitMQ/Kafka)
- **Cache** (Redis)
- **Shell Apps** (User/Admin)

## 🛠️ Công nghệ sử dụng

- **HTML5** - Cấu trúc trang
- **CSS3** - Styling và animations
- **JavaScript** - Tương tác và controls
- **Mermaid.js** - Vẽ sơ đồ
- **Responsive Design** - Tương thích mobile

## 📋 Lộ trình Triển khai

### Phase 1: Foundation (Tuần 1-2)
- Message Broker, Cache, User DB, User Service

### Phase 2: API Gateway (Tuần 3)  
- API Gateway User/Admin

### Phase 3: Core Business (Tuần 4-6)
- Product, Cart, Payment Services

### Phase 4: Content & Admin (Tuần 7-8)
- News, Admin, Shell Config Services

### Phase 5: Advanced Features (Tuần 9-12)
- Design Calculation, Chatbot, Communication Log, Football Services

### Phase 6: Agent Management (Tuần 13-14)
- Agent Management, Agent Policy Services

### Phase 7: Frontend Applications (Tuần 15-18)
- Shell Apps + 24 Frontend Components

## 🤝 Đóng góp

Mọi đóng góp đều được chào đón! Hãy tạo issue hoặc pull request.

## 📄 License

MIT License - Xem file LICENSE để biết thêm chi tiết.

## 📞 Liên hệ

- **GitHub**: [khpt1976-cloud](https://github.com/khpt1976-cloud)
- **Repository**: [Sodo15T9](https://github.com/khpt1976-cloud/Sodo15T9)

---

⭐ **Nếu dự án hữu ích, hãy cho một star!** ⭐