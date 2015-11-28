$def with (page)
$def body():
    <div style=""> <!--1st row layout-->
        <div style="float:left; width:721px;">
            <div style="background:url(/static/test_img/bg.jpg) bottom repeat-x; line-height:34px;">
                <span style="padding:5px; border-bottom: 2px solid; border-bottom-color:#218100; color:#333; font-family:'微软雅黑'; font-size:16px;">关于千知</span>
            </div>
            <div>
                <div style="float:left; margin:7px 12px 7px 7px;">
                    <img src="/static/test_img/school_intro.png" style="width:193px; height:135px;"/>
                </div>
                <div>
                <span style="line-height:2em; margin-bottom:5px; text-align:left; color:#333; font-size:12px;">　　千知教育始建于2010年，已有五年成熟运营模式。学校是由成都外国语学校骨干教师、重庆大学、电子科大、天津大学及四川大学高校教师队伍背景、五年以上培优资质教师、以及其他在职教师所搭建而成。截至2015年，千知教育在成都有西门白果林校区、东门建设路校区、以及南门科华中路校区，其中西门、东门校区为文化课培训校区，南门校区为艺体培训校区，在重庆有国际社区校区。
    <br/>
    　　千知教育各校区共拥有小初高各科在职和兼职教师三十余人，四年以来共培养学生数百人次。小学部共培养学生一百余人，其中获得小学奥赛、华杯赛一、二等奖者、进入成外实外西川等私立名校的毕业生超过了一半。初中部共培养学生三百余人，其中中考超重点线的比例学生超过了80%，更有大批学员获得全国初中数学联赛一、二等奖，考入成都四七九中，或者直升成外、实外本部。高中部共培养学员两百余人，超重点线比例超过60%，近半百的成都四七九高中部学生是千知教育的忠实粉丝，其中2013年由钟老师补习数学的来自成都七中高新的女生尹傲，因其优异的综合成绩及科技创新竞赛而保送北京大学。</span>
                </div>
            </div>
        </div>
        <div style="float:right; width:219px;">
            <div style="background:url(/static/test_img/bg.jpg) bottom repeat-x; line-height:34px;">
                <span style="padding:5px; border-bottom: 2px solid; border-bottom-color:#218100; color:#333; font-family:'微软雅黑'; font-size:16px;">最新动态</span>
            </div>
            <div style="font-size:12px; color:#333">
                <ul>
                    <li>初、高中各科OTO个性提分</li>
                    <li>初、高中各科3-5人保质小班</li>
                    <li>中考、高考冲刺班（可签约）</li>
                    <li>成实外直升特训（可签约）</li>
                    <li>四七九外地生考试特训（可签约）</li>
                    <li>理科竞赛及培优</li>
                    <li>初中数学联赛初二、初三组</li>
                    <li>信息学竞赛NOIP特训班</li>
                </ul>
            </div>
        </div>
    </div>
    <div style="clear:both;"> <!--2st row layout-->
        <div style="background:url(/static/test_img/bg.jpg) bottom repeat-x; line-height:34px;">
            <span style="padding:5px; border-bottom: 2px solid; border-bottom-color:#aa0004; color:#333; font-family:'微软雅黑'; font-size:16px;">学习天地</span>
        </div>
        <div>
            <table>
                <tr>
                    <td><img src="/static/test_img/study_show/study1.jpg" border="0" style="margin:9px" /></td>
                    <td><img src="/static/test_img/study_show/study2.jpg" border="0" style="margin:9px" /></td>
                    <td><img src="/static/test_img/study_show/study3.jpg" border="0" style="margin:9px" /></td>
                    <td><img src="/static/test_img/study_show/study4.jpg" border="0" style="margin:9px" /></td>
                    <td><img src="/static/test_img/study_show/study5.jpg" border="0" style="margin:9px" /></td>
                </tr>
                <tr>
                    <td><img src="/static/test_img/study_show/study6.jpg" border="0" style="margin:9px" /></td>
                    <td><img src="/static/test_img/study_show/study7.jpg" border="0" style="margin:9px" /></td>
                    <td><img src="/static/test_img/study_show/study8.jpg" border="0" style="margin:9px" /></td>
                    <td><img src="/static/test_img/study_show/study9.jpg" border="0" style="margin:9px" /></td>
                    <td><img src="/static/test_img/study_show/study10.jpg" border="0" style="margin:9px" /></td>
                </tr>
            </table>
        </div>
    </div>
$#-enddef

$:page.frame.html_wrapper(page, body())
