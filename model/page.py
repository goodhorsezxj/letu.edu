#coding: utf8
import web

class Page:
    def __init__(self):
        web.header('Content-Type', "text/html; charset=utf-8")
        self.frame = web.template.render("frame/")

