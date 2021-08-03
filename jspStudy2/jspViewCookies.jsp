<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키목록</title>
</head>
<body>
쿠키목록:<br/>
<%
	Cookie[] cookies= request.getCookies();//쿠키목록을 배열로 반환
	if(cookies !=null && cookies.length>0){//쿠키값이 있다면 참
		for(int i=0;i<cookies.length;i++){
%>
<%=cookies[i].getName() %> = <%=cookies[i].getValue()%><hr/>
<%
		}//for end
	}else{
%>
쿠키가 존재하지 않습니다!
<%
	}
%>
</body>
</html>