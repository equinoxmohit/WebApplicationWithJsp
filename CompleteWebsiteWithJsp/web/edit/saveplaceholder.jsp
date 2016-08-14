<%@page import="com.mohitpaudel.webapplication.dao.impl.PlaceholderDaoImpl"%>
<%@page import="com.mohitpaudel.webapplication.dao.PlaceholderDao"%>
<%@page import="com.mohitpaudel.webapplication.entity.Placeholder"%>
<%
    PlaceholderDao pDao=new PlaceholderDaoImpl();
    if (request.getMethod().equalsIgnoreCase("post")) {
        Placeholder p=new Placeholder();
        p.setContent(request.getParameter("content"));
        p.setId(1);
        if(pDao.update(p)>0)
        {
            response.sendRedirect("../index.jsp?success");
        }else
        {
            response.sendRedirect("../index.jsp?error");
        }
        
            
    } else {
        response.sendRedirect("../index.jsp?error");
    }

%>