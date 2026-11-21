# LỘ TRÌNH PHÁT TRIỂN: DocTruyenApp

- [x] **Chặng 1: Khắc phục sự cố Crash & Ổn định Bytecode (v1.2.1)**
  - [x] 1.1: Revert mã nguồn smali về trạng thái chuẩn và loại bỏ lỗi Register Type Mismatch
  - [x] 1.2: Xây dựng module `UiModernizer` biên dịch qua Java/D8 đảm bảo bytecode an toàn 100%
- [x] **Chặng 2: Nâng cấp Giao diện & Nút Thoát Menu Trực Quan**
  - [x] 2.1: Thêm nút `🏠 Menu` trên thanh công cụ WebBrowseActivity và thanh điều khiển ReaderActivity
  - [x] 2.2: Tích hợp cơ chế Smart Double-Back Exit: Nhấn Back lùi trang / nhấn đúp 1.8s thoát thẳng Menu
  - [x] 2.3: Chuyển đổi TabBar sang phong cách Capsule Pills bo góc 20dp và cân đối nút thao tác 50:50
- [x] **Chặng 3: Biên dịch, Ký số APK & Phát hành GitHub Release**
  - [x] 3.1: Biên dịch bằng Apktool, Zipalign 4-byte và ký số v1/v2/v3 bằng keystore phát hành
  - [x] 3.2: Đồng bộ Git commit và tạo GitHub Release v1.2.1 chính thức kèm file APK