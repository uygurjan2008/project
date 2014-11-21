<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="css/bootstrap-3.2.0/dist/css/bootstrap.min.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
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
	$(document).ready(function() {

		$(".submit").click(function() {

			var form = $("#login");
			var name = form.find("#username").val();
			var pass = form.find("#userpass").val();


			if(name==null||name=="")
				{
				alert("user name cannot be empty");
				form.find("#username").focus();					
				}
			else if(pass==null||pass==""){
				alert("user pass cannot be empty");
				form.find("#userpass").focus();					
				
				}
			else{
			$.ajax({
				url : "logincheck.jsp",
				type : "post",
				data : {
					username : name,
					userpass : pass
				},
				async : false,
				success : function(data) {

				}

			});

			window.open("logincheck.jsp");


			}
		});

		$(".close1").click(function() {

			window.close();

		});

	});
</script>
</head>
<body>




	<div align="center">
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
					<a class="btn close1">close</a> <a class="btn btn-lg submit">submit</a>
				</div>
			</form>

		</div>

	</div>



</body>
</html>