(function() {
    // TruyenYY - parse danh sách chương
    let list = [];

    document.querySelectorAll(".list-chapter li a, .chapter-list li a, #list-chapter li a").forEach(el => {
        let name = el.textContent.trim();
        let href = el.getAttribute("href") || "";
        if (name && href) {
            list.push({
                name: name,
                url: href,
                host: "https://truyenyy.vip"
            });
        }
    });

    try {
        Response.success(JSON.stringify(list));
    } catch(e) {
        return JSON.stringify({success: true, data: list});
    }
})()
