<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="msg" value="${'안녕하세요!'}"/><%-- jstl 변수 msg생성--%>

<c:set var="age" scope="page"><%--scope 속성은 JSTL 변수가 적용될 범위 지정. 기본값은 page이다. --%>
${30}
</c:set>
${30}
<c:out value="${msg}"/><%--JSTL로 출력--%>
${msg}
<br/>
나이:${age}
<br/>

<c:remove var="age" scope="page"/>
<%--age 변수 제거--%>
나이:<c:out value="${age}"/><%--변수가 없는데 nullpointException 에러 안뜸(EL,JSTL에서) --%>
<hr/>

<c:catch var="errmsg">
예외 발생 전
<%=10/0 %>
예외 발생 후 
</c:catch><%-- c:catch JSTL은 예외처리 --%>

<c:out value="${errmsg}"/>