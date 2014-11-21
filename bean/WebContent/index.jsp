<%@page import="com.uyghur.dbutil"%>
<%@page import="com.uyghur.person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.loginform {
	width: 500px;
	height: 350px;
	margin-top: 10%;
	border: 1px solid;
	box-shadow: 0 0 26px 30px #B8B6B4;
	border-radius: 50px;
	padding-top: 60px;
	margin-top: 10%;
	border: 1px solid;
	box-shadow: 0 0 26px 30px #B8B6B4;
	border-radius: 50px;
}

.btn-lg {
	width: 255px;
	border: 1px solid;
	margin-top: 45px;
	/* margin-left: -85px; */
}

.gap {
	margin-top: 20px;
}

.close1 {
	border: 1px solid;
	margin-top: 43px;
	margin-right: 10px;
	height: 43px;
}
</style>


<script type="text/javascript">
	function openwindow() {
		var b = document.getElementById("win");
		b.style.display = "block";
	}

	function closewin() {
		console.log("close");
		var b = document.getElementById("win");
		b.style.display = "none";

	}
</script>




</head>
<body>


	<%
		if (session.getAttribute("users") != null) {
	%>

	<p>
		username:<%=session.getAttribute("users")%>
	</p>
	<%
		} else {

			response.sendRedirect("login.jsp");
	
			
			
		}
	%>


	<%!int a = 1;%>

	<p>
		today is
		<%=new java.util.Date()%>
	</p>
	<%
		for (int i = 2; i < 10; i++) {
	%>

	<p>
		<label for="" style="font-size: <%=i * 20%>px">test</label>
	</p>
	<%
		}
	%>



	the
	<%=a++%>th visitor



	<p>java among jsp</p>
	<%
		person p1 = new person();
		pageContext.setAttribute("p1", p1);
		p1.setName("wawa");
		p1.setAge(23);
	%>
	he is
	<p><%=p1.getAge()%></p>
	years old,his name is
	<%=p1.getName()%>


	<p>database on java</p>



	<div align="center" id="win"
		style="width: 100%; top: 0; height: 100%; position: absolute; background: gray; display: none;">

		<div align="center" class="loginform">
			<form id="login">
				<div class="gap">
					<label for="" class="info">user name</label> <input type="text"
						class="input-lg" name="username" id="username"
						placeholder="type user name" />
				</div>
				<div>
					<p></p>
				</div>
				<div class="gap">
					<label for="">pass word</label> <input class="input-lg"
						type="password" name="userpass" id="userpass" />
				</div>
				<div style="margin-top: 20px;">
					<a class="btn close1" onclick="closewin()">close</a> <a
						class="btn btn-lg submit">submit</a>
				</div>
			</form>

		</div>
	</div>





</body>
</html>