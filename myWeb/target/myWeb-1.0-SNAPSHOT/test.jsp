<%--
  Created by IntelliJ IDEA.
  User: 向祁
  Date: 2021/1/12
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.dao.CheckLogDAO, com.entity.LogStatus" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    CheckLogDAO dao = new CheckLogDAO();
    List<LogStatus> list = dao.readLogStatus();
    for (LogStatus ls : list) {
%>
<div>
    <%=ls.getName()%>
</div>
<%}%>
%>
</body>
</html>
