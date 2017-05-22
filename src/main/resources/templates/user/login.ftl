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
                content:'<form action="" id="form2" name="form1" method="post" enctype="multipart/form-data">'
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
                +'<input type="text" id="name" name="name"/>'
                +'</td>'
                +'</tr>'
                +'<tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +' 密 码：'
                +'</td>'
                +' <td bgcolor="#FFFFFF"> &nbsp;'
                +'<input type="password" id="pwd" name="pwd"/>'
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
                +'<textarea rows="" cols="" style="width: 300px;height: 100px;" name="jianjie"></textarea>'
                +'</td>'
                +'</tr>'
                +'<tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +' 照片：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'&nbsp;'
                +'<input type="file" class="tximg" id="image" name="image">'
                +'</td>'
                +'</tr>'
                +'<tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9">'
                +' &nbsp;'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +' &nbsp;'
                +'<input type="button" value="确定" onclick="check1();"/>'
                +' <input type="button" class="layui-layer-close" id="close"value="取消" onclick="closeOpen()"/>'
                +' </td>'
                +' </tr>'
                +'</table>'
                +'</form>'
            });
        }
        function reg_xueyuan()
        {
            layer.open({
                type: 1,
                skin: 'layui-layer-rim', //加上边框
                area: ['550px', '600px'], //宽高
                content: '<form action="${request.contextPath}/reg/register" id="form1" name="form1" method="">'
                + '<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">'
                + '<tr>'
                + '<th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">'
                + '学 员 注 册'
                + '</th>'
                + '</tr>'
                + '<tr>'
                + '<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '用户名：'
                + '</td>'
                + '<td width="80%" bgcolor="#FFFFFF">'
                + '&nbsp;'
                + '<input type="text" id="name" name="name"/>'
                + '</td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '密 码：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '&nbsp;'
                + ' <input type="password" id="pwd" name="pwd"/>'
                + ' </td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '姓名：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '&nbsp;'
                + '<input type="text" name="realName"/>'
                + '</td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '性别：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '&nbsp;'
                + ' <input type="radio" name="sex" value="男" checked="checked"/>男'
                + '&nbsp;&nbsp;&nbsp;&nbsp;'
                + '<input type="radio" name="sex" value="女"/>女'
                + '</td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '年龄：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + ' &nbsp;'
                + ' <input type="text" name="age"/>'
                + '</td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '联系方式：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + ' &nbsp;'
                + '<input type="text" name="phone"/>'
                + '</td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '住址：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '&nbsp;'
                + '<input type="text" name="address"/>'
                + '</td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '辅导科目：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + ' &nbsp;'
                + '<input type="text" name="kecheng"/>'
                + '</td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '学员情况：'
                + ' </td>'
                + '<td bgcolor="#FFFFFF">'
                + ' &nbsp;'
                + '<!-- <FCK:editor instanceName="xueyuanqingkuang"  basePath="/fckeditor" width="300" height="100" value="请输入内容" toolbarSet="Basic">'
                + '</FCK:editor> -->'
                + '<textarea rows="" cols="" style="width: 300px;height: 100px;" name="qingkuang"></textarea>'
                + '</td>'
                + ' </tr>'
                + ' <tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + ' 教员要求：'
                + ' </td>'
                + ' <td bgcolor="#FFFFFF">'
                + '&nbsp;'
                + '<!--<FCK:editor instanceName="jiaoyuanyaoqiu"  basePath="/fckeditor" width="300" height="100" value="请输入内容" toolbarSet="Basic">'
                + '</FCK:editor> -->'
                + '<textarea rows="" cols="" style="width: 300px;height: 100px;" name="required"></textarea>'
                + ' </td>'
                + '</tr>'
                + ' <tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9">'
                + ' &nbsp;'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + ' &nbsp;'
                + '  <input type="button" value="确定" onclick="reg()"/>'
                + '<input type="button" class="layui-layer-close" id="close" value="取消" onclick="closeOpen()"/>'
                + '</td>'
                + ' </tr>'
                + ' </table>'
                + '</form>'
            });
        }
