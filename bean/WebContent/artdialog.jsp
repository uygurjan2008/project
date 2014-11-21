<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Font"%>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.Graphics"%>
<%@page import="java.awt.image.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="data/artDialog/jquery.artDialog.js"></script>

<script type="text/javascript" src="data/artDialog/artDialog.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>

	<form action="get.jsp">
		<label for="">user name</label><input type="text" name="name" /> <label
			for="">pass word</label><input type="password" name="password" /> <input
			type="submit" />
	</form>
	<p>frame</p>
	<%
		BufferedImage image = new BufferedImage(340, 160,
				BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		g.fillRect(0, 0, 400, 400);
		g.setColor(new Color(255, 0, 0));
		g.fillArc(20, 20, 100, 100, 30, 120);
		g.setColor(new Color(0, 255, 0));
		g.fillArc(20, 20, 100, 100, 150, 120);
		g.setColor(new Color(0, 0, 255));
		g.fillArc(20, 20, 100, 100, 270, 120);
		g.setColor(new Color(0, 0, 0));
		g.setFont(new Font("Arial Black", Font.PLAIN, 16));
		g.drawString("red:Climb", 200, 60);
		g.drawString("green:swim", 200, 100);
		g.drawString("blue:jump", 200, 140);
		g.dispose();
		ImageIO.write(image, "jpg", response.getOutputStream());
	%>



</body>
</html>