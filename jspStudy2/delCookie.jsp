<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Cookie[] cookies=request.getCookies();
	if(cookies !=null && cookies.length>0){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("name")){
				Cookie cookie=new Cookie("name","");	
				cookie.setMaxAge(0);//쿠키만료(삭제>>로그아웃)
				response.addCookie(cookie);	
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
<h3 style="color:red;">name 쿠키를 삭제합니다.</h3>
</body>
</html>