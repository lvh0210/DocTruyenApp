(function() {
    // Tàng Thư Viện - parse danh sách truyện từ trang listing
    // Cấu trúc HTML: .book-img-text ul li
    let list = [];

    document.querySelectorAll(".book-img-text ul li").forEach(el => {
        let titleEl = el.querySelector("h4 a") || el.querySelector(".book-mid-info h4 a");
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

    // Fallback: cấu trúc trang tổng hợp
    if (list.length === 0) {
        document.querySelectorAll(".story-item, .book-item, .col-content .book-list li").forEach(el => {
            let titleEl = el.querySelector("a.story-name") || el.querySelector("h3 a") || el.querySelector("a");
            let coverEl = el.querySelector("img");

            if (!titleEl) return;
            list.push({
                name: titleEl.textContent.trim(),
                cover: coverEl ? (coverEl.getAttribute("data-src") || coverEl.getAttribute("src") || "") : "",
                input: titleEl.getAttribute("href") || "",
                script: "detail.js"
            });
        });
    }

    try {
        Response.success(JSON.stringify(list));
    } catch(e) {
        return JSON.stringify({success: true, data: list});
    }
})()
