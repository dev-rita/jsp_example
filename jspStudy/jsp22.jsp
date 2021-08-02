<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화 피라미터 읽어오기</title>
</head>
<body>
   초기화 피라미터 목록:
   <ul>
   <%
      Enumeration<String> initParamEnum=application.getInitParameterNames();//초기화 피라미터 목록을 구함
      while(initParamEnum.hasMoreElements()){
         String initParamName=initParamEnum.nextElement();//web.xml에 설정한 피라미터 이름을 구함
   %>
      <li><%=initParamName %> = <%=application.getInitParameter(initParamName) %></li>
      <%-- getInitParameter()는 피라미터 이름에 해당하는 초기화 피라미터 값을 web.xml로 읽어온다. 존재하지 않으면 null을 반환 --%>
   <%   }%>
   </ul>
</body>
</html>