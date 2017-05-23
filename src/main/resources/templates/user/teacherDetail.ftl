<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
    <meta http-equiv="description" content="This is my page" />

    <link href="${request.contextPath}/css/layout.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" src="${request.contextPath}/js/public.js" type="text/javascript"></script>
    <script type="text/javascript" src="${request.contextPath}/js/popup_shuaxin_no.js"></script>
    <script type="text/javascript">
        function yuyue_jiaoyuan(id)
        {
            var type = '${Session["type"]!""}';
            if(type=="" || type == null){
                layer.alert("您还没有登录",{
                    title:"提示",
                })
                return;
            }
            if(type == "1"){
                layer.alert("很抱歉，您是教员，不能预约教员",{
                    title:"提示",
                })
                return;
            }
            if(type == "2"){
                layer.open({
                    type: 1,
                    skin: 'layui-layer-rim', //加上边框
                    area: ['350px', '200px'], //宽高
                    content: '<form action="" name="form1" id="form1" method="get">'
                    +'<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">'
                    +'<tr>'
                    +'<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                    +'预约教员ID：'
                    +'</td>'
                    +'<td width="80%" bgcolor="#FFFFFF">'
                    +'   &nbsp;'
                    +'<input type="text" name="teacherId" readonly="readonly" value="'+id+'"/>'
                    +'</td>'
                    +'</tr>'
                    +'<tr>'
                    +'<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                    +'    你的联系方式：'
                    +'</td>'
                    +'<td width="80%" bgcolor="#FFFFFF">'
                    +'    &nbsp;'
                    +'<input type="text" name="phone" maxlength="50"/>'
                    +'    </td>'
                    +'    </tr>'
                    +'    <tr>'
                    +'    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                    +'    预约说明：'
                    +'</td>'
                    +'<td bgcolor="#FFFFFF">'
                    +'    &nbsp;'
                   +'<textarea name="remark"></textarea>'
                    +'</td>'
                    +'</tr>'
                    +'<tr>'
                    +'<td height="30" align="right" bgcolor="#F9F9F9">'
                    +'   &nbsp;'
                    +'</td>'
                    +'<td bgcolor="#FFFFFF">'
                    +'    &nbsp;'
                    +'<input type="hidden" name="stuId" value="${(Session["user"].id)!}"/>'
                    +'    <input type="button" value="确定" onclick="yuyue();"/>'
                    +'<input type="button" class="layui-layer-close" id="close" value="取消"/>'
                    +'    </td>'
                    +'    </tr>'
                    +'    </table>'
                    +'   </form>'
                })
            }
        }
        function yuyue(){
            var data = $("#form1").serialize();
            $.ajax({
                url:"${request.contextPath}/app/add",
                data:data,
                type:"get",
                datatype:"json",
                success:function(data) {
                    layer.alert(data,{
                        title:"提示",
                    })
                    if(data == "预约成功"){
                        $('#close').click();
                    }
                }
            });
        }
    </script>
</head>

<body>
<#include "incTop.ftl">
<div class="page_row">
    <div class="page_main_msg left">
        <div class="left_row">
            <div class="list pic_news">
                <div class="list_bar">
                    <span style="float:left">教员详细信息</span>
                </div>
                <div id="tw" class="list_content" style="height: 800px;">
                    <table width="100%" border="0" cellpadding="9" cellspacing="9">
                        <tr>
                            <td align="left">照片：<img src="${request.contextPath}${teacher.photo!}" width="120" height="150"/></td>
                        </tr>
                        <tr>
                            <td align="left">姓名：${teacher.rname!}</td>
                        </tr>
                        <tr>
                            <td align="left">性别：${teacher.sex!}</td>
                        </tr>
                        <tr>
                            <td align="left">年龄：${teacher.age!}</td>
                        </tr>
                        <tr>
                            <td align="left">联系方式：***********</td>
                        </tr>
                        <tr>
                            <td align="left">住址：${teacher.address!}</td>
                        </tr>
                        <tr>
                            <td align="left">
                                身份：
                                <#if teacher.shenfen == "学生"><font size="2">在校大学生(研究生)</font></#if>
                                <#if teacher.shenfen == "老师"><font size="2">教师(在职/进修/离职/退休)</font></#if>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">学历：${teacher.school!}</td>
                        </tr>
                        <tr>
                            <td align="left">可辅导科目：${teacher.kecheng!}</td>
                        </tr>
                        <tr>
                            <td align="left">自我介绍：${teacher.jieshao!}</td>
                        </tr>
                        <tr>
                            <td align="center">
                                <a href="#" onclick="yuyue_jiaoyuan(${teacher.id!})"><img src="${request.contextPath}/img/yuyue.jpg"/></a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- 右边的用户登录。留言。投票 -->
    <div class="page_other_msg right">
        <div class="left_row">
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
                        <s:action name="gonggaoQian5" executeResult="true" flush="true"></s:action>
                    </div>
                </div>
            </div>
        </div>
        <div class="left_row">
            <div class="list">
                <div class="list_bar">天气</div>
                <div class="list_content">
                    <iframe width="300" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5"></iframe>
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
