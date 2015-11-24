#coding: utf8
import web
from model.page import Page

urls = ("", "SiteHome",
        )

app = web.application(urls, globals());
render = web.template.render("template/");

class SiteHome:
    def GET(self):
        page = Page()
        return render.site(page)

