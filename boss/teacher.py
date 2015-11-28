#coding: utf-8
import web
from model.page import Page

urls = ("/?", "Teacher",
        "/([0-9]+)/?", "Notes",
        )

app = web.application(urls, globals());
render = web.template.render("template/");

class Teacher:
    def GET(self):
        page = Page();
        page.title = "名师介绍"
        page.curnav = 3
        return render.teacher(page);
    
class Notes:
    def GET(self, uid):
        page = Page()
        page.title = "教学视频"
        try:
            notes_html = open("%s/data/notes/%s/prod/1.txt" % (page.base_path, uid)).read()
        except:
            return 'None'
        return render.notes(page, notes_html)

