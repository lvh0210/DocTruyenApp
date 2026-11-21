function execute() {
    try {
        let novelList = [];

        let nextEl = document.querySelector(".btn-page.active + a.btn-page");
        let next = null;
        if (nextEl) {
            let m = nextEl.getAttribute("href")?.match(/page=(\d+)/);
            if (m) {
                next = Number(m[1]);
            }
        }

        document.querySelectorAll(".item, .itemupdate").forEach(e => {
            let titleEl = e.querySelector("h3 a, a.cover, h3");
            let linkEl = e.querySelector("a.cover, h3 a, a");
            let coverEl = e.querySelector("img");
            let authorEl = e.querySelector(".line a, .author a");

            let name = titleEl ? titleEl.textContent.trim() : "";
            let link = linkEl ? linkEl.getAttribute("href") : "";

            if (name && link) {
                let cover = coverEl ? (coverEl.getAttribute("src") || coverEl.getAttribute("data-src") || "") : "";
                if (cover && !cover.startsWith("http")) {
                    cover = "https://metruyenchu.com.vn" + cover;
                }
                novelList.push({
                    name: name,
                    link: link,
                    description: authorEl ? authorEl.textContent.trim() : "",
                    cover: cover,
                    host: "https://metruyenchu.com.vn"
                });
            }
        });

        Response.success(JSON.stringify({ success: true, data: novelList, next: next }));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
