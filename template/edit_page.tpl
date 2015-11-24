$def with (page, text)
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="renderer" content="webkit">
    <title>Edit Page</title>
    <script src="/static/bootstrap/jquery.min.js"></script>
    <script src="/static/bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/static/bootstrap/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div>&nbsp;</div>
                <form class="form-signin" role="form" action="/edit/showwiki" method="POST" target="_blank">
                    <p>页面标题：</p>
                    　<input type="text" /><br/><br/>
                    <p>源代码：</p>
                    <div class="col-md-12">
                        <textarea name="src_text" rows="8" cols="75">$text</textarea>
                    </div>
                    <div>&nbsp;</div>
                    <p>网页代码：</p>
                    <div class="col-md-12">
                        <textarea name="src_text" rows="8" cols="75">$text</textarea>
                    </div>
                    <div>&nbsp;</div>
                    <div class="col-md-3">
                        <button class="btn btn-sm btn-primary btn-block" type="submit">提交修改</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
