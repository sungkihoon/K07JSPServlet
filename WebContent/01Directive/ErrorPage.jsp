<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<%--
	isErrorPage 지시어
	: 현재 JSP페이지가 에러처리를 담당하는지 구분하는 속성으로
	false가 디폴트값이다. 에러처리를 위해서 true로 설정해야한다.
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ErrorPage.jsp</title>
</head>
<body>
	<h2>에러발생됨 : 관리자에게 문의하세요</h2>
	<h3>연락처 : 010-1234-5678</h3>
	<h3>서버 업그레이드 중입니다.</h3>
	<img src="data:image/png;base64,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" width="300" />
	<h3>
		에러내용 :
		<%=exception.getMessage() %>
	</h3>

</body>
</html>