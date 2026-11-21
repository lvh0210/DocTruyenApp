(function() {
    let data = [
        {title: "Mới Cập Nhật", input: "https://truyenyy.vip/danh-sach-truyen?page=", page: "", script: "gen.js"},
        {title: "Truyện Hot", input: "https://truyenyy.vip/danh-sach-truyen?sort=luot-xem&page=", page: "", script: "gen.js"},
        {title: "Truyện Full", input: "https://truyenyy.vip/danh-sach-truyen?status=2&page=", page: "", script: "gen.js"},
        {title: "Tiên Hiệp", input: "https://truyenyy.vip/the-loai/tien-hiep?page=", page: "", script: "gen.js"},
        {title: "Kiếm Hiệp", input: "https://truyenyy.vip/the-loai/kiem-hiep?page=", page: "", script: "gen.js"},
        {title: "Ngôn Tình", input: "https://truyenyy.vip/the-loai/ngon-tinh?page=", page: "", script: "gen.js"},
        {title: "Đô Thị", input: "https://truyenyy.vip/the-loai/do-thi?page=", page: "", script: "gen.js"},
        {title: "Huyền Huyễn", input: "https://truyenyy.vip/the-loai/huyen-huyen?page=", page: "", script: "gen.js"},
        {title: "Xuyên Không", input: "https://truyenyy.vip/the-loai/xuyen-khong?page=", page: "", script: "gen.js"},
        {title: "Trọng Sinh", input: "https://truyenyy.vip/the-loai/trong-sinh?page=", page: "", script: "gen.js"},
        {title: "Đam Mỹ", input: "https://truyenyy.vip/the-loai/dam-my?page=", page: "", script: "gen.js"},
        {title: "Mạt Thế", input: "https://truyenyy.vip/the-loai/mat-the?page=", page: "", script: "gen.js"}
    ];

    try {
        Response.success(JSON.stringify(data));
    } catch(e) {
        return JSON.stringify({success: true, data: data});
    }
})()
