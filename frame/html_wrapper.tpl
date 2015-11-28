$def with (page, body="", js="", onload="", nav="")
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.  org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
#navlist a {text-decoration: none; color:#333;}
#navlist a:hover {text-decoration: none; color:#936;}
#footer a {text-decoration: none; color:white;}
#footer a:hover {text-decoration: none; color:white;}
.itemSep {width:15px; height:38px; float:left; background:url(/static/test_img/sep.jpg) no-repeat; background-position: center;}
.colSep {width:2px; height:40px; right:9px; margin-top:40px; float:left; background:url(/static/test_img/bg14.gif) repeat-y;}
</style>
<title>${page.title}</title>
$if js:
    $:js
$#-endif
</head>
$if onload:
    <body style="padding:0px; margin:0px" onload="$:onload">
$else:
    <body style="padding:0px; margin:0px">
$#-endif
    <div style="height:104px; background:url(/static/test_img/head.jpg)">
        <div style="margin:22px 150px; float:left">
            <a href="/"><img src="/static/test_img/qianzhilogo.png" /></a>
        </div>
        <div style="margin-top:37px; margin-right:193px; margin-bottom:17px; float:right">
            <form>
            <input style="width:155px;height:24px;float:left" /><input type="image" src="/static/test_img/go.gif" onclick="this.form.submit()"/>
            </form>
        </div>
    </div>
    <div style="clear:both; height:0px"></div>
    <div style="border-bottom:0px solid; height:38px; background:url(/static/test_img/navbg.jpg)" id="navlist">
        <div style="margin-left:150px; height:100%; float:left">
            <div style="width:110px; height:100%; text-align:center">
                <a href="/"><span style="line-height:38px;font-size:14px;font-family:'微软雅黑';">
                $if page.curnav == 1:
                  <strong>首页</strong>
                $else:
                  首页
                </span></a>
            </div>
        </div>
      $for i in page.navlist:
        <div class="itemSep"></div>
        <div style="margin:0; height:100%; float:left">
          <div style="width:110px; height:100%; text-align:center">
            <a href="${i[0]}"><span style="line-height:38px;font-size:14px;font-family:'微软雅黑';">
            $if page.curnav - 1 == loop.index:
              <strong>${i[1]}</strong>
            $else:
              ${i[1]}
            </span></a>
          </div>
        </div>
      $if nav:
        <div class="itemSep"></div>
        <div style="margin:0; height:100%; float:left">
          <div style="width:110px; height:100%; text-align:center">
            <a href="javascript:void(0)"><span style="line-height:38px;font-size:14px;font-family:'微软雅黑';">
              <strong>${nav}</strong>
            </span></a>
          </div>
        </div>
    </div>
    $if page.curnav == 1:
        <div style="height:332px; background:url(/static/test_img/book.jpg) no-repeat; background-position: center; background-color:#efefef;">
        </div>
    <div style="background-color:#efefef;"> <!-- text show -->
    $if page.curnav == 1:
        <div style="width:960px; margin:auto;"> <!--center layout-->
    $else:
        <div style="width:960px; margin:auto; padding:24px;"> <!--center layout-->
    $:{body}
            <div style="clear:both; height:0"></div>
            <div style="border:1px solid; border-color:#e9d5c1; background-color:#f1ede2; margin: 10px 0;"> <!--3st row layout-->
                <div style="width:298px; height:80px; margin:6px 10px; float:left">
                    <img src="/static/test_img/idea_exp1.png" border="0" style="margin:5px; float:left" />
                    <span style="font-size:16px; color:#59493f; line-height:34px; " ><strong>优质师资</strong></span><br/>
                    <span style="line-height:1.8; color:#666; font-size:12px; clear:both">教师全部来自211高校，拥有多年教学<br/>
                    经验，根据学生特点量身制定辅导方案</span>
                </div>
                <div class="colSep"></div>
                <div style="width:298px; height:80px; margin:6px 10px; float:left">
                    <img src="/static/test_img/idea_exp2.png" border="0" style="margin:5px; float:left" />
                    <span style="font-size:16px; color:#59493f; line-height:34px; " ><strong>先进教学理念</strong></span><br/>
                    <span style="line-height:1.8; color:#666; font-size:12px; clear:both">学会学习、自觉学习、高效学习、<br/>
                    快乐学习这就是千知的目标</span>
                </div>
                <div class="colSep"></div>
                <div style="width:298px; height:80px; margin:6px 10px; float:left">
                    <img src="/static/test_img/idea_exp3.png" border="0" style="margin:5px; float:left" />
                    <span style="font-size:16px; color:#59493f; line-height:34px; " ><strong>创意思维</strong></span><br/>
                    <span style="line-height:1.8; color:#666; font-size:12px; clear:both">信息学竞赛培训与各理科竞赛培训，<br/>
                    培养学生创新能力，锻炼学科思维</span>
                </div>
                <div style="clear:both; height:0"></div>
            </div> <!--3st row layout-->
        </div> <!--center layout-->
    </div> <!--text show-->
    <div style="background-color:#494949;text-align:center;color:white;font-size:12px;padding:10px" id="footer"> <!--footer-->
      <div style="font-family:'微软雅黑'"><a href="/">首页</a> |
        <a href="/about">关于我们</a> |
        <a href="/about#contact">联系我们</a>
      </div>
      <div style="font-family:Arial,Helvetica,sans-serif">&copy; 2015 qianzhi.org, all rights reserved &nbsp; 千知教育版权所有</div>
    </div>  <!--footer-->
</body>
</html>
