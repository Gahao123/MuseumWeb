<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- @author  mlx-->
<%@ page language="java" import="serviceImpl.PlaceServiceImpl" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="entity.Place" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>欢迎来到在线博物馆系统</title>
    <link rel="stylesheet" type="text/css" href="main.css">
    <link rel="stylesheet" type="text/css" href="inner3.css">
</head>
<body>
    <div class="navbar">
        <div class="sidebar">
        <input type="checkbox"  id="checkbox" >
         <label for="checkbox">
              <i aria-hidden="true">
              <img width="40" height="40" alt="" src="img/sideimg/side.png">
              </i>
             <span>预约参观 </span>
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
			        <% if(session.getAttribute("username")==null){%>
                <p align="center"><font color="#ff0000">
			<font face="Arial Black" size="7">
			<strong>您还没有登录！！
			</strong></font></font></p>
			<p align="right"><font style="BACKGROUND-COLOR: #ffff00" color="#ff0000">
			<strong>请<a class="astyle" href="regis.jsp">登录/注册</a>后再进行预约参观 &nbsp;&nbsp;&nbsp;或返回其他界面</strong></font></p>
                <% }else{
                	String toimg="./img/touxiang/"+session.getAttribute("username")+".jpg";
                %>
                <span>
                <p align="center"><font color="#ff0000"><font face="Arial Black" size="7"><strong>欢迎进行
				<font color="#0000ff">预约参观</font><font color="#000000"><sup>^_^</sup></font></strong></font></font></p>
				
				<p align="right"><font style="background-color: #ffff00" color="#ff0000"><strong>通过实践体会历史的深度</strong></font></p>
                </span>
                <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#FFA500" style="border-collapse:collapse">
			    <tr style="text-align:center;">
			      <td width="15%" bgcolor='#A4B6D7'>编号</td>
			      <td width="25%" bgcolor='#A4B6D7'>展馆名称</td>
			      <td width="35%" bgcolor='#A4B6D7'>展馆地点</td>
			      <td width="25%" bgcolor='#A4B6D7'>展出时间</td>
			    </tr>
			    <%
					PlaceServiceImpl accountser=new PlaceServiceImpl();
					List<Place> lis=accountser.CheckAllPlaceService();
					for(int i=0;i<lis.size();i++) {
						Place pla=lis.get(i);%>
						<tr style="text-align:center;">
					    <td width="15%"><%=pla.getId() %></td>
			      		<td width="25%"><%=pla.getName() %></td>
			      		<td width="35%"><%=pla.getLocation() %></td>
			      		<td width="25%">
			      		<%= pla.getTimel()/100+":"%>
			      		<% if(pla.getTimel()%100<10){
			      			out.print("0");
			      		}
			      		%>
			      		<%=pla.getTimel()%100+"~"+pla.getTimer()/100+":"%>
			      		<% if(pla.getTimer()%100<10){
			      			out.print("0");
			      		}
			      		%>
			      		<%=pla.getTimer()%100%>
			      		</td>
					    </tr>
					<% }%>
			    </table>
                
                <div class="container">
		        <form action="#" method="post" class="form">
		            <h2 class="form_title">预约信息填写</h2>
		            <input type="text" placeholder="姓名" class="input" name="idlog"/>
		            <input type="password" placeholder="手机号" class="input" size=20 name="passwordlog"/>
		            <input type="text" placeholder="预约时间" class="input" size=20/>
					<button class="btn">提交预约</button>
		        </form>
		    	</div>
		    	<% }%>
         </div>
         
         
    </div>
   

</body>
</html>