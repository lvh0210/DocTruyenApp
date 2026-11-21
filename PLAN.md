# LỘ TRÌNH TÁI THIẾT KẾ: DocTruyenApp (Android Native Rewrite)

- [x] **Chặng 1: Thiết lập Nền tảng Gradle & Công Cụ Biên Dịch Native**
  - [x] 1.1: Tải và thiết lập Gradle 8.5 Build Tool tại `D:\VibeCode\Tools\gradle`
  - [x] 1.2: Cấu hình `settings.gradle`, `build.gradle`, `gradle.properties` chuẩn Android Gradle Plugin
  - [x] 1.3: Bảo toàn và di chuyển toàn bộ Assets (20 Extensions JS, Reader HTML, Resources)
- [x] **Chặng 2: Xây Dựng Tầng Dữ Liệu & Bộ Bóc Tách Web (Core Engine)**
  - [x] 2.1: Xây dựng `ExtensionEngine` bóc tách nguồn truyện trực tuyến linh hoạt
  - [x] 2.2: Xây dựng cơ sở dữ liệu `AppDatabase` (lịch sử, tủ sách, tiến độ đọc) & `BookScanner` offline
  - [x] 2.3: Xây dựng `TtsPlaybackService` chạy nền kèm điều khiển Notification đa phương tiện
- [x] **Chặng 3: Xây Dựng Giao Diện Material 3 Cao Cấp (Modern UI)**
  - [x] 3.1: Thiết kế Màn hình chính (Segmented Capsule Tabs, Hero Resume Card, Quick Actions 50:50)
  - [x] 3.2: Thiết kế `WebBrowseActivity` với Nút `🏠 Menu` cố định, Smart Double-Back Exit & Đọc Sạch
  - [x] 3.3: Thiết kế `ReaderActivity` toàn màn hình (Font size, Theme Dark/Sepia, TTS integration)
- [x] **Chặng 4: Biên Dịch Gradle Release, Ký Số Keystore & Phát Hành v2.0.0**
  - [x] 4.1: Chạy build Gradle Release (`./gradlew assembleRelease`) thành công 100%
  - [x] 4.2: Ký số APK bằng `release.keystore` cố định (hỗ trợ cài đè bản cũ với V2 Scheme)
  - [x] 4.3: Kiểm thử, đồng bộ Git và tạo GitHub Release v2.0.0
