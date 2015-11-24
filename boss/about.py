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
        return render.about(page);

