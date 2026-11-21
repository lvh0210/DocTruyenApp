let data = [
    {title: "Truyện Hot", input: "https://metruyenchu.com.vn/danh-sach/truyen-hot", page: "?page=", script: "gen.js"},
    {title: "Truyện Full", input: "https://metruyenchu.com.vn/danh-sach/truyen-full", page: "?page=", script: "gen.js"},
    {title: "Tiên Hiệp Hay", input: "https://metruyenchu.com.vn/danh-sach/truyen-tien-hiep-hay", page: "?page=", script: "gen.js"},
    {title: "Kiếm Hiệp Hay", input: "https://metruyenchu.com.vn/danh-sach/truyen-kiem-hiep-hay", page: "?page=", script: "gen.js"},
    {title: "Ngôn Tình Hay", input: "https://metruyenchu.com.vn/danh-sach/truyen-ngon-tinh-hay", page: "?page=", script: "gen.js"},
    {title: "Ngôn Tình Ngược", input: "https://metruyenchu.com.vn/danh-sach/truyen-ngon-tinh-nguoc", page: "?page=", script: "gen.js"},
    {title: "Ngôn Tình Sủng", input: "https://metruyenchu.com.vn/danh-sach/truyen-ngon-tinh-sung", page: "?page=", script: "gen.js"},
    {title: "Ngôn Tình Hài", input: "https://metruyenchu.com.vn/danh-sach/truyen-ngon-tinh-hai-huoc", page: "?page=", script: "gen.js"},
    {title: "Đam Mỹ Hay", input: "https://metruyenchu.com.vn/danh-sach/truyen-dam-my-hay", page: "?page=", script: "gen.js"},
    {title: "Đam Mỹ Hài", input: "https://metruyenchu.com.vn/danh-sach/truyen-dam-my-hai", page: "?page=", script: "gen.js"},
    {title: "Truyện Teen Hay", input: "https://metruyenchu.com.vn/danh-sach/truyen-teen-hay", page: "?page=", script: "gen.js"}
];

try {
    Response.success(JSON.stringify(data));
} catch(e) {
    return JSON.stringify({success: true, data: data});
}
