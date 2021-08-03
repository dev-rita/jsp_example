<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
이 페이지는 from.jsp가 생성한 것입니다.
<jsp:forward page="to.jsp"/>
<%--페이지가 포워딩 되면 브라우저 주소창에서 실행되는 주소값과 실제 본문내용이 다르다. --%>
</body>
</html>