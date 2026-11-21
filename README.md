# Dự Án: Đọc Truyện (DocTruyen App)
**Package Name:** `com.doctruyen`  
**Nền tảng:** Android Native + Web Reader Engine  
**Vị trí:** `D:\VibeCode\DocTruyenApp` (Android: `/storage/emulated/0/VibeCode/DocTruyenApp`)

---

## 1. Mục Tiêu Chính
1. **Khắc phục triệt để lỗi EPUB 3.0:** Hỗ trợ đầy đủ chuẩn EPUB 2 (`toc.ncx`) và EPUB 3 (`nav.xhtml`), áp dụng cơ chế *Lazy Indexing Stream* giúp nạp tức thì các bộ truyện khổng lồ (như *Ta Có Một Thân Bị Động Kỹ* với hơn 2.054 chương, 16MB) trong **248 ms** mà không gây nghẽn RAM / ANR.
2. **Tích hợp sẵn các nguồn truyện online phổ biến:** Tương thích hệ thống extension JavaScript, tích hợp sẵn 6 nguồn: Truyện Full, Truyện CV, Mê Truyện Chữ, Tàng Thư Viện, Truyện YY, App Truyện Chữ.
3. **Chế độ đọc URL trực tiếp (Direct Web Reader Mode):** Dán link trang web truyện bất kỳ -> tự động bóc tách văn bản sạch (loại bỏ quảng cáo/menu), tự động nhận diện liên kết "Chương sau" và nạp liên tục.
4. **Trình phát Audio TTS chạy ngầm chuyên nghiệp:** Sử dụng Android `MediaSession` / `WakeLock`, hiển thị thanh điều khiển trên màn hình khóa và hỗ trợ nút bấm tai nghe Bluetooth, phát liên tục khi tắt màn hình, tùy chỉnh tốc độ đọc từ 0.5x đến 3.0x.

---

## 2. Cấu Trúc Thư Mục Dự Án
```text
/storage/emulated/0/VibeCode/DocTruyenApp/
├── README.md                      # Tài liệu tổng quan dự án
├── CHECKPOINT.md                  # Lưu vết tiến độ kỹ thuật
├── build.sh                       # Script biên dịch tự động ra APK trên Android (aapt + d8 + apksigner)
├── app/
│   ├── AndroidManifest.xml        # Khai báo quyền, Service, Activity
│   ├── res/                       # Tài nguyên giao diện (Layout, Drawable, Values)
│   ├── assets/                    # Assets web reader, fonts, style, plugins built-in
│   │   ├── reader/reader.html     # HTML5/CSS/JS reader engine (Readability, theme)
│   │   └── extensions/            # 6 nguồn truyện online tích hợp sẵn (JSON/JS)
│   └── src/com/doctruyen/
│       ├── MainActivity.java      # Màn hình chính (Thư viện, Nguồn, Nhập Link)
│       ├── reader/
│       │   ├── ReaderActivity.java# Màn hình đọc truyện WebView Native Bridge
│       │   ├── epub/              # Bộ giải mã EPUB 2 & EPUB 3 Lazy Stream
│       │   └── web/               # Engine bóc tách URL web truyện
│       ├── tts/
│       │   └── TtsPlaybackService.java # Service chạy ngầm phát âm thanh TTS
│       ├── extension/
│       │   └── ExtensionEngine.java    # Quản lý nguồn truyện online
│       └── data/
│           └── AppDatabase.java   # Lưu trữ SQLite tiến độ đọc, bookmark
└── bin/                           # Chứa APK thành phẩm com.doctruyen.apk
```

---

## 3. Lịch Sử Phiên Bản & Mốc Phát Triển

| Phiên Bản | Điểm Nhấn Cốt Lõi | Trạng Thái |
|---|---|---|
| **v1.0 – v1.1.0** | Lõi giải mã EPUB 2/3 Lazy Stream siêu tốc, TXT reader, bóc tách web trực tiếp, dịch vụ phát TTS nền chuẩn MediaSession | Hoàn thành |
| **v1.1.2 – v1.1.5** | Quét đệ quy thư mục `Download/`, cử chỉ vuốt chuyển chương, đồng bộ vị trí đọc SQLite và quản lý ẩn/xóa truyện triệt để | Hoàn thành |
| **v1.1.8** | Tối ưu hóa UI/UX toàn diện: OLED Pure Black `#000000`, thanh tiến độ đọc mỏng, bộ chặn quảng cáo nâng cao, tăng tốc phần cứng WebView | Hoàn thành |
| **v1.1.9** *(Hiện tại)* | Nút `🏠 Menu` & phím Back thoát thẳng về Menu; bảng màu Deep Obsidian sang trọng; keystore ký số cố định; phát hành file cài đặt chuẩn `DocTruyen-v1.1.9.apk` | Đã phát hành |
| **v1.2+** *(Đề xuất)* | Đồng bộ bookmark/tiến độ đọc đám mây (WebDAV / Drive), nạp truyện offline hàng loạt | Lộ trình tới |

