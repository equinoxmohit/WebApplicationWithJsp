<%@page import="com.mohitpaudel.webapplication.entity.ThirdContent"%>
<%@page import="com.mohitpaudel.webapplication.dao.impl.ThirdContentDaoImpl"%>
<%@page import="com.mohitpaudel.webapplication.dao.ThirdContentDao"%>
<%
    ThirdContentDao tDao = new ThirdContentDaoImpl();
    if (request.getMethod().equalsIgnoreCase("post")) {
        ThirdContent tc = new ThirdContent();
        tc.setContent(request.getParameter("content"));
        tc.setId(1);
        if (tDao.update(tc) > 0) {
            response.sendRedirect("../index.jsp?success");
        } else {
            response.sendRedirect("../index.jsp?error");
        }
    } else {

        response.sendRedirect("../index.jsp?inappropriate-method");
    }


%>