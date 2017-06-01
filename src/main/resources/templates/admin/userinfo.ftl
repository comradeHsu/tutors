<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
    <meta http-equiv="description" content="This is my page" />

    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/base.css" />
    <script language="JavaScript" src="${request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layer.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layer_1.1.js" type="text/javascript"></script>


    <script language="javascript">
        <#--function check()-->
        <#--{-->
            <#--var userPwReal="${sessionScope.admin.userPw}";-->
            <#--if(document.formPw.userPw.value !=userPwReal)-->
            <#--{-->
                <#--alert("原密码不正确");-->
                <#--return ;-->
            <#--}-->

            <#--if(document.formPw.userPw1.value =="")-->
            <#--{-->
                <#--alert("新密码不能空");-->
                <#--return ;-->
            <#--}-->

            <#--document.getElementById("indicator").style.display="block";-->
            <#--loginService.adminPwEdit(document.formPw.userPw1.value,callback);-->
        <#--}-->
        <#--function callback(data)-->
        <#--{-->
            <#--document.getElementById("indicator").style.display="none";-->
            <#--alert("修改成功");-->
        <#--}-->
        function edit(){
            var username = $("#userName").val();
            var password = $("#password").val();
            var newPassword = $("#newPassword").val();
            var newPassword1 = $("#newPassword1").val();
            if(newPassword != newPassword1){
                layer.alert("两次输入的密码不一致!",{
                    title:"提示",
                })
                return;
            }
            $.ajax({
                url:"${request.contextPath}/admin/edit",
                type:"post",
                data:{userName:username,password:password,newPassword:newPassword},
                dataType:"json",
                success:function(data){
                    console.log(data.msg)
                    layer.alert(data.msg,{
                        title:"提示",
                    })
                },
            });
        }
    </script>
</head>

<body leftmargin="2" topmargin="9" background='${request.contextPath}/img/allbg.gif'>
<form method="post" action="" name="formPw">
    <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
        <tr bgcolor="#EEF4EA">
            <td colspan="2" background="${request.contextPath}/img/wbg.gif" class='title'><span>密码修改</span></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td width="25%" bgcolor="#FFFFFF" align="right">
                登录名：
            </td>
            <td width="75%" bgcolor="#FFFFFF">
                <input type="text" value="${admin.userName!}" id="userName" name="userName" size="20" disabled="disabled"/>
            </td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td width="25%" bgcolor="#FFFFFF" align="right">
                原密码：
            </td>
            <td width="75%" bgcolor="#FFFFFF">
                <input type="password" name="password" id="password" size="22"/>
            </td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td width="25%" bgcolor="#FFFFFF" align="right">
                新密码：
            </td>
            <td width="75%" bgcolor="#FFFFFF">
                <input type="password" id="newPassword" name="newPassword" size="22"/>
            </td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td width="25%" bgcolor="#FFFFFF" align="right">
                确认新密码：
            </td>
            <td width="75%" bgcolor="#FFFFFF">
                <input type="password" id="newPassword1" name="newPassword" size="22"/>
            </td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td width="25%" bgcolor="#FFFFFF" align="right">
                &nbsp;
            </td>
            <td width="75%" bgcolor="#FFFFFF">
                <input type="button" value="修改" onclick="edit()"/>
                &nbsp;&nbsp;&nbsp;
                <input type="reset" value="重置"/>
                <img id="indicator" src="${request.contextPath}/img/loading32.gif" alt="Loading..." style="display:none"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
