<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.abc.vo.*,com.abc.dao.*" %>

<%
	request.setCharacterEncoding("UTF-8");//method=post로 전달되는 한글을 안깨지게 한다.
%>

<jsp:useBean id="b" class="com.abc.vo.Board8VO"/>
<jsp:setProperty name="b" property="*"/><%--값 저장 액션태그, 프로퍼티 속성값이 * 이면 전달된 값을 한꺼번에 저장할 수 있다.
이렇게 할 수 있는 이유는 파라미터 이름과 빈클래스 변수명이 같기 때문이다.--%>

<%
	Board8DAOImpl bdao=new Board8DAOImpl();

	bdao.insertBoard(b);//게시판 저장
%>
<script>
alert('게시판이 저장에 성공했습니다!');
location="board_list.jsp";
</script>