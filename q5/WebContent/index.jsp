<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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
<option value="none">好きな食べ物を一つ選んでください</option>
<option value="susi">寿司</option>
<option value="ramen">ラーメン</option>
<option value="niku">焼き肉</option>
</select>
<input type="submit" value="送信" name="btn">
</form>
<%}else{ %>
<%
String favo=request.getParameter("favo");
if(favo == null){
	favo="[選択なし]";
}else{
	switch(favo){
	case "susi":
		favo="やっぱ寿司ですよね！";
		break;
	case "ramen":
		favo="バリエーション豊富だし、ラーメン最高!";
		break;
	case "niku":
		favo="やっぱ肉ですよね！";
		break;
	}
}
%>

<p><%=favo %></p>
<%} %>
</body>
</html>