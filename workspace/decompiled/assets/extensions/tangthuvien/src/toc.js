(function() {
    // Tàng Thư Viện - parse danh sách chương từ API JSON hoặc HTML
    // API: https://tangthuvien.net/story/chapters?story_id=<id>&page=<n>
    // Response: JSON {data: [{chap_name, id}]}  hoặc HTML list

    let list = [];

    try {
        // Thử parse JSON response (từ API endpoint)
        let rawText = document.documentElement.innerText || document.documentElement.textContent;
        let json = JSON.parse(rawText.trim());

        let items = json.data || json.chapters || json || [];
        if (Array.isArray(items)) {
            items.forEach(item => {
                let name = item.chap_name || item.name || item.chapter_name || "";
                let id = item.id || item.chap_id || "";
                if (name) {
                    list.push({
                        name: name.trim(),
                        url: String(id),
                        host: "https://tangthuvien.net"
                    });
                }
            });
        }
    } catch(e) {
        // Fallback: parse HTML chapter list
        document.querySelectorAll(".chapter-list li a, .list-chapter li a, ul.cf li a").forEach(el => {
            let name = el.textContent.trim();
            let href = el.getAttribute("href") || "";
            if (name && href) {
                list.push({
                    name: name,
                    url: href,
                    host: "https://tangthuvien.net"
                });
            }
        });
    }

    try {
        Response.success(JSON.stringify(list));
    } catch(err) {
        return JSON.stringify({success: true, data: list});
    }
})()
