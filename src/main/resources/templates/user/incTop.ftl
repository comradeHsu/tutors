<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script language="JavaScript" src="${request.contextPath}/js/popup_shuaxin_no.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layer.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layer_1.1.js" type="text/javascript"></script>
</head>

<body>
<center><img src="${request.contextPath}/img/banner.jpg" width="966"></center>
<div class="topmenu cbody1">
    <ul>
        <li class="thisclass">
            <A href="${request.contextPath}/index">网站首页</A>
        </li>
        <li class="thisclass">
            <A href="${request.contextPath}/tea/allTea">我要请家教</A>
        </li>
        <li class="thisclass">
            <A href="${request.contextPath}/stu/allStu">我要做家教</A>
        </li>
        <li class="thisclass">
            <A href="#" onclick="myxinxi()">我的信息</A>
        </li>
        <li class="thisclass">
            <A href="#" onclick="myyuyue()">我的预约</A>
        </li>
        <li class="thisclass">
            <A href="#" onclick="yuyuewode()">预约我的</A>
        </li>

    </ul>
</div>
<form id="searchForm" action="${request.contextPath}/tea/search" method="post">
    <div class="topsearch">
        <div class="title"></div>
        <div id="page_search_left">
            按科目搜索教员：<input class="inputText" id="search" size="16" onkeypress="if(event.keyCode==13){searchFormSubmit();return false;}" name="kecheng" type="text" value="${search!}"/>
        </div>
        <div id="page_search_btn">
            <input type="submit" value="搜索">
        </div>
        <div id="page_search_right">
            <script>
                <#--<!--var day="";-->
                <#--var month="";-->
                <#--var ampm="";-->
                <#--var ampmhour="";-->
                <#--var myweekday="";-->
                <#--var year="";-->
                <#--mydate=new Date();-->
                <#--myweekday=mydate.getDay();-->
                <#--mymonth=mydate.getMonth()+1;-->
                <#--myday= mydate.getDate();-->
                <#--year= mydate.getFullYear();-->
                <#--if(myweekday == 0)-->
                    <#--weekday=" 星期日 ";-->
                <#--else if(myweekday == 1)-->
                    <#--weekday=" 星期一 ";-->
                <#--else if(myweekday == 2)-->
                    <#--weekday=" 星期二 ";-->
                <#--else if(myweekday == 3)-->
                    <#--weekday=" 星期三 ";-->
                <#--else if(myweekday == 4)-->
                    <#--weekday=" 星期四 ";-->
                <#--else if(myweekday == 5)-->
                    <#--weekday=" 星期五 ";-->
                <#--else if(myweekday == 6)-->
                    <#--weekday=" 星期六 ";-->
                <#--document.write(year+"年"+mymonth+"月"+myday+"日 "+weekday);-->

            </script>
        </div>
        <div style="clear: both"></div>
    </div>
