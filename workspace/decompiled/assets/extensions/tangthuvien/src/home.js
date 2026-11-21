(function() {
    let data = [
        {title: "Truyện Mới Nhất", input: "https://tangthuvien.net/tong-hop?page=", page: "", script: "gen.js"},
        {title: "Truyện Hot", input: "https://tangthuvien.net/tong-hop?rank=uct&page=", page: "", script: "gen.js"},
        {title: "Tiên Hiệp", input: "https://tangthuvien.net/the-loai/truyen-tien-hiep?page=", page: "", script: "gen.js"},
        {title: "Kiếm Hiệp", input: "https://tangthuvien.net/the-loai/truyen-kiem-hiep?page=", page: "", script: "gen.js"},
        {title: "Ngôn Tình", input: "https://tangthuvien.net/the-loai/truyen-ngon-tinh?page=", page: "", script: "gen.js"},
        {title: "Đô Thị", input: "https://tangthuvien.net/the-loai/truyen-do-thi?page=", page: "", script: "gen.js"},
        {title: "Huyền Huyễn", input: "https://tangthuvien.net/the-loai/truyen-huyen-huyen?page=", page: "", script: "gen.js"},
        {title: "Dị Giới", input: "https://tangthuvien.net/the-loai/truyen-di-gioi?page=", page: "", script: "gen.js"},
        {title: "Xuyên Không", input: "https://tangthuvien.net/the-loai/truyen-xuyen-khong?page=", page: "", script: "gen.js"},
        {title: "Trọng Sinh", input: "https://tangthuvien.net/the-loai/truyen-trong-sinh?page=", page: "", script: "gen.js"},
        {title: "Trinh Thám", input: "https://tangthuvien.net/the-loai/truyen-trinh-tham?page=", page: "", script: "gen.js"},
        {title: "Đam Mỹ", input: "https://tangthuvien.net/the-loai/truyen-dam-my?page=", page: "", script: "gen.js"},
        {title: "Mạt Thế", input: "https://tangthuvien.net/the-loai/truyen-mat-the?page=", page: "", script: "gen.js"}
    ];

    try {
        Response.success(JSON.stringify(data));
    } catch(e) {
        return JSON.stringify({success: true, data: data});
    }
})()
