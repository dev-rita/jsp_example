<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="score" value="<%=new int[]{90,100,80,85,95,75} %>"/>

**점수 출력**<br/>
<c:forEach var="s" items="${score}" begin="0" end="5"><%--배열 인덱스가 0부터 시작이기 때문 --%>
 ${s}<br/>
 <c:set var="total" value="${total+s}"/><%-- 누적합을 구해서 total에 저장 --%>
</c:forEach>
<hr/>
점수 총합:<c:out value="${total}"/>
<hr/>

*홀수 출력*<br/>
<c:forEach var="i" begin="1" end="10" step="2">
<%--begin 시작속성, end 끝속성, step 증감값 --%>
<c:out value="${i}" />&nbsp;&nbsp;<%--두칸의 빈공백 처리 --%>
</c:forEach>