<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>옵션 선택 화면</title>
</head>
<body>
<form action="view.jsp"><%--method 속성을 생략하면 기본으로 get방식이다. get방식은 브라우저 주소창에 값이 노출된다. --%>
보고싶은 페이지 선택:<select name="code">
<%--select, checkbox, radio인 경우 파라미터 이름에 value 속성값이 담겨줘서 서버로 전송 --%>
<option value="A">A 페이지</option>
<option value="B">B 페이지</option>
<option value="C">C 페이지</option>

<input type="submit" value="이동"/>
</select>
</form>
</body>
</html>