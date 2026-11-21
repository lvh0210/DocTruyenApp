# CHECKPOINT: DocTruyenApp

## Trạng Thái Dự Án (Cập nhật 21/11/2026)
- **Phiên bản hiện tại:** `v1.2.1` (versionCode: 12)
- **Tệp phát hành:** `bin/DocTruyen-v1.2.1.apk` (825,590 bytes)
- **Chữ ký số:** Scheme v1, v2, v3 (release keystore, alias: truyen, pass: 123456)
- **Mã nguồn:** Reverse-engineering Android Smali & Java bytecode

## Các Cải Tiến Đã Hoàn Thành Trong v1.2.1
1. **Khắc phục triệt để crash:** Loại bỏ lỗi VerifyError bằng cách chuẩn hóa bytecode qua module `UiModernizer`.
2. **Nút Thoát Menu Chuyên Dụng:** Bổ sung nút `🏠 Menu` trên thanh công cụ duyệt web (`WebBrowseActivity`) và thanh điều khiển đọc sách (`ReaderActivity`).
3. **Smart Double-Back:** Phím Back vật lý trên điện thoại hỗ trợ lùi trang web hoặc nhấn 2 lần liên tiếp để thoát thẳng ra Menu chính.
4. **Giao diện Capsule Pills:** TabBar bo góc tròn 20dp, màu Accent Blue nổi bật; 2 nút thao tác nhanh chia đều 50:50.