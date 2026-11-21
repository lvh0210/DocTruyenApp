function execute() {
    try {
        let novelList = [];

        // Tìm link truyện
        document.querySelectorAll("a[href^='/truyen/']").forEach(e => {
            let h2 = e.querySelector("h2");
            let img = e.querySelector("img");
            let href = e.getAttribute("href") || "";

            // Chỉ lấy các thẻ truyện cha (không lấy link chương chuong-...)
            if (h2 && href && !href.includes("/chuong-")) {
                let name = h2.textContent.trim();
                let cover = img ? (img.getAttribute("src") || img.getAttribute("srcset") || "") : "";
                if (cover.includes("?url=")) {
                    try {
                        let parsed = decodeURIComponent(cover.split("?url=")[1].split("&")[0]);
                        cover = parsed;
                    } catch(err) {}
                }
                novelList.push({
                    name: name,
                    link: href,
                    description: "",
                    cover: cover,
                    host: "https://apptruyenchu.pro"
                });
            }
        });

        // Xóa trùng lặp theo link
        let seen = new Set();
        let uniqueList = [];
        novelList.forEach(item => {
            if (!seen.has(item.link)) {
                seen.add(item.link);
                uniqueList.push(item);
            }
        });

        Response.success(JSON.stringify({ success: true, data: uniqueList, next: null }));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