</form>
<script type="text/javascript">
    function myxinxi(){
        var type = '${Session["type"]!""}';
        if(type=="" || type == null){
            layer.alert("您还没有登录",{
                title:"提示",
            })
            return;
        }
        if(type == "1"){
            layer.open({
                type: 1,
                skin: 'layui-layer-rim', //加上边框
                area: ['550px', '600px'], //宽高
                content:'<form action="${request.contextPath}/jiaoyuanEdit.action" name="form1" id="form" method="post" enctype="multipart/form-data">'
                +'<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">'
                +'       <tr>'
                +'       <th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">'
                +'       我 的 信 息'
                +'   </th>'
                +'   </tr>'
                +'   <tr>'
                +'   <td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'   用户名：'
                +' </td>'
                +'<td width="80%" bgcolor="#FFFFFF">'
                +'    &nbsp;'
                +'<input type="text" id="name" name="name" value="${(Session['user'].name)!}" readonly="readonly"/>'
                +'   </td>'
                +'   </tr>'
                +'   <tr>'
                +'   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'   密 码：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'   &nbsp;'
                +'<input type="password" id="pwd" name="pwd" value="${(Session["user"].pwd)!}"/>'
                +'   </td>'
                +'   </tr>'
                +'   <tr>'
                +'   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'   姓名：'
                +' </td>'
                +' <td bgcolor="#FFFFFF">'
                +'   &nbsp;'
                +'<input type="text" name="rname" value="${(Session["user"].rname)!}"/>'
                +'   </td>'
                +'   </tr>'
                +'   <tr>'
                +'   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'   性别：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'   &nbsp;'
                +'<input type="radio" name="sex" class="sex" value="男" checked="checked"/>男'
                +'   &nbsp;&nbsp;&nbsp;&nbsp;'
                +'<input type="radio" name="sex" class="sex" value="女"/>女'
                +'   </td>'
                +'   </tr>'
                +'   <tr>'
                +'   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'   年龄：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'   &nbsp;'
                +'<input type="text" name="age" value="${(Session["user"].age)!}"/>'
                +'   </td>'
                +'    </tr>'
                +'    <tr>'
                +'    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'   联系方式：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'    &nbsp;'
                +'<input type="text" name="phone" value="${(Session["user"].phone)!}"/>'
                +'   </td>'
                +'   </tr>'
                +'   <tr>'
                +'   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'   住址：'
                +'</td>'
                +' <td bgcolor="#FFFFFF">'
                +'    &nbsp;'
                +'<input type="text" name="address" value="${(Session["user"].address)!}"/>'
                +'    </td>'
                +'   </tr>'
                +'   <tr>'
                +'   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'    身份：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'    &nbsp;'
                +'<input type="radio" name="shenfen" class="shenfen" value="学生" style="border: 0"/><font size="2">在校大学生(研究生)</font>'
                +'    <input type="radio" name="shenfen" class="shenfen" value="老师" style="border: 0" checked="checked"/><font size="2">教师(在职/进修/离职/退休)</font>'

                +'   </td>'
                +'   </tr>'
                +'    <tr>'
                +'    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'   学历：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'   &nbsp;'
                +'<input type="text" name="school" value="${(Session["user"].school)!}"/>'
                +'   </td>'
                +'   </tr>'
                +'   <tr>'
                +'    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'    可辅导科目：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'    &nbsp;'
                +'<input type="text" name="kecheng" value="${(Session["user"].kecheng)!}"/>'
                +'   </td>'
                +'   </tr>'
                +'    <tr>'
                +'    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'    自我介绍：'
                +' </td>'
                +'<td bgcolor="#FFFFFF">'
                +'    &nbsp;'
                +'<!--<FCK:editor instanceName="ziwojieshao"  basePath="/fckeditor" width="300" height="100" value="" toolbarSet="Basic">'
                +'   </FCK:editor>-->'
                +'<textarea name="jianjie" style="width: 300px;height: 100px;">${(Session["user"].jianjie)!}</textarea>'
                +'</td>'
                +'</tr>'
                +'<tr>'
                +'<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                +'   照片：'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'    &nbsp;'
                +'<div class="sis">'
                +'<img class="touxiang"alt="" src="${request.contextPath}${(Session["user"].photo)!}" >'
                +'<input type="hidden" class="tximg" name="image">'
                +'</div>'
                +'   <input type="button" value="上传" onclick="up()"/>'
                +'   <input type="hidden" name="fujianYuanshiming" id="fujianYuanshiming"/>'
                +'    </td>'
                +'    </tr>'
                +'    <tr>'
                +'   <td height="30" align="right" bgcolor="#F9F9F9">'
                +'    &nbsp;'
                +'</td>'
                +'<td bgcolor="#FFFFFF">'
                +'   &nbsp;'
                +'<input type="hidden" name="id" value="${(Session["user"].id)!}"/>'
                +'   <input type="button" value="确定" onclick="edit();"/>'
                +'   <input type="button" class="layui-layer-close" value="取消" onclick="closeOpen()"/>'
                +'    </td>'
                +'    </tr>'
                +'    </table>'
                +'   </form>'
            });

        }
        if(type == "2"){
            layer.open({
                type: 1,
                skin: 'layui-layer-rim', //加上边框
                area: ['550px', '600px'], //宽高
                content: '<form action="" id="form1" name="form1" method="post">'
                + '<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">'
                + '        <tr>'
                + '        <th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">'
                + '        我 的 信 息'
                + '   </th>'
                + '   </tr>'
                + '    <tr>'
                + '   <td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '    用户名：'
                + '</td>'
                + '<td width="80%" bgcolor="#FFFFFF">'
                + '    &nbsp;'
                + ' <input type="text" name="name" id="name" value="${(Session["user"].name)!}" readonly="readonly"/>'
                + '    </td>'
                + '    </tr>'
                + '    <tr>'
                + '    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '   密 码：'
                + ' </td>'
                + '<td bgcolor="#FFFFFF">'
                + '    &nbsp;'
                + '<input type="password" name="pwd" id="pwd" value="${(Session["user"].pwd)!}"/>'
                + '   </td>'
                + '    </tr>'
                + '    <tr>'
                + '    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '     姓名：'
                + ' </td>'
                + '<td bgcolor="#FFFFFF">'
                + '    &nbsp;'
                + '<input type="text" name="realName" value="${(Session["user"].realName)!}"/>'
                + '    </td>'
                + '   </tr>'
                + '   <tr>'
                + '   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '   性别：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '    &nbsp;'
                + ' <input type="radio" name="sex" class="sex" value="男" checked="checked"/>男'
                + '    &nbsp;&nbsp;&nbsp;&nbsp;'
                + '<input type="radio" name="sex" class="sex" value="女"/>女'
                + '   </td>'
                + '    </tr>'
                + '    <tr>'
                + '    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '    年龄：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '   &nbsp;'
                + ' <input type="text" name="age" value="${(Session["user"].age)!}"/>'
                + '    </td>'
                + '    </tr>'
                + '    <tr>'
                + '    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '    联系方式：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '    &nbsp;'
                + '<input type="text" name="phone" value="${(Session["user"].phone)!}"/>'
                + '    </td>'
                + '    </tr>'
                + '    <tr>'
                + '    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '    住址：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '   &nbsp;'
                + '<input type="text" name="address" value="${(Session["user"].address)!}"/>'
                + '   </td>'
                + '    </tr>'
                + '   <tr>'
                + '   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '   辅导科目：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '   &nbsp;'
                + '<input type="text" name="kecheng" value="${(Session["user"].kecheng)!}"/>'
                + '   </td>'
                + '   </tr>'
                + '   <tr>'
                + '    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '    学员情况：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '    &nbsp;'
                + '<textarea rows="" cols="" style="width: 300px;height: 100px;" name="qingkuang">${(Session["user"].qingkuang)!}</textarea>'
                + '</td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '    教员要求：'
                + '</td>'
                + '<td bgcolor="#FFFFFF">'
                + '    &nbsp;'
                + '<textarea rows="" cols="" style="width: 300px;height: 100px;" name="required">${(Session["user"].required)!}</textarea>'
                + '</td>'
                + '</tr>'
                + '<tr>'
                + '<td height="30" align="right" bgcolor="#F9F9F9">'
                + '    &nbsp;'
                + '</td>'
                + ' <td bgcolor="#FFFFFF">'
                + '    &nbsp;'
                + '<input type="hidden" name="id" value="${(Session["user"].id)!}"/>'
                + '    <input type="button" value="确定修改" onclick="stu();"/>'
                + '    <input type="button" class="layui-layer-close" id="close"value="取消" onclick="closeOpen()"/>'
                + '    </td>'
                + '    </tr>'
                + '    </table>'
                + '    </form>'
            });
        }
    }
    function up(){
        var input = '<input type="file" class="tximg" name="image">';
        $(".sis").html(input);
        $(".tximg").click();
    }
    function myyuyue(){
        var type = '${Session["type"]!""}';
        if(type=="" || type == null){
            layer.alert("您还没有登录",{
                title:"提示",
            })
            return;
        }
        if(type == "1") {
            <#--layer.open({-->
                <#--type: 1,-->
                <#--skin: 'layui-layer-rim', //加上边框-->
                <#--area: ['550px', '600px'], //宽高-->
                <#--content: '<body leftmargin="2" topmargin="2" background="${request.contextPath}/img/allbg.gif">'-->
                    <#--+'<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">'-->
                    <#--+'<tr bgcolor="#E7E7E7">'-->
                    <#--+'<td height="14" colspan="5" background="${request.contextPath}/img/tbg.gif">&nbsp;我的预约&nbsp;</td>'-->
                    <#--+'</tr>'-->
                    <#--+'<tr align="center" bgcolor="#FAFAF1" height="22">'-->
                    <#--+'<td width="20%">教员</td>'-->
                    <#--+'<td width="20%">被约学员</td>'-->
                    <#--+'<td width="20%">所留联系方式</td>'-->
                    <#--+'<td width="20%">预约说明</td>'-->
                    <#--+'<td width="20%">时间</td>'-->
                    <#--+'</tr>'-->
                        <#--+'<#if app?? && (app?size > 0) >'-->
                    <#--+'<#list app as a>'-->
                    <#--+'<tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor="red";" onMouseOut="javascript:this.bgColor="#FFFFFF";" height="22">'-->
                    <#--+'<td bgcolor="#FFFFFF" align="center">'-->
                    <#--+'${(a.teacher.rname)!}'-->
                    <#--+'</td>'-->
                    <#--+'<td bgcolor="#FFFFFF" align="center">'-->
                    <#--+'${(a.student.realName)!}'-->
                    <#--+'</td>'-->
                    <#--+'<td bgcolor="#FFFFFF" align="center">'-->
                    <#--+'${(a.phone)!}'-->
                    <#--+'</td>'-->
                    <#--+' <td bgcolor="#FFFFFF" align="center">'-->
                    <#--+'${a.remark!}'-->
                    <#--+'</td>'-->
                    <#--+'<td bgcolor="#FFFFFF" align="center">'-->
                    <#--+'${(a.time)!}'-->
                    <#--+'</td>'-->
                    <#--+' </tr>'-->
                    <#--+'</#list>'-->
                    <#--+'</#if>'-->
                    <#--+'</table>'-->
                    <#--+ '<input type="button" class="layui-layer-close" id="close"value="关闭" />'-->
                    <#--+'</body>'-->
            <#--});-->
            window.location.href="${request.contextPath}/tea/yuYue";
        }
        if(type == "2") {
            <#--layer.open({-->
                <#--type: 1,-->
                <#--skin: 'layui-layer-rim', //加上边框-->
                <#--area: ['550px', '600px'], //宽高-->
                <#--content: '<body leftmargin="2" topmargin="2" background="${request.contextPath}/img/allbg.gif">'-->
                    <#--+'<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">'-->
                    <#--+'<tr bgcolor="#E7E7E7">'-->
                    <#--+'<td height="14" colspan="5" background="${request.contextPath}/img/tbg.gif">&nbsp;我的预约&nbsp;</td>'-->
                    <#--+'</tr>'-->
                    <#--+'<tr align="center" bgcolor="#FAFAF1" height="22">'-->
                    <#--+'<td width="20%">学员</td>'-->
                    <#--+'<td width="20%">被约教员</td>'-->
                    <#--+'<td width="20%">所留联系方式</td>'-->
                    <#--+'<td width="20%">预约说明</td>'-->
                    <#--+'<td width="20%">时间</td>'-->
                    <#--+'</tr>'-->
                    <#--+'<#if app?? && (app?size > 0) >'-->
                    <#--+'<#list app as b>'-->
                    <#--+'<tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor="red";" onMouseOut="javascript:this.bgColor="#FFFFFF";" height="22">'-->
                    <#--+'<td bgcolor="#FFFFFF" align="center">'-->
                    <#--+' ${(b.student.realName)!}'-->
                    <#--+'</td>'-->
                    <#--+' <td bgcolor="#FFFFFF" align="center">'-->
                    <#--+' ${(b.teacher.rname)!}'-->
                    <#--+' </td>'-->
                    <#--+' <td bgcolor="#FFFFFF" align="center">'-->
                    <#--+'${(b.phone)!}'-->
                    <#--+'</td>'-->
                    <#--+'<td bgcolor="#FFFFFF" align="center">'-->
                    <#--+' ${(b.remark)!}'-->
                    <#--+' </td>'-->
                    <#--+' <td bgcolor="#FFFFFF" align="center">'-->
                    <#--+'${(b.time)!}'-->
                    <#--+' </td>'-->
                    <#--+' </tr>'-->
                    <#--+'</#list>'-->
                    <#--+'</#if>'-->
                    <#--+'</table>'-->
                    <#--+ '<input type="button" class="layui-layer-close" id="close"value="关闭" />'-->
                    <#--+'</body>'-->
            <#--})-->
            window.location.href="${request.contextPath}/stu/yuYue";
        }
    }
    function yuyuewode(){
        var type = '${Session["type"]!""}';
        if(type=="" || type == null){
            layer.alert("您还没有登录",{
                title:"提示",
            })
            return;
        }
        if(type == "1") {
            location.href="${request.contextPath}/tea/yuYueMe";
        }
        if(type == "2") {
            location.href="${request.contextPath}/stu/yuYueMe";
        }
    }
    $(function(){
        var sex = '${(Session["user"].sex)!}';
        if(sex!=null || sex!=""){
            $(".sex[value="+sex+"]").attr("checked","checked");
        }
        var shenfen = '${(Session["user"].shenfen)!}'
        if(shenfen != null || shenfen !=""){
            $(".shenfen[value="+shenfen+"]").attr("checked","checked");
        }
    });
    function edit() {
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
        var data = new FormData(document.getElementById("form"));
        $.ajax({
            url:"${request.contextPath}/tea/edit",
            type:"post",
            data:data,
            processData:false,
            contentType:false,
            success:function(data){
                layer.alert(data,{
                    title:"提示",
                })
                if(data == "修改成功"){
                    $('#close').click();
                }
            },
        });
    }
    function stu() {
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
            url:"${request.contextPath}/stu/edit",
            type:"get",
            data:data,
            processData:false,
            contentType:false,
            success:function(data){
                layer.alert(data,{
                    title:"提示",
                })
                if(data == "修改成功"){
                    $('#close').click();
                }
            },
        });
    }
</script>
</body>
</html>
