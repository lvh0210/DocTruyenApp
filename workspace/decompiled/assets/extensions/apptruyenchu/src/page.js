function execute() {
    try {
        let list = [window.location.href];
        Response.success(JSON.stringify(list));
    } catch (error) {
        Response.error(JSON.stringify({ success: false, error: error.message }));
    }
}
execute();
