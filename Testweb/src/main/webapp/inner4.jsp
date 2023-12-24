<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- @author  mlx-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>欢迎来到在线博物馆系统</title>
    <link rel="stylesheet" type="text/css" href="main.css">
    <link rel="stylesheet" type="text/css" href="inner4.css">
    <!-- 引入字体图标 
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">-->
</head>
<body>
    <div class="navbar">
        <div class="sidebar">
        <input type="checkbox"  id="checkbox" >
         <label for="checkbox">
              <i aria-hidden="true">
              <img width="40" height="40" alt="" src="img/sideimg/side.png">
              </i>
             <span>更多内容 </span>
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
                    <span>预约参观</span>
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
         <fieldset>
                <legend>
                  <span>&nbsp;浙江博物馆 &nbsp;&nbsp;——————————————&nbsp; &nbsp; 山西博物馆&nbsp;</span>
        			</legend>
	                <div class="playtype">
			        <div class="makfloa">
			        <a href="https://www.zhejiangmuseum.com/">
						<img width="400" height="300" alt="浙江博物馆" src="extraimg/zhejiangmuse.jpg"/>
					</a>
					</div>
					
					<div class="makfloa">
					<a href="http://www.shanximuseum.com/sx/index/index.html">
	                    <img width="400" height="300" alt="山西博物馆" src="extraimg/shanximuse.jpg"/></a>
	                </div>
	             	</div>
         </fieldset>
         <br><br>
         <fieldset>
                <legend>
                <span>&nbsp;河南博物馆&nbsp;&nbsp;——————————————&nbsp; &nbsp; 山东博物馆&nbsp;</span>
        		</legend>
	                <div class="playtype">
			        <div class="makfloa">
			        <a href="https://www.chnmus.net/">
						<img width="400" height="300" alt="河南博物馆" src="extraimg/henanmuse.png"/></a>
					</div>
					<div class="makfloa">
					<a href="http://www.sdmuseum.com/">
	                    <img width="400" height="300" alt="山东博物馆" src="extraimg/shandongmuse.jpg"/></a>
	                </div>
	             	</div>
          </fieldset>
          <br><br>
          <fieldset>
                <legend>
                <span>&nbsp;辽宁博物馆 &nbsp;&nbsp;——————————————&nbsp; &nbsp; 陕西博物馆&nbsp;</span>
        		</legend>
	                <div class="playtype">
			        <div class="makfloa">
			        <a href="https://www.lnmuseum.com.cn/#/home">
						<img width="400" height="300" alt="辽宁博物馆" src="extraimg/liaoningmuse.png"/></a>
					</div>
					<div class="makfloa">
					<a href="https://www.sxhm.com/">
	                    <img width="400" height="300" alt="陕西博物馆" src="extraimg/shanximuse.png"/></a>
	                </div>
	             	</div>
          </fieldset>
          <br><br>
          <fieldset>
                <legend>
                <span>&nbsp;南京博物馆 &nbsp;&nbsp;——————————————&nbsp; &nbsp; 江西博物馆&nbsp;</span>
        		</legend>
	                <div class="playtype">
			        <div class="makfloa">
			        <a href="https://www.njmuseum.com/zh">
						<img width="400" height="300" src="extraimg/nanjingmuse.png"/></a>
					</div>
					<div class="makfloa">	
					<a href="https://www.jxmuseum.cn/">
	                    <img width="400" height="300" src="extraimg/jiangximuse.png"/></a>
	                </div>
	             	</div>
          </fieldset>
    </div>
   
</div>
</body>
</html>