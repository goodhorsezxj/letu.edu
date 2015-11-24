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
        return render.noip(page);

