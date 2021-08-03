<%@ page contentType="text/html; charset=UTF-8"%>
<%
	session.setAttribute("id","abc56789");
	session.setAttribute("name","홍길동");//name문자열 속성 키이름에 홍길동을 Object 타입으로 업캐스팅을 해서 저장시킴.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>세션에 정보를 저장했습니다.</h3>
</body>
</html>