function execute() {
    try {
        let list = [];

        // Lấy bid (book id)
        let bid = document.querySelector("input[name='bid']")?.getAttribute("value");
        if (!bid) {
            let m = document.documentElement.innerHTML.match(/page\((\d+),/);
            if (m) bid = m[1];
        }

        // Lấy tổng số trang chương từ phân trang
        let totalPage = 1;
        let lastPageLink = document.querySelector(".paging a[onclick*='page']:last-child, .paging a:last-child");
        if (lastPageLink) {
            let onclick = lastPageLink.getAttribute("onclick") || "";
            let m = onclick.match(/page\(\d+,\s*(\d+)\)/);
            if (m) {
                totalPage = parseInt(m[1], 10);
            }
        }

        if (bid) {
            for (let i = 1; i <= totalPage; i++) {
                list.push(`https://metruyenchu.com.vn/get/listchap/${bid}?page=${i}`);
            }
        } else {
            list.push(window.location.href);
        }

        Response.success(JSON.stringify(list));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
