let data = [
    {title: "Tiên Hiệp", input: "https://metruyenchu.com.vn/the-loai/tien-hiep", page: "?page=", script: "gen.js"},
    {title: "Kiếm Hiệp", input: "https://metruyenchu.com.vn/the-loai/kiem-hiep", page: "?page=", script: "gen.js"},
    {title: "Huyền Huyễn", input: "https://metruyenchu.com.vn/the-loai/huyen-huyen", page: "?page=", script: "gen.js"},
    {title: "Đô Thị", input: "https://metruyenchu.com.vn/the-loai/do-thi", page: "?page=", script: "gen.js"},
    {title: "Khoa Huyễn", input: "https://metruyenchu.com.vn/the-loai/khoa-huyen", page: "?page=", script: "gen.js"},
    {title: "Hệ Thống", input: "https://metruyenchu.com.vn/the-loai/he-thong", page: "?page=", script: "gen.js"},
    {title: "Dị Giới", input: "https://metruyenchu.com.vn/the-loai/di-gioi", page: "?page=", script: "gen.js"},
    {title: "Dị Năng", input: "https://metruyenchu.com.vn/the-loai/di-nang", page: "?page=", script: "gen.js"},
    {title: "Xuyên Không", input: "https://metruyenchu.com.vn/the-loai/xuyen-khong", page: "?page=", script: "gen.js"},
    {title: "Trọng Sinh", input: "https://metruyenchu.com.vn/the-loai/trong-sinh", page: "?page=", script: "gen.js"},
    {title: "Võng Du", input: "https://metruyenchu.com.vn/the-loai/vong-du", page: "?page=", script: "gen.js"},
    {title: "Quân Sự", input: "https://metruyenchu.com.vn/the-loai/quan-su", page: "?page=", script: "gen.js"},
    {title: "Lịch Sử", input: "https://metruyenchu.com.vn/the-loai/lich-su", page: "?page=", script: "gen.js"},
    {title: "Ngôn Tình", input: "https://metruyenchu.com.vn/the-loai/ngon-tinh", page: "?page=", script: "gen.js"},
    {title: "Đam Mỹ", input: "https://metruyenchu.com.vn/the-loai/dam-my", page: "?page=", script: "gen.js"},
    {title: "Bách Hợp", input: "https://metruyenchu.com.vn/the-loai/bach-hop", page: "?page=", script: "gen.js"},
    {title: "Điền Văn", input: "https://metruyenchu.com.vn/the-loai/dien-van", page: "?page=", script: "gen.js"},
    {title: "Mạt Thế", input: "https://metruyenchu.com.vn/the-loai/mat-the", page: "?page=", script: "gen.js"},
    {title: "Linh Dị", input: "https://metruyenchu.com.vn/the-loai/linh-di", page: "?page=", script: "gen.js"},
    {title: "Nữ Cường", input: "https://metruyenchu.com.vn/the-loai/nu-cuong", page: "?page=", script: "gen.js"}
];

try {
    Response.success(JSON.stringify(data));
} catch(e) {
    return JSON.stringify({success: true, data: data});
}
