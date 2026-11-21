function execute() {
    try {
        // Xóa quảng cáo và element không liên quan
        document.querySelectorAll("script, noscript, iframe, .ads, .quangcao, ins, [class*='ads']").forEach(el => el.remove());
        document.querySelectorAll("button, #download-book, .chapter_control, .line-control").forEach(el => el.remove());

        // Nội dung chương nằm trong .chapter_wrap hoặc #vungdoc
        let chapterContent = "";
        let contentEl = document.querySelector("#vungdoc .chapter_wrap div:last-child") 
                     || document.querySelector(".chapter_wrap div") 
                     || document.querySelector("#vungdoc");

        if (contentEl) {
            // Lọc ra các đoạn văn <p>
            let ps = contentEl.querySelectorAll("p");
            if (ps.length > 0) {
                let htmlParts = [];
                ps.forEach(p => {
                    let text = p.innerHTML.trim();
                    if (text) htmlParts.push(`<p>${text}</p>`);
                });
                chapterContent = htmlParts.join("");
            } else {
                chapterContent = contentEl.innerHTML;
            }
        }

        Response.success(JSON.stringify({ success: true, data: chapterContent }));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
