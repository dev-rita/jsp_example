<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="str01" value="Abc"/>

length(str01)=${fn:length(str01)}<br/>
영문 대문자 : ${fn:toUpperCase(str01)}<br/>
영문 소문자 : ${fn:toLowerCase(str01)}<br/>
0이상 2미만 사이의 문자 추출: ${fn:substring(str01,0,2)}<br/>
b문자를 d문자로 변경: ${fn:replace(str01,'b',"d")}<br/>

<c:set var="tokens" value="1,2,3,4,5"/>
<c:set var="arr" value="${fn:split(tokens,',')}"/>
<%-- ,를 기준으로 문자를 분리해서 배열로 만든다.--%>
<c:forEach var="i" items="${arr}">
${i}<br/>
</c:forEach>
<hr/>

-로 배열원소값 결합 : ${fn:join(arr,'-')}<hr/>