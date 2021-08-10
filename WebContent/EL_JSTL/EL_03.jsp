<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setAttribute("name","홍길동");//name문자열 키 속성명에 Object타입으로 업캐스팅 한 값 홍길동 저장
%>
<h4>닷 연산자로 접근</h4><!-- 브라켓 연산자보다 닷연산자 더 잘쓰임. 작성하기 쉽기 때문 -->
${requestScope.name}<br/>
${param.id}<hr/><!-- EL_03.jsp?id=aaa로 쿼리스트링 방식으로 파라미터값을 줌 -->

<h4>브라켓 연산자로 접근</h4>
${requestScope["name"]}<br/>
${param['id']}<hr/>

<h4>jsp 표현</h4>
<%=request.getAttribute("name")%><br/>
<%=request.getParameter("id")%><hr/>