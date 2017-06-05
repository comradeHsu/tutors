<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    <script language="JavaScript" src="${request.contextPath}/js/public.js" type="text/javascript"></script>

    <script language="javascript">
        function gonggaoAdd()
        {
            var url="${request.contextPath}/info/add";
            window.location.href=url;
        }

        function gonggaoDetail(content)
        {
            layer.open({
                type: 1,
                skin: 'layui-layer-rim', //加上边框
                area: ['400px', '250px'], //宽高
                content: '<form action="" name="form1" id="form" method="post" enctype="multipart/form-data">'
                +'<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">'


                +'    <tr>'
                +'    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'内容：'
                +' </td>'
                +'<td bgcolor="#FFFFFF">'
                +'    &nbsp;'
                +'<!--<FCK:editor instanceName="ziwojieshao"  basePath="/fckeditor" width="300" height="100" value="" toolbarSet="Basic">'
                +'   </FCK:editor>-->'
                +'<textarea name="jianjie" style="width: 300px;height: 100px;">'+content+'</textarea>'
                +'</td>'
                +'</tr>'
               +'<tr>'
                +'<td bgcolor="#FFFFFF">'
                +'   &nbsp;'
                +'   <input type="button" value="确定" onclick="edit();"/>'
                +'   <input type="button" class="layui-layer-close" value="取消" onclick="closeOpen()"/>'
                +'    </td>'
                +'    </tr>'
                +'    </table>'
                +'   </form>'
            })
        }
    </script>
</head>

<body leftmargin="2" topmargin="2" background='${request.contextPath}/img/allbg.gif'>
<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
    <tr bgcolor="#E7E7E7">
        <td height="14" colspan="4" background="${request.contextPath}/img/tbg.gif">&nbsp;公告&nbsp;</td>
    </tr>
    <tr align="center" bgcolor="#FAFAF1" height="22">
        <td width="25%">标题</td>
        <td width="25%">发布时间</td>
        <td width="25%">内容</td>
        <td width="25%">操作</td>
    </tr>
    <#list list as l>
        <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
            <td bgcolor="#FFFFFF" align="center">
                ${l.title!}
            </td>
            <td bgcolor="#FFFFFF" align="center">
                ${l.times!}
            </td>
            <td bgcolor="#FFFFFF" align="center">
                <#--<a href="javascript:void(0)" onclick="gonggaoDetail('${l.content!}')" class="pn-loperator">查看内容</a>-->
                ${l.content!}
            </td>
            <td bgcolor="#FFFFFF" align="center">
                <a class="pn-loperator" href="${request.contextPath}/info/delete?id=${l.id!}">删除</a>
            </td>
        </tr>
    </#list>
</table>

<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
    <tr>
        <td>
            <input type="button" value="添加公告" style="width: 80px;" onclick="gonggaoAdd()" />
        </td>
    </tr>
</table>
</body>
</html>
