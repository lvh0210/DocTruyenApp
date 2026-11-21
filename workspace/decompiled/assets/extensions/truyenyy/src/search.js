(function() {
    // TruyenYY - parse kết quả tìm kiếm
    let list = [];

    document.querySelectorAll(".list-truyen .item, .col-xs-6 .item, .row .item").forEach(el => {
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

    try {
        Response.success(JSON.stringify(list));
    } catch(e) {
        return JSON.stringify({success: true, data: list});
    }
})()
