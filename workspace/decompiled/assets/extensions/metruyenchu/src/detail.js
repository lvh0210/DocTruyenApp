function execute() {
    try {
        let genres = [];
        document.querySelectorAll(".li--genres a, a[href*='/the-loai/']").forEach(e => {
            let title = e.textContent.trim().replace(/,/g, "").trim();
            let href = e.getAttribute("href") || "";
            if (title && href) {
                genres.push({
                    title: title,
                    input: href.startsWith("http") ? href : ("https://metruyenchu.com.vn" + href),
                    script: "gen.js"
                });
            }
        });

        let authorEl = document.querySelector("a[itemprop=author], .book-info-text b:contains('Tác giả') + a");
        let suggests = [];
        if (authorEl) {
            let authorHref = authorEl.getAttribute("href") || "";
            suggests.push({
                title: "Cùng tác giả",
                input: authorHref.startsWith("http") ? authorHref : ("https://metruyenchu.com.vn" + authorHref),
                script: "gen.js"
            });
        }

        let name = document.querySelector("h1[itemprop=name], h1")?.textContent.trim() || "";
        let cover = document.querySelector(".book-info-pic img, img[itemprop=image]")?.getAttribute("src") || "";
        if (cover && !cover.startsWith("http")) {
            cover = "https://metruyenchu.com.vn" + cover;
        }

        let author = document.querySelector("a[itemprop=author]")?.textContent.trim() || "";
        let description = document.querySelector("div[itemprop=description]")?.innerHTML || "";
        let statusText = document.querySelector(".label-status")?.textContent || "";
        let ongoing = !statusText.includes("Hoàn");

        Response.success(JSON.stringify({
            name: name,
            cover: cover,
            author: author,
            description: description,
            detail: "",
            ongoing: ongoing,
            genres: genres,
            suggests: suggests,
            host: "https://metruyenchu.com.vn"
        }));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
