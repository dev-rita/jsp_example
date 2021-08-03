<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String code=request.getParameter("code");
	String viewPageURL=null;
	
	if(code.equals("A")){
		viewPageURL="a.jsp";
	}else if(code.equals("B")){
		viewPageURL="b.jsp";
	}else if(code.equals("C")){
		viewPageURL="c.jsp";
	}
%>
<jsp:forward page="<%=viewPageURL %>"/>