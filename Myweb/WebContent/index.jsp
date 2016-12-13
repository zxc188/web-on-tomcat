<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>我的博客</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<style type="text/css">
			h1.top{
			color:blue
			}
			p.log{
			color:blue;
			font-size:15px;;
			align:left;
			}
			nav {
				line-height:30px;
				background-color:#eeeeee;
				height:500px;
				width:300px;
				float:left;
				}
			header {
				background-color:#87CEFA;
				text-align:center;
				padding:5px;
				background:3.jpg;
					}
			section {
				width:1033px;
				background-color:#7FFFD4;
				height:500px;
				float:left;
					}
		</style>
		
<script>
		function log(){
		if(document.getElementById("login").value==="登录"){
		var name = parseFloat(prompt('请输入用户名:'));
		var key=parseFloat(prompt('请输入密码:'));
		var zxc=123;
		if(name===zxc&&key===123456){
		alert("欢迎登陆");
		document.getElementById("login").value="注销";
		}else{
		alert("登陆错误");
		}
		}else{
		var truthBeTold = window.confirm("您确定要注销吗");
		if(truthBeTold){
		alert("您已注销")
		document.getElementById("login").value="登录";
		}else{
		
		}
		}
		}
		function showLocale(objD){
			var str;
			var yy = objD.getYear();
			if(yy<1900) yy = yy+1900;
			var MM = objD.getMonth()+1;
			if(MM<10) MM = '0' + MM;
			var dd = objD.getDate();
			if(dd<10) dd = '0' + dd;
			var hh = objD.getHours();
			if(hh<10) hh = '0' + hh;
			var mm = objD.getMinutes();
			if(mm<10) mm = '0' + mm;
			var ss = objD.getSeconds();
			if(ss<10) ss = '0' + ss;
			var ww = objD.getDay();
			if  (ww==0)  ww="星期日";
			if  (ww==1)  ww="星期一";
			if  (ww==2)  ww="星期二";
			if  (ww==3)  ww="星期三";
			if  (ww==4)  ww="星期四";
			if  (ww==5)  ww="星期五";
			if  (ww==6)  ww="星期六";
			str = yy + "-" + MM + "-" + dd + " " + hh + ":" + mm + ":" + ss + "  " + ww;
			return(str);
			}
			function tick(){
					var today;
					today = new Date();
					document.getElementById("localtime").innerHTML = showLocale(today);
					window.setTimeout("tick()", 1000);
			}
</script>

</head>
<body>
<header>
					<h1 class="top"><center><i>我的主页<i></center></h1>
					<input id="login" type="button" onclick="log()" value="登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="http://localhost:8080/log/"><input type="button" value="注册"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="http://localhost:8080/back/"><input  type="button" value="反馈"></a>
					<hr/>
				</header>
				<nav>
					<br/><br/><br/><br/><br/>
					<a href=""><li text-align:"left">个人简历</li></a>
					<a href=""><li text-align:"left">我的github</li></a>
					<a href=""><li text-align:"left"></li></a>
					<a href=""><li text-align:"left">个人简历</li></a>
					<a href=""><li text-align:"left">个人简历</li></a>
				</nav>
				<section>
					
				</section>
				<footer>
					<p id="localtime"></p>
						<script type="text/javascript">
							tick();
						</script>
				</footer>
</body>
</html>