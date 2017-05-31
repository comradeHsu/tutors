<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
    <title>login.jsp</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script language="JavaScript" src="${request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layui.all.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/style.css">
    <link href="${request.contextPath}/css/layout.css" type="text/css" rel="stylesheet" />
    <link href="${request.contextPath}/css/layui.css" type="text/css" rel="stylesheet"/>
    <style type="text/css">
        body
        {
            margin-left: 0px;
            background-image: url(${request.contextPath}/img/bhj.jpg);
        }
        .style2 {color: #990000}
        .input2
        {
            font-size: 12px;
            border: 3px double #A8D0EE;
            color: #344898;
        }
        .submit1
        {
            border: 3px double #416C9C;
            height: 22px;
            width: 45px;
            background-color: #F2F2F2;
            font-size: 12px;
            padding-top: 1px;
            background-image: url(bt.gif);
            cursor: hand;
        }
        .STYLE12 {font-family: Georgia, "Times New Roman", Times, serif}
        .STYLE13 {color: #316BD6; }
        .STYLE15 {color: #fdsere; font-size: 9pt; }
    </style>


    <script type='text/javascript' src='${request.contextPath}/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='${request.contextPath}/dwr/engine.js'></script>
    <script type='text/javascript' src='${request.contextPath}/dwr/util.js'></script>

    <script language="javascript">
        function check1()
        {
            if(document.ThisForm.userName.value=="")
            {
                alert("请输入用户名");
                document.ThisForm.userName.focus();
                return false;
            }
            document.getElementById("indicator").style.display="block";
            loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
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
                window.location.href="${request.contextPath}/loginSuccess.jsp";
            }
        }
        ;!function() {
            //当使用了 layui.all.js，无需再执行layui.use()方法
            var laypage = layui.laypage
                    , layer = layui.layer;
        }
            function login(){
            var username = $("#username").val();
            var password = $("#password").val();
            if(username == "" || username == null)
            {
                layer.alert("请输入用户名",{
                    title:"提示"
                });
                return false;
            }
            if(password =="" || password == null)
            {
                layer.alert("请输入密码",{
                    title:"提示"
                });
                return false;
            }
            $.ajax({
                url:"${request.contextPath}/admin/login",
                type:"post",
                data:{userName:username,password:password},
                processData:false,
                contentType:false,
                success:function(data){
                    layer.alert(data,{
                        title:"提示",
                    })
                    if(data == "登陆成功"){
                        window.location.href="${request.contextPath}/admin/logins";
                    }
                },
            });
        }
    </script>
</head>
<body>


<body>
<br>
<br>
<br>
<br>
<table width="559" height="423" border="0" align="center" cellpadding="0" cellspacing="0"  background="${request.contextPath}/img/dfff.jpg">
    <tr>
        <td><div align="center" style="FONT-WEIGHT: bold; FONT-SIZE: 40pt;">家教网后台登陆</div></td>
    </tr>
    <tr>
        <td width="559">
            <form name="ThisForm" method="POST" action="${request.contextPath}/admin/login">
                <table width="410" height="198" border="0" align="right" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="10" colspan="2"></td>
                    </tr>
                    <tr>
                        <td width="54" height="22" valign="bottom">
                            <span class="STYLE15" >用户名：</span>
                        </td>
                        <td width="356" valign="bottom">
                            <input name="userName" id="username" type="text" class="input2" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
                        </td>
                        <td><span>${msg!}</span></td>
                    </tr>
                    <tr>
                        <td height="10" colspan="2" valign="bottom"></td>
                    </tr>
                    <tr>
                        <td height="31" colspan="2" valign="top" class="STYLE15">
                            密&nbsp;码：
                            <input name="password" id="password" type="password" size="21" class="input2" align="bottom" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
                        </td>
                    </tr>
                    <tr>
                        <td height="10" colspan="2" valign="bottom"></td>
                    </tr>
                    <tr>
                        <td colspan="2" valign="top" style="padding-left:64px;">
                            <input name="button" type="submit" class="submit1" value="登录"> &nbsp;
                            <input name="Submit2" type="reset" class="submit1" value="重置">
                            <img id="indicator" src="${request.contextPath}/img/loading.gif" style="display:none"/>
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
</body>
