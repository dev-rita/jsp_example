<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form method="post" action="viewParameter.jsp">
이름:<input type="text" name="name" size="14"/><br/><br/>
주소:<input type="text" name="address" size="36"/><br/><br/>
좋아하는 동물:<input type="checkbox" name="pet" value="dog"/>강아지
<%--checkbox, radio, select는 value속성값이 파라미터 이름에 대입되어 서버로 전송된다. --%>
<input type="checkbox" name="pet" value="pig"/>돼지
<input type="checkbox" name="pet" value="cat"/>고양이
<hr/>
<input type="submit" value="전송"/>
<input type="reset" value="취소"/>
</form>
</body>
</html>