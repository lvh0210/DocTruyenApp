(function() {
    // Tàng Thư Viện - parse chi tiết truyện
    // URL: https://tangthuvien.net/doc-truyen/<slug>
    let genres = [];
    let suggests = [];

    // Thu thập thể loại
    document.querySelectorAll(".book-information .tag a, .classify-detail .tag a").forEach(el => {
        let title = el.textContent.trim();
        let href = el.getAttribute("href") || "";
        if (title && href) {
            genres.push({
                title: title,
                input: href,
                page: "?page=",
                script: "gen.js"
            });
        }
    });

    // Tên tác giả để gợi ý truyện cùng tác giả
    let authorEl = document.querySelector(".book-information .author a, .tag a.notranslate");
    if (authorEl) {
        let authorHref = authorEl.getAttribute("href");
        if (authorHref && authorHref.includes("tac-gia")) {
            suggests.push({
                title: "Cùng tác giả",
                input: authorHref,
                page: "?page=",
                script: "gen.js"
            });
        }
    }

    let name = document.querySelector(".book-information h1")?.textContent.trim()
        || document.querySelector(".truyen-title")?.textContent.trim() || "";

    let cover = document.querySelector(".book-information .book-img img")?.getAttribute("src")
        || document.querySelector(".book-img img")?.getAttribute("src") || "";

    let author = document.querySelector(".book-information .tag a.notranslate")?.textContent.trim()
        || document.querySelector(".author a")?.textContent.trim() || "";

    let description = document.querySelector("#story-detail-info, .book-intro p, .desc")?.innerHTML || "";

    // Trạng thái: đang ra hay hoàn
    let statusText = document.querySelector(".book-information .status")?.textContent || "";
    let ongoing = !statusText.includes("Hoàn");

    let data = {
        name: name,
        cover: cover,
        author: author,
        description: description,
        detail: "",
        ongoing: ongoing,
        genres: genres,
        suggests: suggests,
        host: "https://tangthuvien.net"
    };

    try {
        Response.success(JSON.stringify(data));
    } catch(e) {
        return JSON.stringify({success: true, data: data});
    }
})()
