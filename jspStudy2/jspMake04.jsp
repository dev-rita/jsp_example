<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="member" class="com.abc.vo.MemberInfo" scope="request"/>
<%-- jsp:useBean 액션태그로 MemberInfo 빈클래스 객체명 member를 생성. 
scope 속성은 자바빈 객체 member를 저장할 영역 --%>
<%
	member.setId("abc1234");
	member.setName("홍길동");
%>
<jsp:forward page="useObject.jsp"/><%--포워딩 되는 페이지--%>