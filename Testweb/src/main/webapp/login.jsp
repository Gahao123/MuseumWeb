<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="serviceImpl.AccountServiceImpl" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="entity.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Account</title>
</head>
<body>
	    <%
	    try{
	    	int idlog=Integer.parseInt(request.getParameter("idlog"));
	    	String passlog=request.getParameter("passwordlog");
	    	AccountServiceImpl logininacc=new AccountServiceImpl();
		    Account findacc=logininacc.LoginAccount(idlog, passlog);
		    if(findacc!=null){
		    	session.setAttribute("username",findacc.getName());
		    	session.setAttribute("id",findacc.getId());
		    }
		    else{
		    	response.sendRedirect("errorlogregis.jsp");
		    	return;
		    }
	    }catch(NumberFormatException e){
	    	response.sendRedirect("errorlogregis.jsp");
	    	return;
	    }
	    response.sendRedirect("index.jsp");
	    %>
	          
</body>
</html>