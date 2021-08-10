<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<form method="post" action="EL_04.jsp">
<label for="name">이름</label>
<input type="text" name="name" id="name" value="${param.name}"/>
<input type="submit" value="전송"/>
</form>
<hr/>
입력하신 이름은 <b>${param.name}</b>입니다.