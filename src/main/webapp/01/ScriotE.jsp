<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--선언부 메서드,변수 선언--%>
<%!
    public int add(int num1, int num2){
        return num1 + num2;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
     <%--    : 여기서는 위에 <%@--메서드 선언한것처럼 선언 불가능--%>
     <%--스크립틀릿--%>
    <%
        int result = add(10,20);
    %>

    <%--표현식--%>
    덧셈결과 : <%= result %> <br/>
    덧셈결과 : <%= add(10,20)%>
</body>
</html>
