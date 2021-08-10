<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="fruit" value='${param.name}'/><%-- *.jsp?name=값으로 전달된 파라미터 값을 받아서 fruit JSTL변수에 저장--%>

파라미터 name에 실려온 값:
<c:if test="${!empty fruit}">
<c:out value="${fruit}"/>
</c:if>

<hr/>
<c:choose>
<c:when test="${fruit == 'apple'}">
${fruit}:사과
</c:when>
<c:when test="${fruit == 'banana'}">
${fruit}:바나나
</c:when>
<c:otherwise>해당 사항 없음.</c:otherwise>
</c:choose>