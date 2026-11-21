# Dự Án: Đọc Truyện (DocTruyen App)
**Package Name:** `com.doctruyen`  
**Nền tảng:** Android Native (Kotlin 1.9.22 + Material 3 + Gradle 8.5)  
**Vị trí:** `D:\VibeCode\DocTruyenApp` (Android: `/storage/emulated/0/VibeCode/DocTruyenApp`)

---

## 1. Mục Tiêu & Điểm Nhấn Cốt Lõi
1. **Kiến Trúc Android Native Thuần Túy:** Viết lại hoàn toàn bằng Kotlin, biên dịch chuẩn qua Gradle 8.5 và Android Gradle Plugin 8.2.2, mang lại độ ổn định tối đa, loại bỏ hoàn toàn các lỗi xung đột thanh ghi và crash bytecode Smali.
2. **Giao Diện Material 3 Hiện Đại:**
   - 4 Segmented Capsule Tabs (📚 Tủ Sách, 🌐 Khám Phá, 🔗 Đọc Link Web, ⚙️ Cài Đặt).
   - Hero Resume Card hiển thị tác phẩm đang đọc dở dang kèm tiến độ phần trăm trực quan.
   - Bố cục Quick Actions 50:50 cân đối và dễ thao tác.
   - Bảng màu Dark Obsidian chống mỏi mắt chuẩn màn hình OLED.
3. **Điều Hướng Thông Minh & Thoát Menu Trực Tiếp:**
   - Nút `🏠 Menu` cố định trên đầu mọi màn hình con (Trình duyệt Web, Trình đọc truyện).
   - Cơ chế Smart Double-Back Exit: Quay lùi lịch sử duyệt web linh hoạt và nhấn 2 lần để thoát hẳn ra ngoài Menu chính.
4. **Trình Đọc Truyện Tối Giản & Bóc Tách Sạch:**
   - Nút `📖 Đọc Sạch` tự động lọc bỏ quảng cáo và giao diện rườm rà từ bất kỳ trang web truyện nào.
   - Hỗ trợ đổi kích thước font chữ, chế độ Đọc Đêm / Sepia bảo vệ thị lực.
5. **Dịch Vụ Đọc Sách Bằng Giọng Nói (TTS Background Service):**
   - Đọc chạy ngầm liên tục ngay cả khi tắt màn hình thông qua Android Foreground Service.
   - Điều khiển Play/Pause/Next tiện lợi trên thanh thông báo Notification và màn hình khóa.
6. **Kho 20 Nguồn Truyện Online Tích Hợp:**
   - Hỗ trợ đầy đủ 20 extension JavaScript cào dữ liệu từ các trang truyện phổ biến nhất.

---

## 2. Cấu Trúc Dự Án
```text
D:\VibeCode\DocTruyenApp/
├── build.gradle                   # Root Gradle build script
├── settings.gradle                # Gradle settings & dependency repositories
├── gradle.properties              # JVM & AndroidX build flags
├── local.properties               # Android SDK path
├── keystore/release.keystore      # Keystore ký số phát hành cố định
├── bin/
│   └── DocTruyen-v2.0.0.apk       # Bản APK Release thành phẩm đã ký số v2
├── app/
│   ├── build.gradle               # Cấu hình Android Application, Dependencies, Signing
│   ├── proguard-rules.pro         # Quy tắc ProGuard / R8
│   └── src/main/
│       ├── AndroidManifest.xml    # Khai báo quyền, Activities và TTS Service
│       ├── assets/
│       │   ├── reader/reader.html # Bộ khung HTML Reader engine
│       │   └── extensions/        # 20 script mở rộng bóc tách nguồn truyện
│       ├── res/                   # Drawables, Layouts, Strings, Colors, Themes M3
│       └── java/com/doctruyen/
│           ├── data/
│           │   ├── model/         # BookItem, ChapterItem, ExtensionSource, Theme
│           │   ├── local/         # AppDatabase (SQLite), BookScanner (Downloads)
│           │   └── remote/        # ExtensionEngine (JSON parser & JS scraper)
│           ├── service/
│           │   └── TtsPlaybackService.kt # Foreground TTS Audio Service
│           └── ui/
│               ├── main/          # MainActivity (Capsule Tabs, Hero Resume Card)
│               ├── web/           # WebBrowseActivity (TopBar, Menu, Clean Reader)
│               ├── reader/        # ReaderActivity (Full-screen Reader, Controls)
│               └── theme/         # AppColors, Material 3 Styles
```

---

## 3. Lịch Sử Phiên Bản & Mốc Phát Triển

| Phiên Bản | Điểm Nhấn Cốt Lõi | Trạng Thái |
|---|---|---|
| **v1.0 – v1.1.9** | Giai đoạn xây dựng nguyên mẫu bằng Smali reverse-engineering, EPUB/TXT reader, TTS. | Đã hoàn thành |
| **v1.2.0 – v1.2.2** | Cải tiến giao diện Smali, sửa lỗi thanh ghi Dalvik type mismatch khi mở app. | Đã hoàn thành |
| **v2.0.0** *(Hiện tại)* | **Tái sinh toàn diện với Android Native (Kotlin & Material 3):** Biên dịch chuẩn Gradle 8.5, giao diện hiện đại với 4 Segmented Capsule Tabs, Hero Resume Card, nút `🏠 Menu` cố định, Smart Double-Back Exit, Background TTS Service, 20 Extensions JS. | **Đã phát hành** |
