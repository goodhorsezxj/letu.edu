#coding: utf-8
import web
import random
from model.page import Page

urls = ("/([0-9])?", "Typing",
        )

app = web.application(urls, globals());
render = web.template.render("template/");

def get_rand_text(level):
    levels = ["abcdefghijklmnopqrstuvwxyz",
        "0123456789",
        "!@#$%^&*();:,.<>/?",
        "-_=+[{]}\\|'\"",
    ]
    if level == 0:
        char_list = levels[0]
    elif level == 1:
        char_list = levels[1]
    elif level == 2:
        char_list = levels[0]+levels[1]
    elif level == 3:
        char_list = levels[2]
    elif level == 4:
        char_list = levels[1]+levels[2]
    elif level == 5:
        char_list = levels[3]
    elif level == 6:
        char_list = levels[0]+levels[3]
    elif level == 7:
        char_list = levels[0]+levels[1]+levels[2]+levels[3]
    L = len(char_list)
    res = []
    for i in range(800):
        c = char_list[random.randint(0, L-1)]
        res.append(c)
    return ''.join(res).replace("<!", ",!")

class Typing:
    def GET(self, level):
        page = Page();
        level = int(level)
        if level > 7:
            return "级别太高啦！"
        res = get_rand_text(level)
        return render.typing(page, text=res);

