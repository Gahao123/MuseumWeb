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
             <span>青铜器</span>
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
                	//String toimg="./img/1.png";
                	//out.print(toimg);
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
			<p align="center"><font color="#ff0000"><font face="Arial Black" size="7"><strong>巧夺天工的
			<font color="#0000ff">中国古代青铜器</font><font color="#000000"><sup>^_^</sup></font></strong></font></font></p>
			<p align="right"><font style="BACKGROUND-COLOR: #ffff00" color="#ff0000"><strong>通过文物感受历史的厚重</strong></font></p>
             
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
                <legend><span style="font-weight: bold;">后母戊鼎</span>
                </legend>
	                <div id="flex-container">
			        <div class="makfloa">
						<img width="400" height="300" src="img/houmuwuding.jpg"/>
					</div>
					<div class="makfloa">
	                    商后母戊鼎，又称司母戊鼎、司母戊大方鼎，是商后期（约前十四世纪至前十一世纪）铸品，于1939年出土于河南省安阳市武官村，现藏于中国国家博物馆《古代中国》基本陈列展厅内。
	                    <br>
						商后母戊鼎高133厘米、口长110厘米、口宽79厘米，重832.84千克；器厚立耳，折沿，腹部呈长方形，下承四柱足。器腹四转角、上下缘中部、足上部均置扉棱。商后母戊鼎器身与四足为整体铸造，鼎耳则是在鼎身铸成之后再装范浇铸而成 。
						<br>
						商后母戊鼎，形制巨大，雄伟庄严，工艺精巧；鼎身四周铸有精巧的盘龙纹和饕餮纹，增加了文物本身的威武凝重之感。
						<br>
						足上铸的蝉纹，图案表现蝉体，线条清晰。腹内壁铸有“后母戊”三字，字体笔势雄健，形体丰腴，笔划的起止多显峰露芒，间用肥笔。
	                </div>
	             	</div>
              </fieldset>
              <br><br>
              <fieldset>
                <legend><span style="font-weight: bold;">四羊方尊</span>
                </legend>
	                <div id="flex-container">
			        <div class="makfloa">
						<img width="400" height="300" src="img/siyangfangzun.jpg"/>
					</div>
					<div class="makfloa">
	                    商四羊青铜方尊是商代晚期青铜礼器，祭祀用品。1938年出土于湖南省宁乡县黄材镇月山铺转耳仑的山腰上（炭河里遗址），现收藏于中国国家博物馆。
	                    <br>
						商四羊青铜方尊是中国现存商代青铜方尊中最大的一件，其每边边长为52.4厘米，高58.3厘米，重量34.5千克，长颈，高圈足，颈部高耸，尊四角各塑一羊，肩部四角是4个卷角羊头，羊头与羊颈伸出于器外，羊身与羊腿附着于尊腹部及圈足上。
						<br>
						同时，方尊肩饰高浮雕蛇身而有爪的龙纹，尊四面正中即两羊比邻处，各一双角龙首探出器表，从方尊每边右肩蜿蜒于前居的中间。
						<br>
						商四羊青铜方尊整个器物用块范法浇铸，一气呵成，巧夺天工，显示了高超的铸造水平，被史学界称为“臻于极致的青铜典范”，位列中国十大传世国宝之一。

	                </div>
	             	</div>
              </fieldset>
         </div>
         
         
    </div>
   

</body>
</html>