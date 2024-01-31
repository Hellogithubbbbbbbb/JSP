<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="IncludeFile.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        out.ptintln("오늘 날짜 : " + today + "</br>");
        out.println("내일 날짜 : " + tomorrow);
    %>
</body>
</html>
