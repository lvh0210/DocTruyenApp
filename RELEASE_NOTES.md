# Nhật Ký Phát Hành: DocTruyen v2.0.0 (Android Native Rewrite)

**Ngày phát hành:** 21/11/2026  
**Phiên bản:** `v2.0.0` (VersionCode: `20`)  
**Package:** `com.doctruyen`  
**Tập tin phát hành:** `DocTruyen-v2.0.0.apk`  
**Chữ ký:** Khóa ký số phát hành cố định `release.keystore` (V2 Signature Scheme - Hỗ trợ cài đè trực tiếp).

---

## 🌟 Bước Nhảy Vọt: Tái Thiết Kế Toàn Diện Sang Android Native (Kotlin & Material 3)

Phiên bản `v2.0.0` đánh dấu một cột mốc lịch sử khi ứng dụng được viết lại hoàn toàn từ đầu bằng ngôn ngữ **Kotlin** và kiến trúc **Android Native thuần túy** kết hợp hệ thống biên dịch **Gradle 8.5** tiêu chuẩn, thay thế hoàn toàn cho cách tiếp cận Smali bytecode chắp vá trước đây.

### 1. Trải Nghiệm Giao Diện Người Dùng (UI/UX) Đột Phá
- **Thanh Điều Hướng Segmented Capsule Tabs:** 4 tab chuyển đổi trạng thái mượt mà (📚 Tủ Sách, 🌐 Khám Phá, 🔗 Đọc Link Web, ⚙️ Cài Đặt) với hiệu ứng highlight viên thuốc bo cong tinh tế.
- **Hero Resume Card (Tiếp Tục Đọc):** Hiển thị ngay đầu màn hình chính tác phẩm đang đọc dở dang với bìa truyện, tiêu đề, chương hiện tại, thanh phần trăm tiến độ và nút đọc tiếp tức thì.
- **Bố Cục Cân Đối 50:50 Quick Actions:** Nút `Thêm Sách Offline` và `Duyệt Nguồn Online` bố trí ngang hàng đối xứng, tối ưu thao tác ngón cái trên màn hình lớn.
- **Dark Obsidian & Sepia Eye-Care Theme:** Bảng màu tối chuẩn OLED `#121212` / `#1E1E1E` tương phản cao kết hợp điểm nhấn Xanh Hiện Đại `#3B82F6`, bảo vệ mắt khi đọc đêm.

### 2. Trình Duyệt Nguồn Truyện Thông Minh (WebBrowseActivity)
- **Nút `🏠 Menu` Cố Định:** Đặt ngay góc trên cùng bên trái của thanh điều hướng trình duyệt, cho phép người dùng quay thẳng về màn hình chính bất cứ lúc nào chỉ với 1 chạm.
- **Cơ Chế Smart Double-Back Exit:** Khi bấm phím Back vật lý hoặc cử chỉ vuốt quay lại:
  - Nếu trình duyệt còn lịch sử trang: Tự động lùi về trang trước (`history.back()`).
  - Khi đã về trang đầu tiên: Bấm Back 2 lần trong vòng 2 giây sẽ hiển thị thông báo "Bấm lần nữa để thoát về Menu" và thoát an toàn, chấm dứt hoàn toàn tình trạng kẹt vòng lặp trang.
- **Nút "📖 Đọc Sạch":** Nút bấm nhanh trên Toolbar tự động bóc tách nội dung chương hiện tại thành giao diện đọc sạch sẽ, loại bỏ 100% quảng cáo và các thành phần gây phiền toái.

### 3. Trình Đọc Truyện Toàn Diện (ReaderActivity)
- **Điều Khiển Nhanh Toàn Diện:** Dễ dàng tăng giảm kích cỡ chữ (`A-` / `A+`), chuyển đổi chế độ Sáng / Tối / Sepia vàng dịu mắt.
- **Tích Hợp Background TTS Service:** Nghe đọc truyện chạy ngầm với điều khiển âm thanh trên Notification màn hình khóa (`MediaSessionCompat`), tự động tạm dừng khi có cuộc gọi và tiếp tục đọc chương tiếp theo khi hết chương.
- **Bộ 20 Tiện Ích Mở Rộng Bóc Tách Trực Tuyến:** Tích hợp đầy đủ 20 parser JavaScript cho các chuyên trang truyện hàng đầu Việt Nam.

---

## 🛠️ Chi Tiết Kỹ Thuật
- **Ngôn ngữ:** Kotlin 1.9.22
- **Build System:** Gradle 8.5, Android Gradle Plugin 8.2.2
- **Compile SDK:** 34 (Android 14) / **Min SDK:** 24 (Android 7.0+)
- **Dung lượng APK:** 5.2 MB (Tối ưu hóa tài nguyên và cấu trúc mã nguồn)
- **Kiến trúc:** SQLite Database (`AppDatabase`), Coroutines Asynchronous Flow, WebKit AndroidX, Foreground Service.
