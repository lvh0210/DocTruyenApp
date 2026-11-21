let data = [
    {title: "Tiên Hiệp", input: "https://apptruyenchu.pro/truyen?cate=tien-hiep", page: "&page=", script: "gen.js"},
    {title: "Huyền Huyễn", input: "https://apptruyenchu.pro/truyen?cate=huyen-huyen", page: "&page=", script: "gen.js"},
    {title: "Đô Thị", input: "https://apptruyenchu.pro/truyen?cate=do-thi", page: "&page=", script: "gen.js"},
    {title: "Khoa Huyễn", input: "https://apptruyenchu.pro/truyen?cate=khoa-huyen", page: "&page=", script: "gen.js"},
    {title: "Hệ Thống", input: "https://apptruyenchu.pro/truyen?cate=he-thong", page: "&page=", script: "gen.js"},
    {title: "Hài Hước", input: "https://apptruyenchu.pro/truyen?cate=hai-huoc", page: "&page=", script: "gen.js"},
    {title: "Dị Năng", input: "https://apptruyenchu.pro/truyen?cate=di-nang", page: "&page=", script: "gen.js"},
    {title: "Xuyên Không", input: "https://apptruyenchu.pro/truyen?cate=xuyen-khong", page: "&page=", script: "gen.js"},
    {title: "Trọng Sinh", input: "https://apptruyenchu.pro/truyen?cate=trong-sinh", page: "&page=", script: "gen.js"}
];

try {
    Response.success(JSON.stringify(data));
} catch(e) {
    return JSON.stringify({success: true, data: data});
}
