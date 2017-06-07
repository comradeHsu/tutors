<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
    <meta http-equiv="description" content="This is my page" />

    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/base.css" />

    <script language="javascript">
        function closeOpen()
        {
            window.returnValue=false;
            window.close();
        }

    </script>
</head>

<body leftmargin="2" topmargin="9" background='${request.contextPath}/img/allbg.gif'>
<form action="${request.contextPath}/info/addInfo" name="formAdd" method="post">
    <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
        <tr bgcolor="#EEF4EA">
            <td colspan="3" background="${request.contextPath}/img/wbg.gif" class='title'><span>公告添加</span></td>
        </tr>
        <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
            <td width="25%" bgcolor="#FFFFFF" align="right">
                标题：
            </td>
            <td width="75%" bgcolor="#FFFFFF" align="left">
                <input type="text" name="title" size="50"/>
            </td>
        </tr>
        <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
            <td width="25%" bgcolor="#FFFFFF" align="right">
                内容：
            </td>
            <td width="75%" bgcolor="#FFFFFF" align="left">
                <textarea name="content" style="width: 500px;height: 200px"></textarea>
            </td>
        </tr>
        <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
            <td width="25%" bgcolor="#FFFFFF" align="right">
                &nbsp;
            </td>
            <td width="75%" bgcolor="#FFFFFF" align="left">
                <input type="submit" value="提交"/>&nbsp;
                <input type="reset" value="重置"/>&nbsp;
                <input type="button" value="取消" onclick="closeOpen()"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
