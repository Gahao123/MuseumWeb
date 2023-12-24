<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- @author  mlx-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>欢迎来到在线博物馆系统</title>
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
             <span>三星堆 </span>
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
			<p align="center"><font color="#ff0000"><font face="Arial Black" size="7"><strong>神秘的
			<font color="#0000ff">三星堆文化</font><font color="#000000"><sup>^_^</sup></font></strong></font></font></p>
			<p align="right"><font style="BACKGROUND-COLOR: #ffff00" color="#ff0000"><strong>通过文物感受历史的厚重</strong></font></p>
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
              <br><br>
              <fieldset>
                <legend>
                <span style="font-weight: bold;">三星堆</span>
                </legend>
	                <div id="flex-container">
			        <div class="makfloa">
						<img width="400" height="300" src="img/sanxingdui2.jpg"/>
					</div>
					<div class="makfloa">
	                    2021年3月20日，三星堆遗址考古工作中新发现的6个“祭祀坑”已出土了500多件重要文物，其中3个坑中发现有象牙。3月21日，4号坑一根重达100多斤的象牙被完整提取。
	                    <br>
	                    三星堆“祭祀坑”出土了大量重要文物，保存完整的东、西、南城墙和月亮湾内城墙，但已发掘的面积只占遗址总面积的2%左右。
	                    <br>
						2021年5月28日，三星堆新发现6个“祭祀坑”发掘收获颇丰，三星堆新发现6个“祭祀坑”已出重要文物一千余件。
						<br>
						此外，三星堆遗址将联合金沙遗址申报世界文化遗产，加快建设三星堆国家遗址公园。 
						<br>
						9月9日，三星堆遗址祭祀区三号坑、四号坑再发现等阶段性重大考古成果。

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
						<img width="400" height="300" src="img/sanxingdui3.jpg"/>
					</div>
					<div class="makfloa">
	                    因为三星堆遗址的发现，与长期以来历史学界对巴蜀文化的认识大相径庭，有些地方甚至完全不同。历史学界一向认为，与中原地区相比，古代巴蜀地区是一个相对封闭的地方，与中原文明没有关联或很少有交往。
	                    <br>
	                    而三星堆遗址证明，它应是中国夏商时期前后，甚至更早的一个重要的文化中心，并与中原文化有着一定的联系。验证了古代文献中对古蜀国记载的真实性。
						<br>
						以前历史学界认为，中华民族的发祥地是黄河流域，然后渐渐地传播到全中国。而三星堆的发现将古蜀国的历史推前到5000年前，证明了长江流域与黄河流域一样同是中华民族的发祥地，证明了长江流域地区存在过不亚于黄河流域地区的古文明。
						<br>
						两个祭祀坑坑出土的青铜器，除青铜容器具有中原殷商文化和长江中游地区的青铜文化风格外，其余的器物种类和造型都具有极为强烈的本地特征，它们的出土，首次向世人展示商代中晚期蜀国青铜文明的高度发达和独具一格的面貌。
						<br>
						在青铜器冶铸方面，范铸法和分铸法的使用，以铅锡铜为主的三元合金的冶炼，表明在商周时期，三星堆古蜀国即已有高度发达的青铜文明，有力地驳斥了传统史学关于中原周边文化滞后的谬误。
						<br>
						三星堆文物是具有世界影响的文物，属世界文化遗产范畴。
	                </div>
	             	</div>
              </fieldset>
         </div>
         
         
    </div>
   

</body>
</html>