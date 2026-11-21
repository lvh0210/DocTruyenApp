(function() {
    let data = [
        {title: "Tiên Hiệp", input: "https://tangthuvien.net/the-loai/truyen-tien-hiep?page=", page: "", script: "gen.js"},
        {title: "Kiếm Hiệp", input: "https://tangthuvien.net/the-loai/truyen-kiem-hiep?page=", page: "", script: "gen.js"},
        {title: "Ngôn Tình", input: "https://tangthuvien.net/the-loai/truyen-ngon-tinh?page=", page: "", script: "gen.js"},
        {title: "Đô Thị", input: "https://tangthuvien.net/the-loai/truyen-do-thi?page=", page: "", script: "gen.js"},
        {title: "Huyền Huyễn", input: "https://tangthuvien.net/the-loai/truyen-huyen-huyen?page=", page: "", script: "gen.js"},
        {title: "Dị Giới", input: "https://tangthuvien.net/the-loai/truyen-di-gioi?page=", page: "", script: "gen.js"},
        {title: "Khoa Huyễn", input: "https://tangthuvien.net/the-loai/truyen-khoa-huyen?page=", page: "", script: "gen.js"},
        {title: "Quân Sự", input: "https://tangthuvien.net/the-loai/truyen-quan-su?page=", page: "", script: "gen.js"},
        {title: "Lịch Sử", input: "https://tangthuvien.net/the-loai/truyen-lich-su?page=", page: "", script: "gen.js"},
        {title: "Xuyên Không", input: "https://tangthuvien.net/the-loai/truyen-xuyen-khong?page=", page: "", script: "gen.js"},
        {title: "Trọng Sinh", input: "https://tangthuvien.net/the-loai/truyen-trong-sinh?page=", page: "", script: "gen.js"},
        {title: "Trinh Thám", input: "https://tangthuvien.net/the-loai/truyen-trinh-tham?page=", page: "", script: "gen.js"},
        {title: "Dị Năng", input: "https://tangthuvien.net/the-loai/truyen-di-nang?page=", page: "", script: "gen.js"},
        {title: "Hệ Thống", input: "https://tangthuvien.net/the-loai/truyen-he-thong?page=", page: "", script: "gen.js"},
        {title: "Võng Du", input: "https://tangthuvien.net/the-loai/truyen-vong-du?page=", page: "", script: "gen.js"},
        {title: "Đam Mỹ", input: "https://tangthuvien.net/the-loai/truyen-dam-my?page=", page: "", script: "gen.js"},
        {title: "Bách Hợp", input: "https://tangthuvien.net/the-loai/truyen-bach-hop?page=", page: "", script: "gen.js"},
        {title: "Mạt Thế", input: "https://tangthuvien.net/the-loai/truyen-mat-the?page=", page: "", script: "gen.js"},
        {title: "Cung Đấu", input: "https://tangthuvien.net/the-loai/truyen-cung-dau?page=", page: "", script: "gen.js"},
        {title: "Điền Văn", input: "https://tangthuvien.net/the-loai/truyen-dien-van?page=", page: "", script: "gen.js"},
        {title: "Cổ Đại", input: "https://tangthuvien.net/the-loai/truyen-co-dai?page=", page: "", script: "gen.js"},
        {title: "Truyện Teen", input: "https://tangthuvien.net/the-loai/truyen-teen?page=", page: "", script: "gen.js"},
        {title: "Hài Hước", input: "https://tangthuvien.net/the-loai/truyen-hai-huoc?page=", page: "", script: "gen.js"},
        {title: "Nữ Cường", input: "https://tangthuvien.net/the-loai/truyen-nu-cuong?page=", page: "", script: "gen.js"},
        {title: "Xuyên Nhanh", input: "https://tangthuvien.net/the-loai/truyen-xuyen-nhanh?page=", page: "", script: "gen.js"}
    ];

    try {
        Response.success(JSON.stringify(data));
    } catch(e) {
        return JSON.stringify({success: true, data: data});
    }
})()
