#coding: utf-8
import web
from model.page import Page

urls = ("/?", "Lesson",
        )

app = web.application(urls, globals());
render = web.template.render("template/");

class Lesson:
    def GET(self):
        page = Page();
        page.title = "课程设置"
        page.curnav = 2
        return render.lesson(page);

