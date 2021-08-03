<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%
	Calendar c=Calendar.getInstance();
	request.setAttribute("time",c);//time속성 키이름에 c 업캐스팅 Object타입 값 저장
%>
<jsp:forward page="viewTime.jsp"/>