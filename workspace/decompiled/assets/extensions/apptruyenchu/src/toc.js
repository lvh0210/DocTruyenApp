function execute() {
    try {
        let list = [];

        document.querySelectorAll("a[href*='/chuong-']").forEach(e => {
            let name = e.textContent.trim();
            let url = e.getAttribute("href");
            if (name && url) {
                list.push({
                    name: name,
                    url: url,
                    host: "https://apptruyenchu.pro"
                });
            }
        });

        // Xóa trùng lặp
        let seen = new Set();
        let uniqueList = [];
        list.forEach(item => {
            if (!seen.has(item.url)) {
                seen.add(item.url);
                uniqueList.push(item);
            }
        });

        Response.success(JSON.stringify(uniqueList));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
