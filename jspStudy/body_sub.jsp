<%@ page contentType="text/html; charset=UTF-8"%>
body_sub에서 name파라미터 값:<%=request.getParameter("name")%>
<br/>
name 파라미터 값 목록:
<ul>
<%
String[] names=request.getParameterValues("name");//name파라미터 값 목록을 배열로 구한다.
for(String name:names){//자바 5에서 추가된 향상된 확장 for>>배열이나 컬렉션에 저장된 복수개의 원소값을 읽어오는 용도로 활용됨.
%>
<li><%=name %></li>
<%--jsp:param 액션 태그로 name 파라미터가 추가된 것이 기존 동일 이름 파라미터 값보다 우선한다.
(<jsp:param value="홍길동" name="name"/>)
동일 이름 파라미터가 존재하면 기존 파라미터 값을 유지 하면서 새로운 값을 추가한다.(중복o)
jsp:param액션태그로 추가한 파라미터는 jsp:include 액션태그로 포함되어 지는 페이지내에서만 유효하다.
(<jsp:include page="body_sub.jsp" flush="false">
<jsp:param value="홍길동" name="name"/>
</jsp:include>) --%>
<%} %>
</ul>