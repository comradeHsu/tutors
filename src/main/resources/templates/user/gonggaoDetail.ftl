<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
    <meta http-equiv="description" content="This is my page" />

    <link href="${request.contextPath}/css/layout.css" type="text/css" rel="stylesheet" />
    <link href="${request.contextPath}/css/layer.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" src="${request.contextPath}/js/public.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layer.js" type="text/javascript"></script>
    <script type="text/javascript">

    </script>
</head>

<body stype="background:url(img/img.jpg)">
<#include "incTop.ftl">
<div class="page_row">
    <div class="page_main_msg left">
        <div class="left_row">
            <div class="list pic_news">
                <div class="list_bar">&nbsp;导航</div>
                <div class="ctitle ctitle1">${info.title!}</div>
                <div class="pbox">${info.content!}</div>

                <div class="arti_ref">
                </div>
            </div>
        </div>
    </div>

    <!-- 右边的用户登录。留言。投票 -->
    <div class="page_other_msg right">
        <div class="left_row
">
            <div class="list">
                <div class="list_bar">用户登录</div>
                <div class="list_content">
                    <div id="div">
                    <#include "login.ftl">
                    </div>
                </div>
            </div>
        </div>
        <div class="left_row">
            <div class="list">
                <div class="list_bar">网站公告</div>
                <div class="list_content">
                    <div id="div">

                    </div>
                </div>
            </div>
        </div>
        <div class="left_row">
            <div class="list">
                <div class="list_bar">天气</div>
                <div class="list_content">
                    <iframe width="255" scrolling="no" height="20" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=11&icon=1&num=1"></iframe>
                    <iframe width="258" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- 右边的用户登录。留言。投票 -->
</div>

<div class="foot">
<#include "incFoot.ftl">
</div>
</body>
</html>
