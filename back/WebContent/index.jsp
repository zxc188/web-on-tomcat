<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>反馈</title>
		<script>
			function bac(){
			alert("多谢您的反馈，我们会及时改进");
			}
		</script>
</head>
<body>
<center><label>
		<textarea name="textarea" cols="100" rows="30"></textarea>
	</label></center>
	<center>
		<a href="软工实验.html"><input id="back" onclick="bac()" type="button" value="反馈"></a>
	</center>
</body>
</html>