# Dự Án: Đọc Truyện (DocTruyen App)
**Package Name:** `com.doctruyen`  
**Nền tảng:** Android Native + Web Reader Engine  
**Vị trí:** `/storage/emulated/0/VibeCode/DocTruyenApp`

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

## 3. Lộ Trình Triển Khai (Milestones)
- [x] **Giai đoạn 1:** Phân tích nguyên nhân lỗi EPUB 3 trên app cũ và phác thảo kiến trúc qua `/grill-me`.
- [x] **Giai đoạn 2:** Xây dựng lõi `EpubLazyEngine` hỗ trợ giải nén stream và đọc mục lục `nav.xhtml` / `toc.ncx` (kiểm thử 2.054 chương chỉ mất 248ms).
- [x] **Giai đoạn 3:** Xây dựng `TtsPlaybackService` chạy nền chuẩn `MediaSession` trên Android.
- [x] **Giai đoạn 4:** Xây dựng `WebDirectScraper` trích xuất nội dung từ link web và nhận diện chương sau.
- [x] **Giai đoạn 5:** Tích hợp giao diện đọc `ReaderActivity` và nạp danh sách 6 extension online.
- [x] **Giai đoạn 6:** Viết script build `build.sh` (aapt + d8 + javac + apksigner) và biên dịch ra APK hoàn chỉnh `com.doctruyen.apk`.
- [x] **Giai đoạn 7:** Thêm thẻ Tiếp Tục Đọc gần đây và Danh sách lịch sử đọc vào màn hình chính.
- [x] **Giai đoạn 8:** Tích hợp đồng hồ thông minh (Xiaomi Band 11) & nút tai nghe điều khiển TTS từ xa (Next/Prev đoạn, Play/Pause). Tự động cuộn theo giọng đọc.
- [x] **Giai đoạn 9:** Bổ sung `TxtLazyEngine` hỗ trợ đọc file `.txt` tự tách chương, nhận dạng UTF-8/UTF-16.
- [x] **Giai đoạn 10:** Loại bỏ nguồn web chết, thêm nguồn sống & 4 nguồn truyện 18+ (Trích Tinh Lâu, Sàn Truyện Sắc, Haha Truyện, Mê Truyện Hot).
- [x] **Giai đoạn 11:** Triển khai Dark Theme toàn diện cho MainActivity, WebBrowseActivity và ReaderActivity. Fix triệt để lỗi "Nội dung chương chưa sẵn sàng để đọc".
- [x] **Giai đoạn 12:** Fix triệt để lỗi "Hết chương không tự chuyển chương" và lỗi bấm nút tai nghe Bluetooth bị báo lỗi cào trang web 403. Tích hợp động cơ cào web kép (Direct Scraper + Headless WebView) cùng thuật toán tự động nhận diện URL chương thông minh.
- [x] **Giai đoạn 13:** Tích hợp Dark Mode toàn diện cho cả trang web trong WebView (loại bỏ màn hình trắng chói mắt, tiêm CSS Dark Theme, nút toggle 🌙/☀). Xóa bỏ nguồn web chết (santruyen.com) và bổ sung 8 nguồn web Sắc Hiệp 18+ sống (Sắc Hiệp Viện, Tử Sắc Hiệp, Truyện Sắc Me, WeTruyen Sắc, v.v.). Quy chuẩn chỉ lưu 1 file cài đặt duy nhất trong Download.
- [x] **Giai đoạn 14:** Nâng cấp toàn diện giao diện ứng dụng theo chuẩn Design System cao cấp (`UiTheme.java` bo góc đồng tâm, độ tương phản dịu mắt, tránh giao diện Android đại trà máy móc). Tạo phân mục riêng biệt "Tủ Sách EPUB & TXT Ngoại Tuyến" tự động quét tệp cục bộ kèm nhãn thẻ sách. Tạo và cấu hình Logo Launcher chính thức cho app (`logo.png` / `ic_launcher.jpg`).
- [x] **Giai đoạn 15:** Khóa keystore ký số cố định vĩnh viễn (`keystore/release.keystore`) cho phép cài đè mọi bản cập nhật không cần gỡ. Tích hợp động cơ tự động Bypass xác minh & shortlink quảng cáo của Sắc Hiệp Viện (`sachiepvien.net`), bóc tách thẳng URL tải gốc (Mega.nz, Drive, Mediafire) và biến nút tải thành nút tải trực tiếp 1 chạm.
- [x] **Giai đoạn 16:** Bổ sung tính năng chạm vào màn hình ẩn/hiện toàn bộ giao diện đọc (Immersive Fullscreen Reader) với bộ nhận diện cử chỉ mượt mà, không lag; tối ưu hóa màn hình chính: thẻ "Tiếp tục đọc" chỉ hiển thị duy nhất tại Tab 1 (Tủ Sách) để các tab khác luôn gọn gàng.

- [x] **Giai đoạn 16 (v1.1.2):** Bỏ tính năng chạm đọc dòng (loại bỏ nhảy đoạn ngoài ý muốn khi cuộn/chạm). Nâng cấp cơ chế quét bộ nhớ chuyên biệt hóa cho thư mục `Download/` (hỗ trợ quét đệ quy thư mục con và xin quyền `MANAGE_EXTERNAL_STORAGE` / `READ_EXTERNAL_STORAGE`). Đồng bộ 100% màu viền trên (Status Bar) và viền dưới (Navigation Bar) hòa màu liền mạch với màn hình ứng dụng.
- [x] **Giai đoạn 17 (v1.1.3):** Bổ sung tính năng vuốt màn hình để chuyển chương (Swipe left -> Chương sau, Swipe right -> Chương trước) với bộ lọc cử chỉ chính xác và chống nhầm lẫn khi cuộn dọc. Khắc phục triệt để lỗi lưu lịch sử đọc: nâng cấp SQLite Database lưu chi tiết cả `paragraph_index` và `scroll_y`, tự động cuộn trở lại đúng đoạn văn đang đọc dở khi thoát ra vào lại từ lịch sử hoặc thẻ tiếp tục đọc.
- [x] **Giai đoạn 18 (v1.1.4):** Bổ sung bộ nút xóa truyện đã đọc và đã lưu toàn diện: Nút "🗑 Xóa Toàn Bộ Lịch Sử" ở tiêu đề, nút "🗑 Xóa" cho từng truyện trong danh sách lịch sử đọc, nút "✕ Xóa" trên thẻ Tiếp Tục Đọc, và nút "🗑" trên mỗi thẻ sách trong Tủ Sách Download với tùy chọn xóa lịch sử đọc hoặc xóa vĩnh viễn tệp truyện khỏi thiết bị.
- [x] **Giai đoạn 19 (v1.1.5):** Hoàn thiện cơ chế xóa truyện biến mất hoàn toàn khỏi danh sách (Xóa triệt để khỏi Tủ sách & Lịch sử): Tích hợp bộ lọc đường dẫn ẩn bền vững (`PREF_HIDDEN_BOOKS`), ngăn chặn 100% hiện tượng bộ quét `scanDownloadDirectory` quét lại và tự phục hồi file vào danh sách; xóa ngay lập tức khỏi cả thẻ Tiếp tục đọc, Tủ sách Download và Lịch sử đọc; hỗ trợ nhấn giữ nút "🔄 Quét Thư Mục Download" để khôi phục toàn bộ truyện đã ẩn nếu muốn.

