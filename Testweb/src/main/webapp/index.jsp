<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- @author  mlx-->
<%@ page language="java" import="serviceImpl.AccountServiceImpl" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="entity.Account" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>欢迎来到在线博物馆系统</title>
    
    <link rel="stylesheet" type="text/css" href="main.css">
    <link rel="stylesheet" type="text/css" href="mainshow.css">
</head>
<body>
    <div class="navbar">
        <div class="sidebar">
        <input type="checkbox"  id="checkbox" >
        <label for="checkbox">
              <i aria-hidden="true">
              <img width="40" height="40" src="img/sideimg/side.png">
              </i>
             <span>首页 </span>
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
			<p align="center"><font color="#ff0000"><font face="Arial Black" size="7"><strong>欢迎来到
			<font color="#0000ff">在线博物馆系统</font><font color="#000000"><sup>^_^</sup></font></strong></font></font></p>
			<p align="right"><font style="BACKGROUND-COLOR: #ffff00" color="#ff0000"><strong>通过文物感受历史的厚重</strong></font></p>
			<p align="right"><font id="date" size="5"><strong>
			<script type="text/javascript"> 
			window.onload=function(){  
			setInterval(function(){
				 var date = new Date();
				 var sign1 = "-";
				 var sign2 = ":";
				 var year = date.getFullYear();
				 var month = date.getMonth() + 1; 
				 var day  = date.getDate(); 
				 var hour = date.getHours(); 
				 var minutes = date.getMinutes(); 
				 var seconds = date.getSeconds();
				 var weekArr = [ '星期日','星期一', '星期二', '星期三', '星期四', '星期五', '星期六'];
				 var week = weekArr[date.getDay()];
				 // 给一位数数据前面加 “0”
				 if (month >= 1 && month <= 9) {
				  month = "0" + month;
				 }
				 if (day >= 0 && day <= 9) {
				  day = "0" + day;
				 }
				 if (hour >= 0 && hour <= 9) {
				  hour = "0" + hour;
				 }
				 if (minutes >= 0 && minutes <= 9) {
				  minutes = "0" + minutes;
				 }
				 if (seconds >= 0 && seconds <= 9) {
				  seconds = "0" + seconds;
				 }
				//获取id=Date的标签，加入内容。	 
				 var d=document.getElementById("date"); 
				 d.innerHTML=year + sign1 + month + sign1 + day + " " + hour + sign2 + minutes + sign2 + seconds + " " + week;},1000)};
			</script></strong></font></p>
			<table border="3" style="width:100%;height:40px;border-collapse:collapse;cellpadding:5; cellspacing:5;">
			<tr class="trsty">
			      <td width="33%"><strong><a href="inner1.jsp">点击此处可以前往探访青铜器</a></strong></td>
			      <td width="33%"><strong><a href="inner2.jsp">点击此处可以前往探访三星堆文化</a></strong></td>
			      <td width="34%"><strong><a href="inner3.jsp">点击此处可以前往预约参观</a></strong></td>
			</tr>
			</table><br>
			<script src="mainshow.js"></script>
			
			<div class="lunbo">
				<div class="content">
				<ul id="itemm">
					<li class="item">
						<a href="#"><img class="showimg" src="img/siyangfangzun.jpg" ></a>
					</li>
					<li class="item">
						<a href="#"><img class="showimg" src="img/sanxingdui3.jpg" ></a>
					</li>
					<li class="item">
						<a href="#"><img class="showimg" src="img/matafeiyan.jpg" ></a>
					</li>
					<li class="item">
						<a href="#"><img class="showimg" src="img/qingtongmianjv.jpg" ></a>
					</li>
				</ul>
				<div id="btn-left"> < </div>
				<div id="btn-right">></div>
				<ul id="circle">
					<li class="circle"></li>
					<li class="circle"></li>
					<li class="circle"></li>
					<li class="circle"></li>
				</ul>
				</div>
			</div>
			<br><br>
             <fieldset>
                <legend><span style="font-weight: bold;">马踏飞燕</span>
                </legend>
	                <div id="flex-container">
			        <div class="makfloa">
						<img width="400" height="300" src="img/matafeiyan.jpg"/>
					</div>
					<div class="makfloa">
	                    铜奔马，又名“马踏飞燕”、“马超龙雀”等，为东汉青铜器，国宝级文物，1969年10月出土于甘肃省武威市雷台汉墓，现藏于甘肃省博物馆，为甘肃省博物馆镇馆之宝。
	                    <br>
						铜奔马通高34.5厘米，长45厘米，宽13.1厘米，重7.3千克，造型矫健精美，作昂首嘶鸣，疾足奔驰状，显示了一种勇往直前的豪情壮志，是中华民族伟大气质的象征。
						<br>
						奔马三足腾空、一足超掠飞鸟的瞬间，飞鸟回首惊顾，更增强奔马急速向前的动势，全身的着力点集注于超越飞鸟的一足之上，准确地掌握了力学的平衡原理，具有卓越的工艺技术水平。
						<br>
						1983年被国家旅游局确定为中国旅游标志；1986年被国家文物局专家组鉴定为国宝级文物；2002年被国家文物局列入首批禁止出国（境）展览文物目录。
						<br>
						2021年12月1日之后，东汉铜奔马将于每年5月1日至10月15日在甘肃省博物馆丝绸之路文明展厅展出，其余时间在库房维护保养。
						<br>
	                </div>
	             	</div>
              </fieldset>
              <br><br>
              <fieldset>
                <legend>
                <span style="font-weight: bold;">三星堆</span>
                </legend>
	                <div id="flex-container">
			        <div class="makfloa">
						<img width="400" height="300" src="img/sanxingdui1.jpg"/>
					</div>
					<div class="makfloa">
	                    三星堆古遗址位于四川省广汉市西北的鸭子河南岸，分布面积12平方千米，距今已有3000至5000年历史，是迄今在西南地区发现的范围最大、延续时间最长、文化内涵最丰富的古城、古国、古蜀文化遗址。
	                    <br>
	                    现有保存最完整的东、西、南城墙和月亮湾内城墙。三星堆遗址被称为20世纪人类最伟大的考古发现之一，昭示了长江流域与黄河流域一样，同属中华文明的母体，被誉为“长江文明之源”。
						<br>
						其中出土的文物是宝贵的人类文化遗产，在中国的文物群体中，属最具历史、科学、文化、艺术价值和最富观赏性的文物群体之一。
						<br>
						在这批古蜀秘宝中，有高2.62米的青铜大立人、有宽1.38米的青铜面具、更有高达3.95米的青铜神树等，均堪称独一无二的旷世神品。
						<br>
						而以金杖为代表的金器，以满饰图案的边璋为代表的玉石器，亦多属前所未见的稀世之珍。
	                </div>
	             	</div>
              </fieldset>
              <font color="#FF9900"><strong>
				<%
					AccountServiceImpl accountser=new AccountServiceImpl();
					List<Account> lis=accountser.CheckAllAccountService();
					out.print("所有管理员账号如下:<br>");
					out.print("账号&nbsp;用户名&nbsp;密码<br>");
					for(int i=0;i<lis.size();i++) {
						Account acc=lis.get(i);
						if(acc.getIsroot()==1){
							out.print(acc.getId()+"&nbsp;"+acc.getName()+"&nbsp;****"+acc.getPassword().substring(3));
							out.print("<br>");
						}
					}
					out.print("所有普通用户账号如下:<br>");
					out.print("账号&nbsp;用户名&nbsp;密码<br>");
					for(int i=0;i<lis.size();i++) {
						Account acc=lis.get(i);
						if(acc.getIsroot()==0)
						{
							out.print(acc.getId()+"&nbsp;"+acc.getName()+"&nbsp;****"+acc.getPassword().substring(3));
							out.print("<br>");
						}
					}
				%>
			</strong>
			</font>
         </div>
    </div>
   <script src="./static/test/js/jquery-3.2.1.min.js"></script>
</body>
</html>