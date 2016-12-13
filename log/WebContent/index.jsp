<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<title>注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<style type="text/css">
			p{
				text-align:left;
				color:blue;
			}
		</style>
		<script>
			function ok(){
			var psw1=document.getElementById("password1").value;
			var psw2=document.getElementById("password2").value;
			var email=document.getElementById("email").value;
			var number=document.getElementById("number").value;
			var p1=new RegExp("@");
			var o1,o2,o3;
			var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			if(psw1==psw2){
			o1=1;
			}else{
			alert("密码不一致");
			}
			if(number.match(/^1[3|4|5|8][0-9]\d{4,8}$/)){
			o3=1;
			}else{
			alert("您的电话号码有误");
			}
			if(reg.test(email)&&email!=null){
			o2=1;
			}else{
			alert("您的邮箱输入错误");
			}
			if(o1==1&&o2==1&&o3==1){
			alert("注册成功");
			window.open("软工实验.html");
			window.opener=null;
			window.close();
			}
			}
		</script>
</head>
<body>
<div>
			<p>用户名</p>
			<input type="text" style="width:200px">
			<p>性别</p>
			MAN<input type="radio" value="MAN" name="sex" checked>
			<br/>
			WOMAN<input type="radio" value="WOMAN" name="sex">
			<p>电话号码</p>
			<input type="text" id="number" style="width:200px">
			<p>邮箱</p>
			<input type="text" id="email" style="width:200px">
			<p>密码</p>
			<input type="text" id="password1" style="width:200px">
			<p>请再次输入密码</p>
			<input type="text" id="password2" style="width:200px">
			<br><br>
			<input type="button" id="ok" value="注册" onclick="ok()" style="width:100px">
		</div>
</body>
</html>