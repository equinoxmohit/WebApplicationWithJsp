<%@page import="com.mohitpaudel.webapplication.entity.ThirdContent"%>
<%@page import="com.mohitpaudel.webapplication.dao.impl.ThirdContentDaoImpl"%>
<%@page import="com.mohitpaudel.webapplication.dao.ThirdContentDao"%>
<%@page import="com.mohitpaudel.webapplication.entity.SecondContent"%>
<%@page import="com.mohitpaudel.webapplication.dao.impl.SecondContentDaoImpl"%>
<%@page import="com.mohitpaudel.webapplication.dao.SecondContentDao"%>
<%@page import="com.mohitpaudel.webapplication.entity.Placeholder"%>
<%@page import="com.mohitpaudel.webapplication.dao.impl.PlaceholderDaoImpl"%>
<%@page import="com.mohitpaudel.webapplication.dao.PlaceholderDao"%>
<%@page import="com.mohitpaudel.webapplication.dao.impl.NavigationDaoImpl"%>
<%@page import="com.mohitpaudel.webapplication.dao.NavigationDao"%>
<%@page import="com.mohitpaudel.webapplication.entity.Navigation"%>
<%@include file="shared/header.jsp"%>
<style>
    .mainbody
    {
        background:#F8F8F8;
        height: auto;
        margin-top: 0px;
        color: #231F20;
    }

    .second-content
    {
        //background:#F8F8F8;


    }

</style>
<%
    NavigationDao navDao = new NavigationDaoImpl();
    for (Navigation nav : navDao.getAll()) {
%>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" ><%=nav.getWebsiteName()%></a>
            <a href="edit/editnav.jsp"   class="btn btn-default" style="margin:0.25em" ><span class="glyphicon glyphicon-edit"></span>Edit Nav</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="index.jsp"><%=nav.getLinkOne()%> <span class="sr-only">(current)</span></a></li>
                <li><a href="pages/link2.jsp"><%=nav.getLinkTwo()%></a></li>
                <li><a href="pages/link3.jsp"><%=nav.getLinkThree()%></a></li>
                <li><a href="pages/link4.jsp"><%=nav.getLinkFour()%></a></li>
            </ul>
        </div>
    </div>
</nav>
<% }%>

<%
    PlaceholderDao pDao = new PlaceholderDaoImpl();
    for (Placeholder p : pDao.getAll()) {

%>

<div class="container-fluid mainbody">
    <div class="h4 text-center" style="color:#231F20;">
        <%=p.getContent()%>
        <br><br>
        <span class="glyphicon glyphicon-grain"></span> 
    </div>
    <div class="text-center">
        <a href="edit/editplaceholder.jsp" class="btn btn-default" style="margin:0.25em"><span class="glyphicon glyphicon-edit"></span>Edit Content</a>
    </div>  
</div>
<br>
<br>
<% }%>
<%
    SecondContentDao sDao = new SecondContentDaoImpl();
    for (SecondContent s : sDao.getAll()) {

%>

<div class="container-fluid">
    <div class="h4 text-center" style="color:#231F20;">
        <div class="panel panel-success well well-lg">
            <%=s.getContent()%>
            <br><br>
            <div class="text-center">
                <a href="edit/editsecond.jsp" class="btn btn-default" style="margin:0.25em"><span class="glyphicon glyphicon-edit"></span>Edit Content</a>
            </div>  
        </div>
    </div>
</div>
<% } %>
<%
    ThirdContentDao tDao = new ThirdContentDaoImpl();
    for (ThirdContent t : tDao.getAll()) {
%>
<div class="container ">
    <div class="h4 text-center" style="color:#231F20;">
        <div class="panel panel-success well well-lg">
            <%=t.getContent()%>
            <br><br>
            <div class="text-center">
                <a href="edit/editthird.jsp" class="btn btn-default" style="margin:0.25em"><span class="glyphicon glyphicon-edit"></span>Edit Content</a>
            </div>  
        </div>
    </div>
</div>
<% }%>
<%@include file="shared/footer.jsp"%>
