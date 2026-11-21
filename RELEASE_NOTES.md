# DocTruyen App v1.2.2 - Khắc Phục Dứt Điểm Lỗi Crash & Ổn Định Tuyệt Đối

Bản vá khẩn cấp v1.2.2 giải quyết chính xác lỗi Dalvik Register Type Mismatch trong MainActivity, đưa ứng dụng về trạng thái ổn định 100%.

## 📦 Tệp Cài Đặt (Release Asset)
- **Tên tệp:** `DocTruyen-v1.2.2.apk`
- **Dung lượng:** ~825 KB
- **Package Name:** `com.doctruyen`
- **Phiên bản:** `versionCode 13` - `versionName 1.2.2`
- **Chữ ký số:** Scheme v1, v2, v3 (Ký bằng release keystore cố định, hỗ trợ cài đè trực tiếp)

---

## 🛠️ Chi Tiết Sửa Lỗi Trong Bản v1.2.2
1. **Khắc phục lỗi Register Type Mismatch trong MainActivity:**
   - Trong bản 1.2.1, thanh ghi tham số Button bị ghi đè thành kiểu `float` bởi lệnh tính toán LayoutParams trước đó, gây lỗi `VerifyError` khi máy ảo Dalvik nạp class.
   - Bản 1.2.2 chuyển sang nhận trực tiếp ViewGroup `LinearLayout` cha, giải phóng hoàn toàn sự phụ thuộc thanh ghi, ngăn ngừa 100% nguy cơ crash khi khởi động.
2. **Nút `🏠 Menu` & Smart Double-Back Exit:** Hoạt động ổn định trên cả Trình duyệt Web và Trình đọc sách Reader.
3. **Capsule Pills UI:** Giao diện tab bo góc 20dp và 2 nút thao tác chia đều 50:50.