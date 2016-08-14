<%@page import="com.mohitpaudel.webapplication.dao.impl.NavigationDaoImpl"%>
<%@page import="com.mohitpaudel.webapplication.dao.NavigationDao"%>
<%@page import="com.mohitpaudel.webapplication.entity.Navigation"%>
<%
    NavigationDao navDao=new NavigationDaoImpl();
    if(request.getMethod().equalsIgnoreCase("post"))
    {
       Navigation nav=new Navigation();
       nav.setWebsiteName(request.getParameter("websiteName"));
       nav.setLinkOne(request.getParameter("linkOne"));
       nav.setLinkTwo(request.getParameter("linkTwo"));
       nav.setLinkThree(request.getParameter("linkThird"));
       nav.setLinkFour(request.getParameter("linkFourth"));
       nav.setId(1);
       if(navDao.update(nav)>0)
       {
           response.sendRedirect("../index.jsp?success");
       }else
       {
             response.sendRedirect("../index.jsp?error");
       }
       
    
    }else
    {
        response.sendRedirect("../index.jsp?invalid-operation");
    }





%>
