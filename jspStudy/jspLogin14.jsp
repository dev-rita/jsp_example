<%@ page contentType="text/html; charset=UTF-8"%>
<%
   String id=request.getParameter("id");

   if(id!=null && id.equals("abckkk")){
      response.sendRedirect("index.jsp");//index.jsp로 이동
   }else{
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body>
   <h3>잘못된 아이디 입니다!</h3>
</body>
</html>
<%   }%>