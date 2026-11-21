(function() {
    let data = [
        {title: "Tiên Hiệp", input: "https://truyenyy.vip/the-loai/tien-hiep?page=", page: "", script: "gen.js"},
        {title: "Kiếm Hiệp", input: "https://truyenyy.vip/the-loai/kiem-hiep?page=", page: "", script: "gen.js"},
        {title: "Ngôn Tình", input: "https://truyenyy.vip/the-loai/ngon-tinh?page=", page: "", script: "gen.js"},
        {title: "Đô Thị", input: "https://truyenyy.vip/the-loai/do-thi?page=", page: "", script: "gen.js"},
        {title: "Huyền Huyễn", input: "https://truyenyy.vip/the-loai/huyen-huyen?page=", page: "", script: "gen.js"},
        {title: "Dị Giới", input: "https://truyenyy.vip/the-loai/di-gioi?page=", page: "", script: "gen.js"},
        {title: "Khoa Huyễn", input: "https://truyenyy.vip/the-loai/khoa-huyen?page=", page: "", script: "gen.js"},
        {title: "Xuyên Không", input: "https://truyenyy.vip/the-loai/xuyen-khong?page=", page: "", script: "gen.js"},
        {title: "Xuyên Nhanh", input: "https://truyenyy.vip/the-loai/xuyen-nhanh?page=", page: "", script: "gen.js"},
        {title: "Trọng Sinh", input: "https://truyenyy.vip/the-loai/trong-sinh?page=", page: "", script: "gen.js"},
        {title: "Trinh Thám", input: "https://truyenyy.vip/the-loai/trinh-tham?page=", page: "", script: "gen.js"},
        {title: "Quân Sự", input: "https://truyenyy.vip/the-loai/quan-su?page=", page: "", script: "gen.js"},
        {title: "Lịch Sử", input: "https://truyenyy.vip/the-loai/lich-su?page=", page: "", script: "gen.js"},
        {title: "Dị Năng", input: "https://truyenyy.vip/the-loai/di-nang?page=", page: "", script: "gen.js"},
        {title: "Hệ Thống", input: "https://truyenyy.vip/the-loai/he-thong?page=", page: "", script: "gen.js"},
        {title: "Võng Du", input: "https://truyenyy.vip/the-loai/vong-du?page=", page: "", script: "gen.js"},
        {title: "Đam Mỹ", input: "https://truyenyy.vip/the-loai/dam-my?page=", page: "", script: "gen.js"},
        {title: "Bách Hợp", input: "https://truyenyy.vip/the-loai/bach-hop?page=", page: "", script: "gen.js"},
        {title: "Mạt Thế", input: "https://truyenyy.vip/the-loai/mat-the?page=", page: "", script: "gen.js"},
        {title: "Cung Đấu", input: "https://truyenyy.vip/the-loai/cung-dau?page=", page: "", script: "gen.js"},
        {title: "Điền Văn", input: "https://truyenyy.vip/the-loai/dien-van?page=", page: "", script: "gen.js"},
        {title: "Cổ Đại", input: "https://truyenyy.vip/the-loai/co-dai?page=", page: "", script: "gen.js"},
        {title: "Hài Hước", input: "https://truyenyy.vip/the-loai/hai-huoc?page=", page: "", script: "gen.js"},
        {title: "Nữ Cường", input: "https://truyenyy.vip/the-loai/nu-cuong?page=", page: "", script: "gen.js"},
        {title: "Linh Dị", input: "https://truyenyy.vip/the-loai/linh-di?page=", page: "", script: "gen.js"},
        {title: "Phương Tây", input: "https://truyenyy.vip/the-loai/phuong-tay?page=", page: "", script: "gen.js"},
        {title: "Nữ Phụ", input: "https://truyenyy.vip/the-loai/nu-phu?page=", page: "", script: "gen.js"},
        {title: "Light Novel", input: "https://truyenyy.vip/the-loai/light-novel?page=", page: "", script: "gen.js"},
        {title: "Việt Nam", input: "https://truyenyy.vip/the-loai/viet-nam?page=", page: "", script: "gen.js"}
    ];

    try {
        Response.success(JSON.stringify(data));
    } catch(e) {
        return JSON.stringify({success: true, data: data});
    }
})()
