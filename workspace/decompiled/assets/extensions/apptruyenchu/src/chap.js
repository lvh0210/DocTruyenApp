function execute() {
    try {
        document.querySelectorAll("script, noscript, iframe, .ads, ins").forEach(el => el.remove());
        document.querySelectorAll("button, nav, .bottom-chapter-nav").forEach(el => el.remove());

        let chapterContent = "";
        let article = document.querySelector("article");
        if (article) {
            chapterContent = article.innerHTML;
        } else {
            // Lấy nội dung từ meta hoặc main content
            let metaDesc = document.querySelector("meta[name='description'], meta[property='og:description']");
            if (metaDesc) {
                chapterContent = `<p>${metaDesc.getAttribute('content').replace(/\n/g, '<br>')}</p>`;
            }
        }

        Response.success(JSON.stringify({ success: true, data: chapterContent }));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
