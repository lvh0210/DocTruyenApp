# CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)
*Thời gian cập nhật:* 2026-11-21 13:35:00
*Trạng thái:* Hoàn tất nâng cấp kiến trúc giao diện v1.2.0 (Sticky Top Navigation, Zero Layout Shift, Toolbar Pill chuẩn dp) | Phiên làm việc: 0c355b61-a96d-4330-a08b-4a2c9ff0bbc2

## 1. Công Việc Đã Hoàn Thành (Completed Tasks)
1. **Tái cấu trúc kiến trúc Layout màn hình chính (`MainActivity`):**
   - Tách Header và TabBar ra khỏi ScrollView tạo cấu trúc Sticky Top Navigation: Header & TabBar luôn ghim cố định ở đầu màn hình, không bị cuộn mất khi duyệt danh sách sách dài.
   - Di chuyển Thẻ Tiếp Tục Đọc vào bên trong Tab Tủ Sách, triệt tiêu 100% hiện tượng co giật vị trí TabBar (Zero Layout Shift) khi chuyển tab.
2. **Nâng cấp Bố cục Tab Tủ Sách & Tab Web:**
   - Cân đối cụm nút hành động nhanh 50:50 (`📂 Mở Tệp Sách` và `🔄 Quét Download`), bo góc 12dp mềm mại.
   - Thiết kế lại Tab Web thành Modern Web Hub với Hero Browser Card và Direct URL Reader Card trực quan.
   - Cập nhật huy hiệu phiên bản màn hình chính thành `v1.2.0`.
3. **Chuẩn hóa Toolbar Trình duyệt Web (`WebBrowseActivity`):**
   - Thay thế toàn bộ kích thước pixel cứng cũ bằng `UiTheme.dp()` thích ứng hoàn hảo trên mọi độ phân giải màn hình.
   - Đồng bộ chiều cao 36dp và bo tròn viên thuốc (Pill Shape) cho nút Menu, nút Back, ô URL, nút Go và nút Theme.
4. **Biên dịch, Đóng gói & Ký số APK v1.2.0:**
   - Biên dịch thành công qua `apktool 2.10.0` với 0 lỗi cú pháp smali.
   - Căn chỉnh `zipalign -p -f 4`.
   - Ký số bằng `apksigner` (Scheme v1, v2, v3) với release keystore cố định -> file cài đặt: `bin/DocTruyen-v1.2.0.apk` (825,590 bytes).

## 2. Thông Tin Bản Phát Hành & Tài Nguyên
- Bản phát hành mới nhất: https://github.com/lvh0210/DocTruyenApp/releases/tag/v1.2.0
- Tệp cài đặt trực tiếp: `DocTruyen-v1.2.0.apk` (tại mục Releases)
- Kho lưu trữ GitHub: https://github.com/lvh0210/DocTruyenApp
- Keystore ký cố định: `D:\VibeCode\DocTruyenApp\keystore\release.keystore`
- Kế hoạch dự án: `D:\VibeCode\DocTruyenApp\PLAN.md`
