<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</head>

<body>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
    <#list gg as g>
        <tr><td height="28" id="roll-line-1607838439" width="100%"><div class="" style="padding:2px 0px;"><div class="f-left"><img src="${request.contextPath}/img/head-mark3.gif" align="middle" class="img-vm" border="0"/> <a href="${request.contextPath}/info/detail?id=${g.id!}" title=""><span style="">${g.title!}…</span></a></div><div class="clear"></div></div></td></tr>
    </#list>
</table>
</body>
</html>