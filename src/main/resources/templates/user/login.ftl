<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script language="JavaScript" src="${request.contextPath}/js/public.js" type="text/javascript"></script>

    <script type='text/javascript' src='${request.contextPath}/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='${request.contextPath}/dwr/engine.js'></script>
    <script type='text/javascript' src='${request.contextPath}/dwr/util.js'></script>

    <script type="text/javascript">
        function reg_jiaoyuan()
        {
            <#--var url="${request.contextPath}/reg/regStudent";-->
            <#--var n="center";-->
            <#--var w="550px";-->
            <#--var h="600px";-->
            <#--var s="resizable:no;help:no;status:no;scroll:yes";-->
            <#--window.open(url,n,w,h,s);-->
            layer.open({
                type: 1,
                skin: 'layui-layer-rim', //加上边框
                area: ['550px', '600px'], //宽高
                content:'<form action="${request.contextPath}/jiaoyuanAdd.action" name="form1" method="post">'
                +'<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">'
                +'<tr>'
                +'        <th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">'
                +'        教 员 注 册'
                +'    </th>'
                +'    </tr>'
                +'   <tr>'
                +'<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'用户名：'
                +'</td>'
                +'<td width="80%" bgcolor="#FFFFFF"> &nbsp;'
                +'<input type="text" name="name"/>'
                +'</td>'
                +'</tr>'
                +'<tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +' 密 码：'
                +'</td>'
                +' <td bgcolor="#FFFFFF"> &nbsp;'
                +'<input type="password" name="pwd"/>'
                +'</td>'
                +'</tr>'
                +'<tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'姓名：'
                +'</td>'
                +'<td bgcolor="#FFFFFF"> &nbsp;'
                +'<input type="text" name="rname"/>'
                +'</td>'
                +'</tr>'
                +' <tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'性别：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +' &nbsp;'
                +'<input type="radio" name="sex" value="男" checked="checked"/>男'
                +'&nbsp;&nbsp;&nbsp;&nbsp;'
                +'<input type="radio" name="sex" value="女"/>女'
                +' </td>'
                +' </tr>'
                +' <tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +' 年龄：'
                +'</td>'
                +'<td bgcolor="#FFFFFF"> &nbsp;'
                +'<input type="text" name="age"/>'
                +'</td>'
                +' </tr>'
                +' <tr>'
                +' <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +' 联系方式：'
                +'</td>'
                +'<td bgcolor="#FFFFFF"> &nbsp;'
                +' <input type="text" name="phone"/>'
                +'</td>'
                +'</tr>'
                +'<tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'住址：'
                +' </td>'
                +'<td bgcolor="#FFFFFF">'
                +' &nbsp;'
                +'<input type="text" name="address"/>'
                +'</td>'
                +'</tr>'
                +' <tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +' 身份：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +' &nbsp;'
                +'<input type="radio" name="shenfen" value="学生" style="border: 0"/><font size="2">在校大学生(研究生)</font>'
                +'<input type="radio" name="shenfen" value="老师" style="border: 0" checked="checked"/><font size="2">教师(在职/进修/离职/退休)</font>'

                +'</td>'
                +' </tr>'
                +' <tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'学历：'
                +' </td>'
                +'<td bgcolor="#FFFFFF">'
                +' &nbsp;'
                +' <input type="text" name="school"/>'
                +' </td>'
                +'</tr>'
                +' <tr>'
                +' <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +' 可辅导科目：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +' &nbsp;'
                +'<input type="text" name="kecheng"/>'
                +'</td>'
                +'</tr>'
                +' <tr>'
                +' <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +' 自我介绍：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +' &nbsp;'
                +' <!--<FCK:editor instanceName="ziwojieshao"  basePath="/fckeditor" width="300" height="100" value="请输入内容" toolbarSet="Basic">'
                +' </FCK:editor> -->'
                +'<textarea rows="" cols="" style="width: 300px;height: 100px;" name="jieshao"></textarea>'
                +'</td>'
                +'</tr>'
                +'<tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +' 照片：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'&nbsp;'
                +'<div class="sis">'
                +'<img class="touxiang"alt="" src="/supervise/static/image/17.jpg" >'
                +'<input type="hidden" class="tximg">'
                +'</div>'
                +'</td>'
                +'</tr>'
                +'<tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9">'
                +' &nbsp;'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +' &nbsp;'
                +'<input type="button" value="确定" onclick="check1();"/>'
                +' <input type="button" class="layui-layer-close" value="取消" onclick="closeOpen()"/>'
                +' </td>'
                +' </tr>'
                +'</table>'
                +'</form>'
            });
        }
        function reg_xueyuan()
        {
            var url="${request.contextPath}/reg/regTeacher";
            var n="";
            var w="550px";
            var h="600px";
            var s="resizable:no;help:no;status:no;scroll:yes";
            openWin(url,n,w,h,s);
        }
        function login()
        {
            if(document.userLogin.userName.value=="")
            {
                alert("请输入用户名");
                return;
            }
            if(document.userLogin.userPw.value=="")
            {
                alert("请输入密码");
                return;
            }

            if(document.userLogin.userType.value==-1)
            {
                alert("请选择类型");
                return;
            }

            document.getElementById("indicator").style.display="block";
            loginService.login(document.userLogin.userName.value,document.userLogin.userPw.value,document.userLogin.userType.value,callback);
        }

        function callback(data)
        {
            document.getElementById("indicator").style.display="none";
            if(data=="no")
            {
                alert("用户名或密码错误");
            }
            if(data=="yes")
            {
                alert("通过验证,系统登录成功");
                window.location.href="<%=path %>/qiantai/default.jsp";
            }

        }
        $(".touxiang").click(function(){
            var input = '<input type="file" class="tximg">';
            $(".sis").html(input);//
        });
    </script>
