<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3>JSTL 코어 태그 예제 -> c:if c:choose</h3>
<c:set var="nara" value="${'korea'}"/>

<c:if test="${nara !=null}">
국가명 :<c:out value="${nara}"/><br/>
</c:if>

<c:if test="${!empty nara}">
국가명 : ${nara}<br/>
</c:if>

<c:choose>
<c:when test="${nara == 'korea'}">
<c:out value="${nara}"/>의 겨울은 춥다.<br/>
</c:when>

<c:when test="${nara == 'canada'}">
${nara}의 겨울은 너무 춥다.<br/>
</c:when>

<c:otherwise>그 외의 나라들의 겨울은 알 수 없다.<br/></c:otherwise>
</c:choose>