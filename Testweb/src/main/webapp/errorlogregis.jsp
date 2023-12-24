<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>出错了</title>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
    <div class="navbar">
        <div class="sidebar">
        <input type="checkbox"  id="checkbox" >
        <label for="checkbox">
              <i aria-hidden="true">
              <img width="40" height="40" alt="" src="img/sideimg/side.png">
              </i>
             <span>出错了 </span>
        </label>
        <ul>
            <li id="tomake">
                <% if(session.getAttribute("username")==null){%>
                <img class="touxiang" src="./img/touxiang/1.png" > 
                <span>欢迎您!您可以
                <a href="regis.jsp">
                	登录或注册
                </a>
                </span>
                <% }else{
                	String toimg="./img/touxiang/"+session.getAttribute("username")+".jpg";
                %>
                <img class="touxiang" src="<%=toimg%>" > 
                <span>
                	<%=session.getAttribute("username") %>
                 <a>个人中心</a><a href="logout.jsp">登出</a>
                </span>
                <%} %>
            </li>
            <li>
                <a href="index.jsp">
                    <i aria-hidden="true">
                    <img width="25" height="25" alt="" src="img/sideimg/home.png">
                    </i>
                    <span>博物馆首页</span>
                </a>
            </li>
            <li>
                <a href="inner1.jsp">
                    <i aria-hidden="true">
                    <img width="25" height="25" alt="" src="img/sideimg/inner1.png"></i>
                    <span>青铜器界面</span>
                </a>
            </li>
            <li>
                <a href="inner2.jsp">
                    <i aria-hidden="true">
                    <img width="25" height="25" alt="" src="img/sideimg/inner2.png"></i>
                    <span>三星堆文化</span>
                </a>
            </li>
            <li>
                <a href="inner3.jsp">
                    <i aria-hidden="true">
                    <img width="25" height="25" alt="" src="img/sideimg/inner3.png"></i>
                    <span>订单列表</span>
                </a>
            </li>
            <li>
                <a href="inner4.jsp">
                    <i aria-hidden="true">
                    <img width="25" height="25" alt="" src="img/sideimg/inner4.png"></i>
                    <span>更多内容</span>
                </a>
            </li>
        </ul>
        </div>
         <div class="main_content">
			<p align="center"><font color="#ff0000">
			<font face="Arial Black" size="7">
			<strong>登录/注册出错了！！
			</strong></font></font></p>
			<p align="right"><font style="background-color: #ffff00" color="#ff0000">
			<strong>请重新<a style="text-decoration: none;" class="astyle" href="regis.jsp">登录/注册</a>&nbsp;&nbsp;&nbsp;或返回其他界面</strong></font></p>
         </div>
    </div>
   
</html>