<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	request.setCharacterEncoding("UTF-8");//method=post로 전송되는 한글을 안깨지게 한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
<b>request.getParameter() 메소드 사용</b><br/>
name 파라미터:<%=request.getParameter("name") %><br/>
address 파라미터:<%=request.getParameter("address") %>
<p>
<strong>request.getParameterValues()메소드 사용</strong><br/>
<%
String[] values=request.getParameterValues("pet");//pet 파라미터 이름에 실려온 복수개의 값을 배열로 받는다.

if(values !=null && values.length>0){
	for(int i=0;i<values.length;i++){
%>		
	<%=values[i] %>&nbsp;&nbsp;<%--두칸의 빈공백 처리 --%>
<%}
}else{ %>
선택된 좋아하는 동물이 없습니다.
<%} %>
<hr/>
<b>request.getParameterNames() 메소드 사용</b><br/>
<%
Enumeration paramEnum=request.getParameterNames();//파라미터 이름 목록을 구함
while(paramEnum.hasMoreElements()){
	String name=(String)paramEnum.nextElement();

%>
<%=name %>&nbsp;&nbsp;
<%} %>
해당 메소드가 제일 많이 사용됨.
<hr/>
<b>request.getParameterMap() 메소드 사용</b><br/>
<%
	Map parameterMap=request.getParameterMap();//파라미터 맵을 구함. 맵은 파라미터 이름, 값 쌍으로 구성됨.
	String[] nameParam=(String[])parameterMap.get("name");//name파라미터이름에 해당값 값 배열을 구함.
	if(nameParam !=null){
		out.println(nameParam[0]);
	}
%>
</body>
</html>