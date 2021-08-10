<%@ page contentType="text/html; charset=UTF-8"%>

<h3>EL(Expression Language:표현 언어->외부 라이브러리 필요 없음)</h3>
[1]정수형:${100}<br/>
[2]실수형:${5.6}<br/>
[3]문자열형:${"홍길동"}<br/>
[4]논리형:${true}<br/>
[5]null:${null}<br/>

<%
	String input=null;
%>

<h3>표현 언어 연산자</h3>
\${10+5}=${10+5}<br/>
\${5/2}=${5/2}<br/>
\${5 div 2}=${5 div w}<br/><%-- div는 표현식 연산에서 나눗셈을 한다. (에러가 뜨지만 에러아님)--%>
\${5 mod 2}=${5 mod 2}<br/><%-- mod는 나머지 연산--%>
\${2 gt 10}=${2 gt 10}<%-- gt는 ~보다 크다--%>
\${empty input}=${empty input}<hr/>