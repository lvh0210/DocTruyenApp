# CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)
*Thời gian cập nhật:* 2026-11-21 13:00:00
*Trạng thái:* Hoàn tất nâng cấp v1.1.9, sửa lỗi quay lại trang web kẹt và xuất bản GitHub Release | Phiên làm việc: 0c355b61-a96d-4330-a08b-4a2c9ff0bbc2

## 1. Công Việc Đã Hoàn Thành (Completed Tasks)
1. **Khắc phục triệt để lỗi quay lại bị lặp trang web (Direct Exit to Menu):**
   - Viết lại phương thức `WebBrowseActivity.onBackPressed()`: Gọi trực tiếp `this.finish()` để quay về Menu / `MainActivity` ngay lập tức, không còn bị kẹt duyệt lặp từng trang web trong lịch sử WebView.
   - Thêm nút chuyên dụng `🏠 Menu` trên thanh công cụ duyệt web (`topBar`) tích hợp class OnClickListener chuyên dụng `WebBrowseActivity$ExitClickListener.smali`.
   - Thu gọn nút lùi trang web `«` thành 80px để giao diện thanh công cụ cân đối, thanh thoát.
2. **Thiết kế lại giao diện hiện đại & cao cấp (Refined Modern Design):**
   - Nâng cấp `UiTheme.smali`: Chuyển đổi bảng màu sang Deep Obsidian `#0A0D14`, mặt thẻ `#121722`, viền `#253046`, màu điểm nhấn `#3B82F6` rực rỡ, loại bỏ hoàn toàn cảm giác xám xịt đại trà.
   - Cập nhật tiêu đề màn hình chính thành `Đọc Truyện` thanh lịch, huy hiệu `v1.1.9` và phụ đề định vị cao cấp.
3. **Biên dịch, Đóng gói & Ký số APK v1.1.9:**
   - Biên dịch thành công qua `apktool 2.10.0` với 0 lỗi cú pháp smali.
   - Căn chỉnh `zipalign -p -f 4`.
   - Ký số hoàn tất với `apksigner` (Scheme v1, v2, v3) với keystore cố định -> file thành phẩm: `bin/com.doctruyen.apk` (825 KB).
4. **Cập nhật Bản đồ tri thức Graphify (AST):**
   - Đã tái phân tích và đồng bộ tại `graphify-out/` gồm 102 nodes, 47 edges, 56 communities.
5. **Xuất bản Release v1.1.9 trên GitHub:**
   - Đã tạo bản phát hành chính thức `v1.1.9` kèm tệp `com.doctruyen.apk` tại: https://github.com/lvh0210/DocTruyenApp/releases/tag/v1.1.9

## 2. Thông Tin Kho Lưu Trữ & Tệp Trọng Tâm
- Bản phát hành mới nhất: https://github.com/lvh0210/DocTruyenApp/releases/tag/v1.1.9
- GitHub Repository: https://github.com/lvh0210/DocTruyenApp
- Bản APK thành phẩm: `D:\VibeCode\DocTruyenApp\bin\com.doctruyen.apk`
- Keystore ký cố định: `D:\VibeCode\DocTruyenApp\keystore\release.keystore`
- Bản đồ tri thức Graphify: `D:\VibeCode\DocTruyenApp\graphify-out\`
- Tệp lộ trình: `D:\VibeCode\DocTruyenApp\PLAN.md`
