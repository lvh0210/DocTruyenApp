# DocTruyen App v1.2.1 - Khắc Phục Triệt Để Crash, Nút Thoát Menu Trực Quan & Giao Diện Hiện Đại

Bản cập nhật v1.2.1 giải quyết dứt điểm sự cố crash bytecode, tối ưu hóa toàn diện trải nghiệm đọc web & đọc offline với nút thoát Menu chuyên biệt, cơ chế Smart Back, cùng hệ thống giao diện Capsule Pills cao cấp chuẩn di động.

## 📦 Tệp Cài Đặt (Release Asset)
- **Tên tệp:** `DocTruyen-v1.2.1.apk`
- **Dung lượng:** ~825 KB
- **Package Name:** `com.doctruyen`
- **Phiên bản:** `versionCode 12` - `versionName 1.2.1`
- **Chữ ký số:** Scheme v1, v2, v3 (Ký cố định bằng release keystore, hỗ trợ cài đè trực tiếp không cần gỡ bản cũ)

---

## 🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.2.1

### 1. 🛡️ Khắc Phục Triệt Để Lỗi Crash Khi Mở App & Mở Web
- Tách toàn bộ logic giao diện hiện đại sang module bytecode chuẩn `UiModernizer` (biên dịch trực tiếp bằng Google OpenJDK & Android D8 compiler).
- Loại bỏ hoàn toàn lỗi Register Type Mismatch và VerifyError trên máy ảo Dalvik / ART của Android.

### 2. 🏠 Giải Quyết Vấn Đề Thoát Menu Khi Đang Đọc Truyện (Smart Exit System)
- **Nút `🏠 Menu` Chuyên Dụng Trên Mọi Màn Hình:**
  * **Trên Trình Duyệt Web (`WebBrowseActivity`):** Nút `🏠 Menu` dạng viên thuốc (Pill Chip) màu xanh nổi bật được đặt cố định ngay góc trái thanh công cụ. Người dùng chỉ cần chạm 1 chạm là thoát thẳng về màn hình chính mà không phải bấm lùi từng trang web lịch sử.
  * **Trên Trình Đọc Sách (`ReaderActivity`):** Bổ sung nút `🏠 Menu` ngay ở đầu thanh điều khiển đọc truyện. Người dùng chạm nhẹ vào màn hình là thấy ngay nút thoát về Menu chính.
- **Cơ Chế Phím Back Thông Minh (Smart Double-Back Exit):**
  * Khi người dùng nhấn nút Back vật lý hoặc vuốt cử chỉ quay lại trên điện thoại:
    - Nếu trang web có thể lùi (`canGoBack`), app sẽ lùi 1 trang đồng thời hiện thông báo: *"Nhấn [Back] lần nữa để thoát về Menu"*.
    - Nếu người dùng nhấn tiếp lần 2 trong vòng 1.8 giây, app lập tức thoát thẳng về Menu chính!
    - Nếu trang web không còn lịch sử để lùi, app thoát về Menu ngay lập tức.
  * Người dùng không bao giờ bị "kẹt" trong vòng lặp chuyển hướng trang hay quảng cáo web.

### 3. 🎨 Giao Diện Capsule Pills Hiện Đại (Không Còn Thô Cứng)
- **Segmented Capsule TabBar:** 4 tab chuyển đổi (`📚 Kệ Sách`, `🌐 Đọc Web`, `✨ Nguồn`, `🎨 Manga`) được thiết kế dạng viên thuốc bo cong mềm mại 20dp. Tab đang chọn nổi bật với nền Accent Blue rực rỡ và chữ in đậm; tab chưa chọn có viền mỏng subtle và nền thanh lịch.
- **Cụm Nút Thao Tác Nhanh Cân Đối 50:50:** Hai nút `📂 Nhập Sách` (EPUB, TXT, PDF) và `🔄 Quét Tự Động` (Thư mục Download) được chia đều tỉ lệ 1:1, font chữ 2 tầng rõ ràng, bo góc 14dp và hiệu ứng chạm Ripple bóng bẩy.
- **Toolbar Trình Duyệt Tinh Gọn:** Thanh URL bo cong 19dp, nút Go xanh dương nổi bật, nút đổi chế độ Đêm/Ngày 🌙/☀️ dạng tròn xoe thẩm mỹ.