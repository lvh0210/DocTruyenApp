(function() {
    // Tàng Thư Viện - tạo danh sách URL các trang TOC (phân trang AJAX)
    // Tàng Thư Viện dùng API: /story/chapters?story_id=<id>
    // story_id được lấy từ attribute data-sid hoặc input hidden

    let list = [];

    // Lấy story ID từ DOM
    let storyId = document.querySelector("#story-detail")?.getAttribute("data-type")
        || document.querySelector("input[name='story_id']")?.getAttribute("value")
        || document.querySelector("[data-id]")?.getAttribute("data-id")
        || "";

    // Đếm số trang chương
    let totalPageEl = document.querySelector(".volume-header + ul li:last-child a, .chapter-list-page a:last-child");
    let totalPage = 1;

    if (totalPageEl) {
        let pageHref = totalPageEl.getAttribute("href") || "";
        let match = pageHref.match(/page=(\d+)/);
        if (match) totalPage = parseInt(match[1], 10);
    }

    // Nếu có story_id, dùng API phân trang
    if (storyId) {
        for (let i = 1; i <= totalPage; i++) {
            list.push(`https://tangthuvien.net/story/chapters?story_id=${storyId}&page=${i}`);
        }
    } else {
        // Fallback: URL hiện tại với phân trang
        let currentUrl = window.location.href.split("?")[0];
        for (let i = 1; i <= totalPage; i++) {
            list.push(`${currentUrl}?page=${i}`);
        }
    }

    try {
        Response.success(JSON.stringify(list));
    } catch(e) {
        return JSON.stringify({success: true, data: list});
    }
})()
