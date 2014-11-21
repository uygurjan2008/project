<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String rawQueryString = request.getQueryString();
	%>
	<p>
		original query string is:<%=rawQueryString%></p>
	<%
		String querystr = URLDecoder.decode(rawQueryString, "gbk");
		String querystr_8 = URLDecoder.decode(rawQueryString, "utf-8");
	%>
	<p>
		after gbk decode:<%=querystr%></p>
	<p>
		after utf-8 decode:<%=querystr_8%></p>
	<%
		String[] paramPairs = querystr.split("&");
		String[] paramPairs_8 = querystr_8.split("&");
		for (String paramPair : paramPairs) {

			out.print(paramPair);
			String[] nameValue = paramPair.split("=");
	%>
	<p>
		<%=nameValue[0]%>___________<%=nameValue[1]%>
	</p>


	<%
		}

		for (String paramPair : paramPairs_8) {

			out.print(paramPair);
			String[] nameValue = paramPair.split("=");
	%>
	<p>
		<%=nameValue[0]%>___________<%=nameValue[1]%>
	</p>



	<%
		}
	%>


</body>
</html>