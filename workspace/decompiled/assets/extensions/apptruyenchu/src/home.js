let data = [
    {title: "Mới Cập Nhật", input: "https://apptruyenchu.pro/truyen?sort=moi-cap-nhat", page: "&page=", script: "gen.js"},
    {title: "Xem Nhiều", input: "https://apptruyenchu.pro/truyen?sort=luot-doc", page: "&page=", script: "gen.js"},
    {title: "Đề Cử", input: "https://apptruyenchu.pro/truyen?sort=yeu-thich", page: "&page=", script: "gen.js"},
    {title: "Đã Hoàn Thành", input: "https://apptruyenchu.pro/truyen?status=hoan-thanh", page: "&page=", script: "gen.js"},
    {title: "Tiên Hiệp", input: "https://apptruyenchu.pro/truyen?cate=tien-hiep", page: "&page=", script: "gen.js"},
    {title: "Huyền Huyễn", input: "https://apptruyenchu.pro/truyen?cate=huyen-huyen", page: "&page=", script: "gen.js"},
    {title: "Đô Thị", input: "https://apptruyenchu.pro/truyen?cate=do-thi", page: "&page=", script: "gen.js"},
    {title: "Khoa Huyễn", input: "https://apptruyenchu.pro/truyen?cate=khoa-huyen", page: "&page=", script: "gen.js"},
    {title: "Hệ Thống", input: "https://apptruyenchu.pro/truyen?cate=he-thong", page: "&page=", script: "gen.js"},
    {title: "Dị Năng", input: "https://apptruyenchu.pro/truyen?cate=di-nang", page: "&page=", script: "gen.js"}
];

try {
    Response.success(JSON.stringify(data));
} catch(e) {
    return JSON.stringify({success: true, data: data});
}
