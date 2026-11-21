(function() {
    // TruyenYY - tạo URL danh sách chương phân trang
    let list = [];

    // Lấy tổng số trang từ phân trang
    let lastPageEl = document.querySelector(".pagination li:last-child a, .pagination li.last a");
    let totalPage = 1;

    if (lastPageEl) {
        let href = lastPageEl.getAttribute("href") || "";
        let m = href.match(/page=(\d+)/);
        if (m) totalPage = parseInt(m[1], 10);
    } else {
        // Thử đọc từ text phân trang
        let pageItems = document.querySelectorAll(".pagination li a");
        pageItems.forEach(a => {
            let p = parseInt(a.textContent.trim(), 10);
            if (!isNaN(p) && p > totalPage) totalPage = p;
        });
    }

    let baseUrl = window.location.href.split("?")[0];
    for (let i = 1; i <= totalPage; i++) {
        list.push(`${baseUrl}?page=${i}`);
    }

    try {
        Response.success(JSON.stringify(list));
    } catch(e) {
        return JSON.stringify({success: true, data: list});
    }
})()
