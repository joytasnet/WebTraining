<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String[] pict={"gu.png","choki.png","pa.png"};
String[] handNames={"ぐー","ちょき","ぱー"};
String btn=request.getParameter("btn");
String hand=request.getParameter("hand");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">
<title>じゃんけんぽん</title>
</head>
<body>
<form method="post">
<% for(int i=0;i<handNames.length;i++){ %>
<input type="radio" name="hand" value="<%=i%>"><%=handNames[i] %><br>
<%} %>
<button type="submit" name="btn">ショウブ</button>
</form>
<%if(btn != null && hand != null){ %>
<%
int userHand=Integer.parseInt(hand);
int pcHand=(int)(Math.random()*3);
String result;
int diff=(userHand+3 -pcHand)%3;
if(diff==0){
	result="あいこ";
}else if(diff==1){
	result="アナタのまけです...";
}else{
	result="アナタのかちです！";
}
%>
<div>
<img src="images/<%=pict[userHand]%>">
<img src="images/<%=pict[pcHand]%>">
</div>
<p><%=result %></p>
<%} %>
</body>
</html>