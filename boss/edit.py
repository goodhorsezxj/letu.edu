#coding: utf8
import web
from model.page import Page

urls = ("/src/?", "EditPage",
        "/showwiki/?", "EditShowwiki",
        )

app = web.application(urls, globals())
render = web.template.render("template/")

class EditPage(object):
    def GET(self):
        page = Page()
        text = ''
        return render.edit_page(page, text)


class EditShowwiki(object):
    def POST(self):
        it = web.input(src_text='')
        src_text = it.src_text.encode('utf8')
        wiki_html = open("/home/null/qianzhi/data/empty.html").read().replace(
                "content_qianzhi_content", src_text)
        return wiki_html
