# CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)
*Thời gian cập nhật:* 2026-11-21 13:13:00
*Trạng thái:* Hoàn tất quy chuẩn Release GitHub, cập nhật asset DocTruyen-v1.1.9.apk và tinh giản lộ trình | Phiên làm việc: 0c355b61-a96d-4330-a08b-4a2c9ff0bbc2

## 1. Công Việc Đã Hoàn Thành (Completed Tasks)
1. **Khắc phục lỗi điều hướng & bổ sung nút thoát Menu trực tiếp:**
   - Viết lại `WebBrowseActivity.onBackPressed()` gọi `this.finish()` để thoát thẳng ra Menu chính.
   - Thêm nút chuyên dụng `🏠 Menu` trên thanh công cụ web (`topBar`) với listener `WebBrowseActivity$ExitClickListener.smali`.
2. **Nâng cấp Design System hiện đại (v1.1.9):**
   - Nâng cấp `UiTheme.smali`: Tone Deep Obsidian `#0A0D14`, surface `#121722`, viền `#253046`, accent `#3B82F6`.
   - Cập nhật thương hiệu `Đọc Truyện`, huy hiệu phiên bản `v1.1.9` thanh thoát và đồng bộ.
3. **Quy chuẩn hóa Bản phát hành Release trên GitHub:**
   - Tiêu đề Release chuẩn phiên bản: `DocTruyen v1.1.9`.
   - Tệp cài đặt đính kèm định danh phiên bản rõ ràng: `DocTruyen-v1.1.9.apk` (825 KB, v1/v2/v3 signature scheme).
   - Xóa bỏ tệp asset không mang mã phiên bản (`com.doctruyen.apk`) để tránh nhầm lẫn.
4. **Tinh giản lộ trình triển khai (Streamlined Milestones):**
   - Thu gọn 19 giai đoạn vụn vặt trong `README.md` thành bảng tóm tắt phiên bản súc tích, chuyên nghiệp.
   - Chuẩn hóa `PLAN.md` theo cấu trúc 2 tầng gọn gàng, loại bỏ các bước con dư thừa.

## 2. Thông Tin Bản Phát Hành & Tài Nguyên
- Bản phát hành chính thức: https://github.com/lvh0210/DocTruyenApp/releases/tag/v1.1.9
- Tệp cài đặt trực tiếp: `DocTruyen-v1.1.9.apk` (tại mục Releases)
- Kho lưu trữ: https://github.com/lvh0210/DocTruyenApp
- Bản đồ tri thức Graphify: `D:\VibeCode\DocTruyenApp\graphify-out\`
- Kế hoạch dự án: `D:\VibeCode\DocTruyenApp\PLAN.md`
