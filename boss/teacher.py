#coding: utf-8
import web
from model.page import Page

urls = ("/?", "Teacher",
        )

app = web.application(urls, globals());
render = web.template.render("template/");

class Teacher:
    def GET(self):
        page = Page();
        return render.teacher(page);

