<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%
    String[] data={"好きな食べ物を一つ選んでください",
    		"寿司",
    		"ラーメン",
    		"焼き肉",
    };
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(request.getParameter("btn") == null){ %>
<form>
<select name="favo">

<% for(int i=0;i<data.length;i++){ %>
<option value="<%=i %>"><%=data[i] %></option>
<%} %>
</select>
<input type="submit" value="送信" name="btn">
</form>
<%}else{ %>
<p><%=data[Integer.parseInt(request.getParameter("favo"))] %></p>
<%} %>
</body>
</html>