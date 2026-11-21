(function() {
    // Tàng Thư Viện - parse kết quả tìm kiếm
    // URL: https://tangthuvien.net/ket-qua-tim-kiem?term=<keyword>&page=<n>
    let list = [];

    document.querySelectorAll(".book-img-text ul li, .list-book li").forEach(el => {
        let titleEl = el.querySelector("h4 a") || el.querySelector(".book-mid-info h4 a") || el.querySelector("a.truyen-title");
        let coverEl = el.querySelector("img");
        let authorEl = el.querySelector(".book-mid-info p.author a") || el.querySelector(".author a");

        if (!titleEl) return;

        let title = titleEl.textContent.trim();
        let url = titleEl.getAttribute("href") || "";
        let cover = coverEl ? (coverEl.getAttribute("data-src") || coverEl.getAttribute("src") || "") : "";
        let author = authorEl ? authorEl.textContent.trim() : "";

        if (title) {
            list.push({
                name: title,
                cover: cover,
                input: url,
                author: author,
                script: "detail.js"
            });
        }
    });

    try {
        Response.success(JSON.stringify(list));
    } catch(e) {
        return JSON.stringify({success: true, data: list});
    }
})()
