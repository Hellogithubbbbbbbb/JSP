<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String id = request.getParameter("user_id");
        String pwd = request.getParameter("user_pwd");

        if(id.equalsIgnoreCase("must") && pwd.equals("1234")) {    // IgnoreCase 은 대소문자 구별안하겟다는뜻임
            response.sendRedirect("ResponseWelcome.jsp");
        }else{
            request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")  // 비밀번호 틀렷을때 다시 메인페이지로 돌려주고 loginErr 값은 1로 해서 돌려주겠다는 뜻임
                .forward(request,response);
        }
    %>
</body>
</html>
