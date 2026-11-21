# DocTruyen App v1.1.9 - Bản Phát Hành Tinh Chỉnh Giao Diện & Thoát Menu Trực Tiếp

Ứng dụng đọc truyện tranh & truyện chữ Android Native siêu nhẹ (< 1MB APK), hỗ trợ giải mã EPUB 3 / TXT stream, phát âm thanh đọc TTS chạy nền và lướt web truyện không quảng cáo.

## 📦 Tệp Cài Đặt (Release Asset)
- **Tên tệp:** `DocTruyen-v1.1.9.apk`
- **Dung lượng:** ~825 KB
- **Package Name:** `com.doctruyen`
- **Phiên bản:** `versionCode 10` - `versionName 1.1.9`
- **Chữ ký số:** Scheme v1, v2, v3 (Ký cố định bằng release keystore, hỗ trợ cài đè vĩnh viễn không cần gỡ)

---

## 🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.1.9

### 1. 🚪 Khắc Phục Triệt Để Vấn Đề Quay Lại & Thoát Menu Trực Tiếp
- **Nút "🏠 Menu" trên thanh công cụ:** Bổ sung nút bấm chuyên dụng ngay trên đầu trình duyệt web đọc truyện (`WebBrowseActivity`), người dùng chỉ cần chạm 1 lần là thoát ngay lập tức về trang Menu chính (`MainActivity`).
- **Phím Back thoát thẳng ra Menu:** Viết lại toàn diện hàm `onBackPressed()`, khi người dùng bấm phím quay lại hoặc cử chỉ vuốt cạnh máy, ứng dụng sẽ đóng trình duyệt và trở về Menu ngay lập tức, triệt tiêu hoàn toàn tình trạng bị kẹt lặp lại các trang web đã xem như một trình duyệt thông thường.
- Nút `«` vẫn được giữ gọn gàng nếu người dùng chủ động muốn lùi lại 1 trang web trước đó.

### 2. 🎨 Thiết Kế Lại Giao Diện Hiện Đại & Sang Trọng (Anti-AI Plain Look)
- **Tiêu đề & Thương hiệu chuẩn:** Chuẩn hóa tiêu đề **Đọc Truyện** với typography dứt khoát, huy hiệu phiên bản `v1.1.9` và phụ đề định vị "Thư viện Offline & Trình đọc Web cao cấp", loại bỏ phong cách đặt tên thô sơ rập khuôn.
- **Bảng màu Deep Obsidian & Midnight Indigo:** 
  - Nâng cấp `DARK_BG` về tone đen sâu huyền bí `#0A0D14`.
  - Thẻ nổi bề mặt (`DARK_SURFACE`) chuyển sang tone `#121722` bo góc mềm mại kèm viền mỏng `#253046`.
  - Màu điểm nhấn (`ACCENT_BLUE`) nâng cấp lên `#3B82F6` chuẩn Material 3 rực rỡ và hiện đại.
- **Thanh công cụ trình duyệt cân đối:** Căn chỉnh tỉ lệ các nút `🏠 Menu`, `«`, thanh URL và nút `Đi` giúp giao diện thanh thoát, trực quan và dễ bấm bằng 1 ngón tay.

---

## 📲 Hướng Dẫn Cài Đặt
1. Tải tệp `DocTruyen-v1.1.9.apk` đính kèm bên dưới.
2. Mở tệp và chọn **Cài đặt** (hoặc cài đè trực tiếp nếu đã có bản trước đó).
3. Cấp quyền truy cập bộ nhớ khi app yêu cầu để quét truyện từ thư mục `Download/`.
