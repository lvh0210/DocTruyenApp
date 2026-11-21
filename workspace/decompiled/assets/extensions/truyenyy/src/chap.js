(function() {
    // TruyenYY - parse nội dung chương
    document.querySelectorAll("script, noscript, iframe, .ads-responsive, .quangcao, ins, [class*='adsbygoogle']").forEach(el => el.remove());

    let content = document.querySelector("#chapter-content")?.innerHTML
        || document.querySelector(".chapter-content")?.innerHTML
        || document.querySelector(".content-story")?.innerHTML
        || document.querySelector(".box-reading-chapter")?.innerHTML
        || "";

    try {
        Response.success(JSON.stringify({data: content}));
    } catch(e) {
        return JSON.stringify({success: true, data: content});
    }
})()
