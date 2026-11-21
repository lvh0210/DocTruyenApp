function execute() {
    try {
        let list = [];

        // Kiểm tra xem phản hồi là JSON API /get/listchap hay HTML trực tiếp
        let rawText = document.documentElement.innerText || document.body.textContent || "";
        try {
            let json = JSON.parse(rawText.trim());
            if (json && json.data) {
                let parser = new DOMParser();
                let doc = parser.parseFromString(json.data, "text/html");
                doc.querySelectorAll("li a").forEach(e => {
                    let name = e.textContent.trim();
                    let url = e.getAttribute("href");
                    if (name && url) {
                        list.push({
                            name: name,
                            url: url,
                            host: "https://metruyenchu.com.vn"
                        });
                    }
                });
            }
        } catch(err) {
            // Parse trực tiếp từ DOM nếu load từ trang web HTML
            document.querySelectorAll("#chapter-list li a, .list-chapter li a").forEach(e => {
                let name = e.textContent.trim();
                let url = e.getAttribute("href");
                if (name && url) {
                    list.push({
                        name: name,
                        url: url,
                        host: "https://metruyenchu.com.vn"
                    });
                }
            });
        }

        Response.success(JSON.stringify(list));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
