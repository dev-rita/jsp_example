<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>

<h4>1부터 100까지의 홀수 합</h4>
<c:forEach var="i" begin="1" end="100" step="2">
<c:set var="sum" value="${sum+i}"/>
</c:forEach>

홀수 누적합=${sum}

<hr/>

<h4>1부터 100까지의 짝수 합</h4>
<c:forEach var="i" begin="0" end="100" step="2">
<c:set var="sum" value="${sum+i}"/>
</c:forEach>

짝수 누적합=${sum}

<hr/>

<h4>4단 구구단</h4>
<ul>
<c:forEach var="k" begin="1" end="9">
<li>4X${k}=${4*k}</li>
</c:forEach>
</ul>


<%
	HashMap<String,Object> hm=new HashMap<>();
	
	hm.put("name","홍길동");
	hm.put("today",new Date());
%>

<h4>키, 값 쌍으로 출력</h4>
<c:set var="map" value="<%=hm%>"/>
<c:forEach var="i" items="${map}">
	${i.key}:${i.value}<br/>
</c:forEach>
