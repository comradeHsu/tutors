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
            <A href="${request.contextPath}/allStu">我要做家教</A>
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
<form id="searchForm" action="${request.contextPath}/jiaoyuanSearch.action" method="post">
    <div class="topsearch">
        <div class="title"></div>
        <div id="page_search_left">
            按科目搜索教员：<input class="inputText" id="" size="16" onkeypress="if(event.keyCode==13){searchFormSubmit();return false;}" name="kefudaokemu" type="text" />
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
        var type = '${Session["type"]!}';
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
                area: ['340px', '245px'], //宽高
                content:'teacherInfo.ftl'
            });
        }
        if(type == "2"){
            var url="${request.contextPath}/stu/stuInfo";
            var n="";
            var w="550px";
            var h="600px";
            var s="resizable:no;help:no;status:no;scroll:yes";
            openWin(url,n,w,h,s);
        }
    }
    function wodeyuyue(){

    }
    function yuyuewode(){

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
