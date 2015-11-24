#!/usr/bin/python
import sys
sys.path.insert(0, "lib/")
import web
from boss import site, about, typing, teacher, lesson, noip

web.config.debug = False

urls = ("/", site.SiteHome,
        "/about", about.app,
        "/typing", typing.app,
        "/teacher", teacher.app,
        "/lesson", lesson.app,
        "/noip", noip.app,
        )

app = web.application(urls, globals())

if __name__ == "__main__":
    app.run()

