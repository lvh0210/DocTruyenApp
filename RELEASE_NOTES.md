# DocTruyen App v1.1.8 - Bản Phát Hành Tối Ưu Hóa Toàn Diện

Ứng dụng đọc truyện tranh & truyện chữ Android Native siêu nhẹ (< 1MB APK), hỗ trợ giải mã EPUB 3 / TXT stream, phát âm thanh đọc TTS chạy nền và lướt web truyện không quảng cáo.

## 📦 Tệp Cài Đặt (Release Asset)
- **Tên tệp:** `com.doctruyen.apk`
- **Dung lượng:** ~825 KB
- **Package Name:** `com.doctruyen`
- **Chữ ký số:** Scheme v1, v2, v3 (Ký cố định bằng release keystore, hỗ trợ cài đè vĩnh viễn)

---

## 🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.1.8

### 1. 🎨 Giao Diện Người Dùng (UI/UX)
- **Thanh đo tiến độ đọc siêu mỏng (Reading Progress Bar):** Tích hợp thanh gradient động ở đỉnh màn hình, tự động tính toán % cuộn trang theo thời gian thực giúp theo dõi chính xác vị trí đang đọc trong chương.
- **Chủ đề OLED Pure Black (`theme-black`):** Bổ sung nền đen tuyệt đối `#000000`, chữ xám sáng `#e2e8f0`, tiêu đề xanh nhạt `#93c5fd`, tiết kiệm pin tối đa cho màn hình AMOLED (như Xiaomi 15).
- **Typography & Font Rendering:** Kích hoạt antialiasing và optimizeLegibility, giãn dòng `line-height: 1.85`, canh đều inter-word, hỗ trợ vùng đệm an toàn `env(safe-area-inset-top)` / `env(safe-area-inset-bottom)` cho màn hình tràn viền và camera đục lỗ.

### 2. ⚡ Hiệu Năng & Trải Nghiệm Đọc
- **Tăng tốc phần cứng GPU & Chống tràn RAM:** Kích hoạt `android:hardwareAccelerated="true"` và `android:largeHeap="true"` trong `AndroidManifest.xml`, tối ưu hóa WebView đạt 60-120fps và cho phép mở mượt mà các tệp EPUB/TXT nặng hàng nghìn chương mà không bị crash.
- **Làm sạch văn bản thông minh (Content Sanitizer):** Tự động bóc tách và loại bỏ các câu từ rác, watermark bản quyền, link ngoài chèn vào text truyện.
- **Tối ưu hình ảnh:** Toàn bộ ảnh minh họa tự động áp dụng `loading="lazy"`, `decoding="async"` và bo tròn góc 10px với bóng đổ nhẹ.

### 3. 🛡️ Nâng Cấp Trình Chặn Quảng Cáo Cờ Bạc (AdBlock Engine)
- Mở rộng bộ quy tắc CSS và MutationObserver trong trình duyệt web truyện tranh/chữ.
- Chặn đứng 100% các banner, iframe cá cược, link nhà cái, popups cờ bạc rác mà không gây ảnh hưởng đến layout đọc truyện.

---

## 📲 Hướng Dẫn Cài Đặt
1. Tải tệp `com.doctruyen.apk` đính kèm bên dưới.
2. Mở tệp và chọn **Cài đặt** (hoặc cài đè trực tiếp nếu đã có bản trước đó).
3. Cấp quyền truy cập bộ nhớ khi app yêu cầu để quét truyện từ thư mục `Download/`.
