<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.InchCm"%>
<%
	InchCm ic=(InchCm)request.getAttribute("ic");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><%=ic.getInch() %>inchは<%=ic.getCm() %>cmです。</p>
<a href="/inch/Main">戻る</a>
</body>
</html>