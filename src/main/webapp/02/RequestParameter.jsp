<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%-- favo" 라는 배열 변수에 name 값 3개를 담는다 --%>
    <%-- 밑에 if 문에는 favo 가 1개 이상이면 for 문이 실행된다--%>
    <%
        request.setCharacterEncoding("UTF-8"); // 한글 깨지는것을 방지
        String id = request.getParameter("id");
        String sex = request.getParameter("sex");
        String[] favo = request.getParameterValues("favo");
        // ["eco","pol","ent"] 이렇게 배열
        String favoStr="";
        if(favo != null){
            for(int i=0;i<favo.length; i++){
                favoStr +=favo[i] + "";
        }
//            for(String s : favo){
//                favoStr += s + "";
//        }
        }
        String intro = request.getParameter("intro").replace("\r\n", "<br/>");
        // \r\n 은 \r = 엔터 , \n = 한줄 띄기 인데 자바에서나 통한다 여기서는 문자 그대로 출력이된다
        // \r\n 을 br/ 로 바꾸어 사용하겠다는 뜻이다  개행문자다  운영체제마다 다름 윈도우는 \r\n 임
    %>

    <ul>
        <li>아이디 : <%=id%></li>
        <li>성별 : <%=sex%></li>
        <li>관심사 : <%=favoStr%></li>
        <li>자기소개 : <%=intro%></li>

    </ul>
</body>
</html>
