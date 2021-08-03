<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Cookie[] cookies=request.getCookies();

	if(cookies !=null && cookies.length > 0){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("name")){//쿠키이름이 name과 같다면 참
				Cookie cookie=new Cookie("name","JSP프로그래밍");//쿠키값 변경 빈공백 못들어감(오류남)
				response.addCookie(cookie);//쿠키추가
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>name 쿠키값을 변경합니다.</h3>
</body>
</html>