</head>

<body>


    <form action="${request.contextPath}/userLogin.action" name="userLogin" method="post">
        <table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
            <tr>
                <td align="center" colspan="2" height="10"></td>
            </tr>
            <tr>
                <td align="right" width="31%" height="30" style="font-size: 12px;">用户名：</td>
                <td align="left" width="69%"><input class="input" id="userName" title="用户名不能为空" style="width: 120px;" name="userName" type="text" /></td>
            </tr>
            <tr>
                <td align="right" height="30" style="font-size: 12px;">密　码：</td>
                <td align="left"><input class="input" title="密码不能为空" type="password" style="width: 120px;" name="userPw"/></td>
            </tr>
            <tr>
                <td align="right" height="30" style="font-size: 12px;">类　型：</td>
                <td align="left">
                    <select class="INPUT_text" name="userType" style="width: 120px;">
                        <option value="-1">--请选择--</option>
                        <option value="1">教员</option>
                        <option value="2">学员</option>
                    </select>
                    <img id="indicator" src="${request.contextPath}/img/loading.gif" style="display:none"/>
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2" height="30">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" value="登  录" onclick="login()" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" />
                    &nbsp;
                    <input type="button" value="学员注册" onclick="reg_xueyuan()" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" />
                    &nbsp;
                    <input type="button" value="教员注册" onclick="reg_jiaoyuan()" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" />
                </td>
            </tr>
        </table>
    </form>
    <#if type??>
<#if type=="1">
    <br/><br/>
    欢迎您：<s:property value="#session.jiaoyuan.loginname"/>(教员) &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${request.contextPath}/jiaoyuanLogout.action">安全退出</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <br/><br/><br/>
</#if>
<#if type=="2">
    <br/><br/>
    欢迎您：<s:property value="#session.xueyuan.loginname"/>(学员) &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${request.contextPath}/xueyuanLogout.action">安全退出</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <br/><br/><br/>
</#if>
</#if>
</body>
</html>
