(function() {
    // TruyenYY - parse chi tiết truyện
    let genres = [];
    let suggests = [];

    // Thể loại
    document.querySelectorAll(".info-holder .info .label-title, .tag-list a[href*='the-loai']").forEach(el => {
        let title = el.textContent.trim();
        let href = el.getAttribute("href") || "";
        if (title && href && href.includes("the-loai")) {
            genres.push({
                title: title,
                input: href,
                page: "?page=",
                script: "gen.js"
            });
        }
    });

    // Cùng tác giả
    let authorEl = document.querySelector(".info-holder .info a[href*='tac-gia'], .author-content a");
    if (authorEl) {
        suggests.push({
            title: "Cùng tác giả",
            input: authorEl.getAttribute("href") || "",
            page: "?page=",
            script: "gen.js"
        });
    }

    let name = document.querySelector(".book-title h1, .title-truyen")?.textContent.trim()
        || document.querySelector("h1.title")?.textContent.trim() || "";

    let cover = document.querySelector(".book-info-cover img, .truyen-cover img")?.getAttribute("src") || "";

    let author = document.querySelector(".info-holder .info a[href*='tac-gia']")?.textContent.trim()
        || document.querySelector(".author-link")?.textContent.trim() || "";

    let description = document.querySelector(".book-intro p, .desc-text, .story-description")?.innerHTML || "";

    let statusText = document.querySelector(".info-holder .info .text-success, .status-flag")?.textContent || "";
    let ongoing = !statusText.toLowerCase().includes("hoàn");

    let data = {
        name: name,
        cover: cover,
        author: author,
        description: description,
        detail: "",
        ongoing: ongoing,
        genres: genres,
        suggests: suggests,
        host: "https://truyenyy.vip"
    };

    try {
        Response.success(JSON.stringify(data));
    } catch(e) {
        return JSON.stringify({success: true, data: data});
    }
})()
