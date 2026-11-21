function execute() {
    try {
        let genres = [];
        document.querySelectorAll("a[href*='cate=']").forEach(e => {
            let title = e.textContent.trim();
            let href = e.getAttribute("href") || "";
            if (title && href) {
                genres.push({
                    title: title,
                    input: href.startsWith("http") ? href : ("https://apptruyenchu.pro" + href),
                    script: "gen.js"
                });
            }
        });

        let name = document.querySelector("h1, h2.text-xl, title")?.textContent.trim() || "";
        let cover = document.querySelector("img[alt]")?.getAttribute("src") || "";
        if (cover.includes("?url=")) {
            try {
                cover = decodeURIComponent(cover.split("?url=")[1].split("&")[0]);
            } catch(e) {}
        }

        let descEl = document.querySelector("article");
        let description = descEl ? descEl.innerHTML : "";

        Response.success(JSON.stringify({
            name: name,
            cover: cover,
            author: "",
            description: description,
            detail: "",
            ongoing: true,
            genres: genres,
            suggests: [],
            host: "https://apptruyenchu.pro"
        }));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
