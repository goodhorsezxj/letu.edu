$def with (page)
$def body():
            <div style="width:721px;margin:24px;">
                <div style="line-height:34px;">
                    <span style="padding:5px; border-bottom: 2px solid; border-bottom-color:#218100; color:#333; font-family:'微软雅黑'; font-size:16px;">信息学竞赛简介</span>
                </div>
                <div>
                    <span style="line-height:2em; margin-bottom:5px; text-align:left; color:#333; font-size:12px;"><p>　　全国青少年信息学奥林匹克联赛(National Olympiad in Informatics in Provinces简称NOIP)自1995年至今。每年由中国计算机学会统一组织。 NOIP在 同一时间、不同地点以各省市为单位由特派员组织。全国统一大纲、统一试卷。初、高中或其他中等专业学校的学生可报名参加联赛。联赛分初赛和复赛两个阶段。初赛考察通用和实用的计算机科学知识，以笔试为主。复赛为程序设计，须在计算机上调试完成。参加初赛者须达到一定分数线后才有资格参加复赛。联赛分普及组和提高组两个组别，难度不同，分别面向初中和高中阶段的学生。</p></span>
                </div>
            </div>
            <div style="width:721px;margin:48px 24px;"> <!--2st row layout-->
                <div style="line-height:34px;">
                    <span style="padding:5px; border-bottom: 2px solid; border-bottom-color:#aa0004; color:#333; font-family:'微软雅黑'; font-size:16px;">课程介绍</span>
                </div>
                <div>
                    <span style="line-height:2em; margin-bottom:5px; text-align:left; color:#333; font-size:12px;">
                    <p><strong>初级班课程：</strong>盲打速度，C语言学习，运算符与表达式，分支与循环，函数，数组和指针，计算机基础理论，模拟型题目专练，数据结构和算法概述</p>
                    <p><strong>中级班课程：</strong>递归，遍历，动态规划，排序，贪心法，栈，链表，二叉树，堆，树，图，后缀数组，线段树，网络流，数论</p>
                    <p><strong>高级班课程：</strong>各种高级算法选讲及各类难题专练，冲击奖项集训，目标为至少保省级二等奖</p>
                    </span>
                </div>
            </div>
            <div style="width:721px;margin:48px 24px;"> <!--2st row layout-->
                <div style="line-height:34px;">
                    <span style="padding:5px; border-bottom: 2px solid; border-bottom-color:#218100; color:#333; font-family:'微软雅黑'; font-size:16px;">相关网址</span>
                </div>
                <div>
                    <span style="line-height:2em; margin-bottom:5px; text-align:left; color:#333; font-size:12px;">
                    <ul>
                        <li><a href="/typing/0" target="_blank">编程打字速度练习</a></li>
                        <li><a href="http://oi.tju.edu.cn" target="_blank">天津大学TPC</a></li>
                        <li><a href="http://acm.zju.edu.cn" target="_blank">浙江大学ZOJ</a></li>
                        <li><a href="http://poj.org" target="_blank">北京大学POJ</a></li>
                        <li><a href="/static/noip/problems.txt">课程问题列表</a></li>
                    </ul>
                    </span>
                </div>
            </div>

$:page.frame.html_wrapper(page, body())
