<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录或注册</title>
<link rel="stylesheet" type="text/css" href="./regis.css">
</head>
<body>
<div class="container">


     <!-- 登录 -->
     <div class="container_form container--signin">
        <form action="login.jsp" method="post" class="form">
            <h2 class="form_title">用户登录</h2>
            <input type="number" placeholder="账号" class="input" name="idlog"/>
            <input type="password" placeholder="密码" class="input" size=20 name="passwordlog"/>
			<button class="btn">登录</button>
        </form>
    </div>

    <!-- 注册 -->
    <div class="container_form container--signup">
        <form action="regisacc.jsp" method="post" class="form">
            <h2 class="form_title">用户注册</h2>
            <input type="text" placeholder="用户名，为昵称，可任意取（可为空），20位以内" class="input" name="nameregis"/>
            <input type="number" placeholder="账号，为纯数字账号，不可与他人重复哦~" class="input" name="idregis"/>
            <input type="password" placeholder="密码，8位以上20位以内" class="input" name="passwordregis"/>
            <button class="btn">注册</button>
        </form>
    </div>

    <!-- 浮层 -->
    <div class="container_overlay">
        <div class="overlay">
            <div class="overlay_panel overlay--left">
                <button class="btn" id="signIn">已有账户了吗？去登录</button>
            </div>
            <div class="overlay_panel overlay--right">
                <button class="btn" id="signUp">还没有账户呢？去注册</button>
            </div>
        </div>
    </div>
</div>
<!-- 背景 -->
<div class="slidershow">
    <div class="slidershow--image" style="background-image: url('img/a.jpg')"></div>
    <div class="slidershow--image" style="background-image: url('img/b.jpg')"></div>
    <div class="slidershow--image" style="background-image: url('img/c.jpg')"></div>
    <div class="slidershow--image" style="background-image: url('img/d.jpg')"></div>
</div>

<!-- partial -->
  <script src="./regis.js"></script>
</body>
</html>