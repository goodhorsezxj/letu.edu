#coding: utf8
import web

class Page:
    def __init__(self):
        web.header('Content-Type', "text/html; charset=utf-8")
        self.frame = web.template.render("frame/")
        self.title = ""
        self.navlist = [("/lesson", "课程设置"), ("/teacher", "名师介绍"), ("/noip", "信息学竞赛培训"), ("/about", "关于千知")]
        self.curnav = 0
        self.base_path = "BASE_PATH"

