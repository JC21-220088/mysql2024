<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JK3B02</title>
</head>

<%
	ArrayList<String[]> product1 =
		(ArrayList<String[]>) request.getAttribute("product1");
%>
<%
	ArrayList<String[]> product2 =
		(ArrayList<String[]>) request.getAttribute("product3");
%>



<body>
<FORM METHOD ="get" ACTION="./product">
<SELECT NAME="ID">

<% for(String[] ss : product1){%>
		<OPTION VALUE = "<%=ss[0] %>">
		<%=ss[1] %>
		</OPTION>
<%} %>


</SELECT>
<INPUT TYPE="SUBMIT" VALUE="絞り込む"/>
</FORM>
<table>
すべての商品の一覧<br>
<tr>
<th>JANコード</th>
<th>商品名</th>
<th>メーカー名</th>
</tr>
<% for(String[] ss : product2){%>

	<tr>
		
		<th><%= ss[0] %></th>
		<td><%= ss[1] %></td>
		<td><%= ss[2] %></td>
	</tr>
<%} %>



</table>
</body>
</html>