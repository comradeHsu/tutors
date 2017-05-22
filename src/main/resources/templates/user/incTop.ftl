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
            <A href="${request.contextPath}/qiantai/default.jsp">网站首页</A>
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
            <A href="#" onclick="wodeyuyue()">我的预约</A>
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
            按科目搜索教员：<input class="inputText" id="" size="16" onkeypress="if(event.keyCode==13){searchFormSubmit();return false;}" name="kecheng" type="text" />
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
            <#--var url="${request.contextPath}/tea/teaInfo";-->
            <#--var n="";-->
            <#--var w="550px";-->
            <#--var h="600px";-->
            <#--var s="resizable:no;help:no;status:no;scroll:yes";-->
            <#--openWin(url,n,w,h,s);-->
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
                content: '<form action="${request.contextPath}/xueyuanEdit.action" id="form" name="form1" method="post">'
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
                + ' <input type="text" name="name" value="${(Session["user"].name)!}" readonly="readonly"/>'
                + '    </td>'
                + '    </tr>'
                + '    <tr>'
                + '    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">'
                + '   密 码：'
                + ' </td>'
                + '<td bgcolor="#FFFFFF">'
                + '    &nbsp;'
                + '<input type="password" name="pwd" value="${(Session["user"].pwd)!}"/>'
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
                + '    <input type="button" value="确定修改" onclick="check1();"/>'
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
    function wodeyuyue(){

    }
    function yuyuewode(){

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
    <#--{-->
    <#--<c:if test="${sessionScope.userType==null}">-->
    <#--alert("请先登录");-->
    <#--</c:if>-->
    <#--<c:if test="${sessionScope.userType==1}">-->
    <#--var url="${request.contextPath}/qiantai/userinfo/xinxi_jiaoyuan.jsp";-->
    <#--var n="";-->
    <#--var w="550px";-->
    <#--var h="600px";-->
    <#--var s="resizable:no;help:no;status:no;scroll:yes";-->
    <#--openWin(url,n,w,h,s);-->
    <#--</c:if>-->
    <#--<c:if test="${sessionScope.userType==2}">-->
    <#--var url="${request.contextPath}/qiantai/userinfo/xinxi_xueyuan.jsp";-->
    <#--var n="";-->
    <#--var w="550px";-->
    <#--var h="600px";-->
    <#--var s="resizable:no;help:no;status:no;scroll:yes";-->
    <#--openWin(url,n,w,h,s);-->
    <#--</c:if>-->
    <#--}-->

    <#--function wodeyuyue()-->
    <#--{-->
    <#--<c:if test="${sessionScope.userType==null}">-->
    <#--alert("请先登录");-->
    <#--</c:if>-->

    <#--<c:if test="${sessionScope.userType==1}">//教员-->
    <#--var url="/jjw/wodeyuyue_jiaoyuan.action?jiaoyuan_id=${sessionScope.jiaoyuan.id}&type=toxueyuan";//我的预约-->
    <#--var pop=new Popup({ contentType:1,isReloadOnClose:false,width:650,height:400});-->
    <#--pop.setContent("contentUrl",url);-->
    <#--pop.setContent("title","我的预约");-->
    <#--pop.build();-->
    <#--pop.show();-->
    <#--</c:if>-->
    <#--<c:if test="${sessionScope.userType==2}">//学员-->
    <#--var url="/jjw/wodeyuyue_xueyuan.action?xueyuan_id=${sessionScope.xueyuan.id}&type=tojiaoyuan";//我的预约-->
    <#--var pop=new Popup({ contentType:1,isReloadOnClose:false,width:650,height:400});-->
    <#--pop.setContent("contentUrl",url);-->
    <#--pop.setContent("title","我的预约");-->
    <#--pop.build();-->
    <#--pop.show();-->
    <#--</c:if>-->
    <#--}-->



    <#--function yuyuewode()-->
    <#--{-->
    <#--<c:if test="${sessionScope.userType==null}">-->
    <#--alert("请先登录");-->
    <#--</c:if>-->

    <#--<c:if test="${sessionScope.userType==1}">//教员-->
    <#--var url="/jjw/yuyuewode_jiaoyuan.action?jiaoyuan_id=${sessionScope.jiaoyuan.id}&type=tojiaoyuan";//我的预约-->
    <#--var pop=new Popup({ contentType:1,isReloadOnClose:false,width:650,height:400});-->
    <#--pop.setContent("contentUrl",url);-->
    <#--pop.setContent("title","我的预约");-->
    <#--pop.build();-->
    <#--pop.show();-->
    <#--</c:if>-->
    <#--<c:if test="${sessionScope.userType==2}">//学员-->
    <#--var url="/jjw/yuyuewode_xueyuan.action?xueyuan_id=${sessionScope.xueyuan.id}&type=toxueyuan";//我的预约-->
    <#--var pop=new Popup({ contentType:1,isReloadOnClose:false,width:650,height:400});-->
    <#--pop.setContent("contentUrl",url);-->
    <#--pop.setContent("title","我的预约");-->
    <#--pop.build();-->
    <#--pop.show();-->
    <#--</c:if>-->
    <#--}-->

</script>
</body>
</html>
