#coding: utf-8
import web
from model.page import Page

urls = ("/?", "Noip",
        )

app = web.application(urls, globals());
render = web.template.render("template/");

class Noip:
    def GET(self):
        page = Page();
        page.title = "信息学竞赛培训"
        page.curnav = 4
        return render.noip(page);

