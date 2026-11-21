(function() {
    // TruyenYY - parse danh sách truyện
    // Cấu trúc: .list-truyen .row .col-xs-6 .item hoặc .list-truyen-title-cover
    let list = [];

    // Thử selector chính
    document.querySelectorAll(".list-truyen .item, .col-xs-6 .item, .list-truyen > div").forEach(el => {
        let titleEl = el.querySelector(".truyen-title, h3 a, h4 a, a.truyen-title");
        let coverEl = el.querySelector("img");

        if (!titleEl) return;
        let title = titleEl.textContent.trim();
        let url = titleEl.getAttribute("href") || el.querySelector("a")?.getAttribute("href") || "";
        let cover = coverEl ? (coverEl.getAttribute("data-original") || coverEl.getAttribute("data-src") || coverEl.getAttribute("src") || "") : "";

        if (title && url) {
            list.push({
                name: title,
                cover: cover,
                input: url,
                script: "detail.js"
            });
        }
    });

    // Fallback selector
    if (list.length === 0) {
        document.querySelectorAll(".list-truyen-title-cover, .story-item").forEach(el => {
            let titleEl = el.querySelector("a");
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
