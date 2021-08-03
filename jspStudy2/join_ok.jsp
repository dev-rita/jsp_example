<%@ page contentType="text/html; charset=UTF-8"%>
<%
 	request.setCharacterEncoding("UTF-8");//method=post로 전달되는 한글을 서버에서 안 깨지게 한다.
%>
<jsp:useBean id="m" class="com.abc.vo.MemberInfo" />
<jsp:setProperty name="m" property="*"/>
<%--값 저장 액션태그. 프로퍼티 속성값을 *로 처리할 수 있는 것은 빈클래스 멤버변수명(MemberInfo.java)과
 파라미터 이름(jspMemberJoin.jsp)이 같기 때문이다. --%>
<jsp:setProperty name="m" property="password" value="<%=m.getId() %>"/>
<%-- property는 자바의 변수 명이다. 비번으로 아이디값을 저장--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<table border="1">
<tr>
<th>아이디</th> <td><jsp:getProperty property="id" name="m"/></td>
<%-- 값 반환 액션태그. 자바로 표현하면 m.getId()와 같은 기능을 한다. --%>
<th>비밀번호</th> <td><%=m.getPassword() %></td>
</tr>

<tr>
<th>회원이름</th> <td><jsp:getProperty property="name" name="m"/></td>
<th>이메일</th> <td><jsp:getProperty property="email" name="m"/></td>
</tr>

<tr>
<th colspan="4"><input type="button" value="회원가입" onclick="location='jspMemberJoin.jsp';"/></th>
<%--자바 스크립트 location 객체에 의해서 회원가입 창으로 이동 --%>
</tr>
</table>
</body>
</html>