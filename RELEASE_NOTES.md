# DocTruyen App v1.2.0 - Tái Cấu Trúc Giao Diện Chuẩn Native & Sticky Navigation

Bản nâng cấp toàn diện về mặt kiến trúc giao diện người dùng (UI/UX Architecture), chuyển đổi từ phong cách cuộn một trang đơn điệu sang hệ thống điều hướng chuẩn ứng dụng di động hiện đại.

## 📦 Tệp Cài Đặt (Release Asset)
- **Tên tệp:** `DocTruyen-v1.2.0.apk`
- **Dung lượng:** ~825 KB
- **Package Name:** `com.doctruyen`
- **Phiên bản:** `versionCode 11` - `versionName 1.2.0`
- **Chữ ký số:** Scheme v1, v2, v3 (Ký cố định bằng release keystore, hỗ trợ cài đè vĩnh viễn không cần gỡ)

---

## 🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.2.0

### 1. 📌 Thanh Điều Hướng Cố Định (Sticky Top Navigation)
- **Tách biệt Header & TabBar khỏi vùng cuộn:** Trước đây toàn bộ màn hình bị nhét trong một thẻ cuộn khiến thanh TabBar bị cuốn mất khi người dùng duyệt danh sách truyện. Ở bản v1.2.0, Header và TabBar được ghim cố định ở đỉnh màn hình (`MATCH_PARENT, VERTICAL`), chỉ có vùng nội dung bên dưới cuộn (`weight: 1.0f`).
- **Chuyển Tab 1 chạm tức thì:** Dù đang ở bất kỳ vị trí cuộn nào trong tủ sách hàng trăm cuốn, người dùng luôn có thể chạm vào TabBar để đổi tab ngay lập tức mà không cần cuộn ngược lên đầu.

### 2. ⚡ Triệt Tiêu Hoàn Toàn Hiện Tượng Nhảy Giật (Zero Layout Shift)
- **Đưa Thẻ Tiếp Tục Đọc vào bên trong Tab Tủ Sách:** Loại bỏ vị trí chen ngang giữa Header và TabBar trước đây. Khi người dùng chuyển qua lại giữa các Tab (Web, Truyện Chữ, Truyện Tranh), vị trí thanh TabBar giữ nguyên tuyệt đối, không còn bị co giật vị trí.

### 3. ⚖️ Cụm Nút Thao Tác Cân Đối 50:50 (Balanced Action Cards)
- Chuẩn hóa hai nút `📂 Mở Tệp Sách` và `🔄 Quét Download` với tỉ lệ chia đều 1:1, bo góc 12dp mềm mại, margin cân xứng và font chữ rõ ràng, không bị tràn viền hay lệch tỉ lệ.

### 4. 🌐 Tái Thiết Kế Tab Khám Phá Web (Modern Web Hub)
- **Web Browser Hero Card:** Khung chào đón trực quan với nút `🔍 Mở Trình Duyệt Web »` rực rỡ và mô tả tính năng bóc tách TTS & chặn quảng cáo.
- **Direct URL Reader Card:** Khung dán link chương độc lập, ô nhập bo tròn kèm nút `▶ Bóc Tách & Đọc Ngay` thanh thoát.

### 5. 🎨 Chuẩn Hóa Toolbar Trình Duyệt Web (`WebBrowseActivity`)
- **Loại bỏ kích thước pixel cứng (PX) cũ:** Chuyển đổi toàn bộ sang `UiTheme.dp()`, đảm bảo hiển thị hoàn hảo và đồng nhất trên mọi màn hình từ 720p đến 1.5K/2K OLED.
- **Thiết kế bo tròn viên thuốc (Pill Shape):** Đồng bộ chiều cao chuẩn `36dp` cho nút `🏠 Menu`, nút `«`, ô tìm kiếm URL, nút `Đi` và nút chuyển nền `🌙/☀️`.

---

## 📲 Hướng Dẫn Cài Đặt
1. Tải tệp `DocTruyen-v1.2.0.apk` đính kèm bên dưới.
2. Mở tệp và chọn **Cài đặt** (cài đè trực tiếp lên bản cũ).
3. Thưởng thức giao diện đọc truyện mượt mà, khoa học và tiện lợi!
