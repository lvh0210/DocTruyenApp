# KẾ HOẠCH TỐI ƯU HÓA & NÂNG CẤP GIAO DIỆN HỢP LÝ: DocTruyenApp

- [x] **Chặng 1: Tái cấu trúc Kiến trúc Layout Màn hình chính (MainActivity Sticky Architecture)**
  - [x] 1.1: Tách Header và TabBar ra khỏi ScrollView tạo cấu trúc Sticky Top Navigation
  - [x] 1.2: Di chuyển Thẻ Tiếp Tục Đọc vào bên trong Tab Tủ Sách, triệt tiêu hoàn toàn Layout Shift
  - [x] 1.3: Nâng cấp TabBar thành Segmented Pill Control cố định, luôn sẵn sàng chuyển tab 1 chạm
- [x] **Chặng 2: Tái thiết kế Bố cục Tab Tủ Sách & Tab Khám Phá Web**
  - [x] 2.1: Chuẩn hóa cụm Quick Action Buttons (Mở tệp / Quét thư mục) cân đối tỉ lệ 50:50
  - [x] 2.2: Thiết kế lại Tab Web thành Modern Web Hub (Hero Browser Card + Direct URL Reader Card)
  - [x] 2.3: Nâng cấp Thẻ Tiếp Tục Đọc trực quan với tiêu đề nổi bật và nhãn tiến độ
- [x] **Chặng 3: Chuẩn hóa Thanh công cụ Trình duyệt Web (WebBrowseActivity)**
  - [x] 3.1: Thay thế kích thước pixel cứng bằng UiTheme.dp() đồng bộ trên mọi độ phân giải màn hình
  - [x] 3.2: Thiết kế lại các nút bấm (Menu, Back, URL Pill, Go, Dark Mode) dạng bo tròn viên thuốc
  - [x] 3.3: Tối ưu nút hành động đáy "Đọc Ngay & Phát TTS" nổi bật
- [x] **Chặng 4: Biên dịch APK, Ký số & Xuất bản**
  - [x] 4.1: Biên dịch smali và tài nguyên qua apktool (0 lỗi cú pháp)
  - [x] 4.2: Tối ưu zipalign và ký số APK bằng release keystore cố định (v1, v2, v3 scheme)
  - [x] 4.3: Đồng bộ commit lên GitHub và xuất bản Release v1.2.0 chính thức kèm file cài đặt
