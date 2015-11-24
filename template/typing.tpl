$def with (page, text="")
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.  org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>千知教育 - 打字训练</title>
    <link rel="stylesheet" type="text/css" href="http://www.liangxia.com/static/bootstrap/css/bootstrap.css" media="screen" />
<script type="text/javascript">
var idx = 0;
var N = 100;

function checkdown(e)
{
    if (!e) e = window.event;
    var key = e.which ? e.which : e.keyCode;
    return true;
}

function htmlrplc(s)
{
    s = s.replace(/</, "&lt;");
    s = s.replace(/>/, "&gt;");
    return s;
}

function handle_onload()
{
    document.getElementById("inputarea").select();
}

function checkup(e)
{
    var fulltext = document.copybook.fulltext.value;
    var ans = fulltext.substr(idx*8, 8);
    var s = document.copybook.copyarea.value;
    var lastc = s.charAt(s.length-1);
    if (lastc == '\n') {
        document.copybook.copyarea.value = s = "";
        prename = "copyfrom" + idx;
        document.getElementById(prename).style.display = "none";
        idx = (idx+1)%N;
        prename = "copyfrom" + idx;
        document.getElementById(prename).style.display = "block";
    }
    if (ans.substr(0, s.length) == s) {
        document.getElementById("copyshow").innerHTML = htmlrplc(s);
        if (ans == s) {
            document.getElementById("copyshow").innerHTML = '<font color="blue">' + htmlrplc(s) + '</font>';
        } 
    } else {
        document.getElementById("copyshow").innerHTML = '<font color="red">' + htmlrplc(s) + '</font>';
    }
    return true;
}
</script>
</head>
<body onload="handle_onload();">
    <div class="container">
    <div class="row">
        <div class="col-md-7">
            <p>&nbsp;</p>
            <div style="font-size:18px">编程打字训练</div>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <pre style="font-size:40px" id="copyfrom0"><div>${text[0:8]}</div></pre>
            $for i in range(1, 100):
                <pre style="font-size:40px; display:none" id="copyfrom${i}"><div>${text[i*8:(i*8+8)].replace('<','&lt;').replace('>','&gt;')}</div></pre>
            <pre style="font-size:40px"><div id="copyshow"></div></pre>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <form name="copybook" method="POST">
                <fieldset>
                <textarea OnKeyDown="return checkdown(event);" OnKeyUp="return checkup(event);" name="copyarea" id="inputarea" style="width:400px"></textarea><br/>
                <textarea name="fulltext" style="display:none">$text</textarea>
                </fieldset>
            </form>
        </div>
    </div>
    <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p>
    <div style="font-family:Arial,Helvetica,sans-serif">&copy; 2015 qianzhi.org, all rights reserved &nbsp; 千知教育版权所有</div>
    </div>
</body>
</html>
