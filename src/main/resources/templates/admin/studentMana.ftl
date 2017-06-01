<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
    <meta http-equiv="description" content="This is my page" />

    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/base.css" />
    <script type="text/javascript" src="<%=path %>/js/popup_shuaxin.js"></script>
    <script language="JavaScript" src="${request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layer.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layer_1.1.js" type="text/javascript"></script>

    <script language="javascript">
        function xueyuanDel(id)
        {
            if(confirm('您确定删除吗？'))
            {
                $.ajax({
                    url:"${request.contextPath}/admin/delStu",
                    type:"post",
                    data:{id:id},
                    dataType:"json",
                    success:function(data){
                        layer.alert(data.msg,{
                            title:"提示",
                        })

                    },
                });
            }
        }

        function xueyuanDetail(id)
        {
            var url="<%=path %>/xueyuanDetail.action?id="+id;
            var pop=new Popup({ contentType:1,isReloadOnClose:false,width:500,height:520});
            pop.setContent("contentUrl",url);
            pop.setContent("title","学员详细信息");
            pop.build();
            pop.show();
        }

        function xueyuanShenhe(id)
        {
            var url="<%=path %>/xueyuanShenhe.action?id="+id;
            var pop=new Popup({ contentType:1,isReloadOnClose:false,width:200,height:100});
            pop.setContent("contentUrl",url);
            pop.setContent("title","教员审核");
            pop.build();
            pop.show();
        }
    </script>
</head>

<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
    <tr bgcolor="#E7E7E7">
        <td height="14" colspan="12" background="<%=path %>/img/tbg.gif">&nbsp;学员管理&nbsp;</td>
    </tr>
    <tr align="center" bgcolor="#FAFAF1" height="22">
        <td width="10%">用户名</td>
        <td width="10%">姓名</td>
        <td width="10%">性别</td>

        <td width="10%">年龄</td>
        <td width="10%">联系方式</td>
        <td width="10%">辅导科目</td>
        <td width="10%">状态</td>

        <td width="10%">操作</td>
    </tr>
    <#list list as l>
        <tr align='center' bgcolor="#FFFFFF" height="22">
            <td bgcolor="#FFFFFF" align="center">
                ${l.name!}
            </td>
            <td bgcolor="#FFFFFF" align="center">
               ${l.realName!}
            </td>
            <td bgcolor="#FFFFFF" align="center">
                ${l.sex!}
            </td>


            <td bgcolor="#FFFFFF" align="center">
               ${l.age!}
            </td>
            <td bgcolor="#FFFFFF" align="center">
                ${l.phone!}
            </td>
            <td bgcolor="#FFFFFF" align="center">
                ${l.kecheng!}
            </td>


            <td  bgcolor="#FFFFFF" align="center">
                <a href="#" onclick="xueyuanDetail(${l.id!})" class="pn-loperator">详细信息</a>
                <a href="#" onclick="xueyuanDel(${l.id!})" class="pn-loperator">删除</a>
            </td>
        </tr>
    </#list>
</table>
</body>
</html>
