<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录失败</title>
	<style type="text/css">
		body,html{
			margin: 0;
			padding: 0;
			height: 100%;
		}
		.container{
			height: 100%;
			background: linear-gradient(to right,#00d2ff,#eaecc6);
		}
		.box{
			background: rgba(255,255,255);
			width: 400px;
			height: 350px;
			border-radius: 15px;
			text-align: center;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
		}
		.title{
			height: 50px;
			font-weight: bold;
			font-size: 40px;
			margin: 60px 0 100px;
			text-shadow: 2px 2px 5px rgba(72,61,139,.2);
		}
		.button{
			height: 45px;
			width: 70%;
			margin: 0 auto;
			line-height: 45px;
			border: none;
			color: #fff;
			font-size: 14px;
			font-weight: bold;
			letter-spacing: 10px;
			text-align: center;
			cursor: pointer;
			position: relative;
			border-radius: 10px;
			background: linear-gradient(to right,#00d2ff,#eaecc6);
			background-size: 300%;
			-webkit-transition-duration: 0.4s; /* Safari */
			transition-duration: 0.4s;
		}
		.button:hover{
			box-shadow: 0 5px 15px 0 rgba(65,105,225,0.24),0 10px 30px 0 rgba(65,105,225,0.19);
			transition: .4s;
			animation: btnAnimate 2s infinite;

		}
		@keyframes btnAnimate {
			70%{
				background-size: 100%;
			}
		}
		a{
			line-height: 40px;
			color: #fff;
			font-weight: bold;
			letter-spacing: 10px;
			text-decoration: none;
		}
	</style>
</head>
<body >
<div class="container">
	<div class="box">
		<div class="title">登录失败</div>
		<div class="button"><a href="${pageContext.request.contextPath }/toLogin">重新登录</a></div>
	</div>
</div>
</body>
</html>