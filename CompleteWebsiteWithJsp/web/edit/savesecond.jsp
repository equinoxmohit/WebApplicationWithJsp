<%@page import="com.mohitpaudel.webapplication.dao.impl.SecondContentDaoImpl"%>
<%@page import="com.mohitpaudel.webapplication.dao.SecondContentDao"%>
<%@page import="com.mohitpaudel.webapplication.entity.SecondContent"%>
<%
    SecondContentDao sDao = new SecondContentDaoImpl();
    if (request.getMethod().equalsIgnoreCase("post")) {
        SecondContent sc = new SecondContent();
        sc.setContent(request.getParameter("content"));
        sc.setId(1);
        if (sDao.update(sc) > 0) {
            response.sendRedirect("../index.jsp?success");
        } else {
            response.sendRedirect("../index.jsp?error");
        }
    } else {

        response.sendRedirect("../index.jsp?inappropriate-method");
    }


%>