//        function login()
//        {
//            if(document.userLogin.userName.value=="")
//            {
//                alert("请输入用户名");
//                return;
//            }
//            if(document.userLogin.userPw.value=="")
//            {
//                alert("请输入密码");
//                return;
//            }
//
//            if(document.userLogin.userType.value==-1)
//            {
//                alert("请选择类型");
//                return;
//            }
//
//            document.getElementById("indicator").style.display="block";
//            loginService.login(document.userLogin.userName.value,document.userLogin.userPw.value,document.userLogin.userType.value,callback);
//        }

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
        $(".sis").click(function(){
            var input = '<input type="file" class="tximg">';
            $(".sis").html(input);//
            $(".tximg").click();
        });
        function check1() {
            var name = $("#name").val();
            var pwd = $("#pwd").val();
            if(name == "" || name == null)
            {
                layer.alert("请输入用户名",{
                    title:"提示"
                });
                return false;
            }
            if(pwd =="" || pwd == null)
            {
                layer.alert("请输入密码",{
                    title:"提示"
                });
                return false;
            }
            var data = new FormData(document.getElementById("form2"));
            console.log(data);
            $.ajax({
                url:"${request.contextPath}/tea/reg",
                type:"post",
                data:data,
                processData:false,
                contentType:false,
                success:function(data){
                    layer.alert(data,{
                        title:"提示",
                    })
                    if(data == "注册成功"){
                        $('#close').click();
                    }
                },
            });
        }
        function reg() {
            var name = $("#name").val();
            var pwd = $("#pwd").val();
            if(name == "" || name == null)
            {
                layer.alert("请输入用户名",{
                    title:"提示"
                });
                return false;
            }
            if(pwd =="" || pwd == null)
            {
                layer.alert("请输入密码",{
                    title:"提示"
                });
                return false;
            }
            var data = $("#form1").serialize();
            console.log(data);
            $.ajax({
                url:"${request.contextPath}/reg/register",
                type:"get",
                data:data,
                processData:false,
                contentType:false,
                success:function(data){
                    layer.alert(data,{
                        title:"提示",
                    })
                    if(data == "注册成功"){
                        $('#close').click();
                    }
                },
            });
        }
        function login(){
            var type = $("#type").val();
            if(type=="-1"){
                layer.alert("请选择登录权限",{
                    title:"提示",
                })
            }
            if(type == "1"){
                $("#login").attr("action","${request.contextPath}/tea/login");
            }
            if(type=="2"){
                $("#login").attr("action","${request.contextPath}/stu/login")
            }
            $("#login").submit();
        }
    </script>
</head>

<body>

<#if Session["user"] ??>
<#else>
    <form action="" id="login" name="userLogin" method="post">
        <table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
            <tr>
                <td align="center" colspan="2" height="10"></td>
            </tr>
            <tr>
                <td align="right" width="31%" height="30" style="font-size: 12px;">用户名：</td>
                <td align="left" width="69%"><input class="input" id="userName" title="用户名不能为空" style="width: 120px;" name="name" type="text" /></td>
            </tr>
            <tr>${msg!}</tr>
            <tr>
                <td align="right" height="30" style="font-size: 12px;">密　码：</td>
                <td align="left"><input class="input" title="密码不能为空" type="password" style="width: 120px;" name="pwd"/></td>
            </tr>
            <tr>
                <td align="right" height="30" style="font-size: 12px;">类　型：</td>
                <td align="left">
                    <select class="INPUT_text" id="type" name="userType" style="width: 120px;">
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
    </#if>
    <#if Session["type"]??>
<#if Session["type"]=="1">
    <br/><br/>
    欢迎您：${Session["user"].rname!}(教员) &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${request.contextPath}/loginOut">安全退出</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <br/><br/><br/>
</#if>
<#if Session["type"]=="2">
    <br/><br/>
    欢迎您：${Session["user"].realName!}(学员) &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${request.contextPath}/loginOut">安全退出</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <br/><br/><br/>
</#if>
</#if>
</body>
</html>
