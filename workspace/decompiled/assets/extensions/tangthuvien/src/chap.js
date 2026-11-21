(function() {
    // Tàng Thư Viện - parse nội dung chương
    // URL: https://tangthuvien.net/doc-truyen/<slug>/chuong-<n>

    // Xóa quảng cáo và script nhiễu
    document.querySelectorAll("script, noscript, iframe, .ads, .quangcao, ins, [class*='ads'], [id*='ads']").forEach(el => el.remove());

    // Lấy nội dung chương
    let content = document.querySelector(".chapter-c")?.innerHTML
        || document.querySelector("#chapter-content")?.innerHTML
        || document.querySelector(".content-story")?.innerHTML
        || document.querySelector(".read-content")?.innerHTML
        || "";

    // Làm sạch nội dung
    if (content) {
        // Tạo element tạm để xử lý
        let tmp = document.createElement("div");
        tmp.innerHTML = content;
        // Xóa thêm ads bên trong
        tmp.querySelectorAll("script, .ads, ins, [class*='ads']").forEach(el => el.remove());
        content = tmp.innerHTML;
    }

    try {
        Response.success(JSON.stringify({data: content}));
    } catch(e) {
        return JSON.stringify({success: true, data: content});
    }
})()
