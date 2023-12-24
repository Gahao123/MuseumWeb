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
	    	int idregis=Integer.parseInt(request.getParameter("idregis"));
	    	String nameregis=request.getParameter("nameregis");
	    	if(nameregis==null||nameregis.length()<1)
	    		nameregis="default123";
	    	String passregis=request.getParameter("passwordregis");
	    	AccountServiceImpl logininacc=new AccountServiceImpl();
		    int findacc=logininacc.RegisAccount(idregis,nameregis,passregis);
		    if(findacc==1){
		    	session.setAttribute("username",nameregis);
		    	session.setAttribute("id",idregis);
		    }
		    else{
		    	response.sendRedirect("errorlogregis.jsp");
		    	return;
		    }
	    }catch(NumberFormatException e){
	    	response.sendRedirect("errorlogregis.jsp");
	    	return;
	    }catch(Exception e){
	    	response.sendRedirect("errorlogregis.jsp");
	    	return;
	    }
	    response.sendRedirect("index.jsp");
	    %>
	          
</body>
</html>