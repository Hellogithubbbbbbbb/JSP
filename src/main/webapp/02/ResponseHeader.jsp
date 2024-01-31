<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Collection" %>
<%@ page import="static java.lang.Integer.parseInt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%
        // 응답헤더 정보 추가용 메소드
        // add : 새로추가    set : 기존값 수정할때
        // 응답헤더에 추가할 값 준비

        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        long add_date = sd.parse(request.getParameter("add_date")).getTime(); //parse 저장시켜주는것 sd에 parse 뒤에 내용 저장
        int add_int = Integer.parseInt(request.getParameter("add_int"));
        String add_str = request.getParameter("add_str");

        // 응답 헤더에 값 추가
        response.addDateHeader("today", add_date);
        response.addIntHeader("myNum", add_int);
        response.addIntHeader("myNum", 1000);   // 추가 하지만 제일 첫번째 값 출력됨
        response.addHeader("myNum", add_str);
        response.setHeader("myNum", "안중근");   //수정
    %>
<head>
    <title>Title</title>
</head>
<body>
    <h2> 응답 헤더 출력하기 </h2>

    <%
        Collection<String> headerNames = response.getHeaderNames();

        for(String hName : headerNames){
            String hValue = response.getHeader(hName);
        }
    %>

<h2>myNum 만 출력하기</h2>

<%
    Collection<String> myNum = response.getHeaders("myNum");
    for(String num : myNum){
%>

    <h2>myNum 만 출력하기</h2>
    <%
        }
    %>
</body>
</html>
