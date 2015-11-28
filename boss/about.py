#coding: utf-8
import web
from model.page import Page

urls = ("/?", "About",
        )

app = web.application(urls, globals());
render = web.template.render("template/");

class About:
    def GET(self):
        page = Page();
        page.title = "关于千知 | 联系我们"
        page.curnav = 5
        return render.about(page);

