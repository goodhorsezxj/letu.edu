$def with (page, notes_html)
$def body():
            <div style="width:700px;margin:24px;">
                <div style="line-height:34px;">
                    <span style="padding:5px; border-bottom: 2px solid; border-bottom-color:#aa0004; color:#333; font-family:'微软雅黑'; font-size:16px;">教学视频</span>
                </div>
                <div>
                    <span style="line-height:2em; margin-bottom:5px; text-align:left; color:#333; font-size:12px;">
                        $:notes_html
                    </span>
                </div>
            </div>

$:page.frame.html_wrapper(page, body(), nav="教学视频")
