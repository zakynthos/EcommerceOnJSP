<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.zakhy.ecomm.Product" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %> 
<jsp:useBean id="dbBean" scope="application" class="com.zakhy.ecomm.DbBean"/> 
<HTML> 
<HEAD> 
<TITLE>Order</TITLE> 
</HEAD> 
<BODY> 
<TABLE> 
<TR> 
  <TD COLSPAN=2><jsp:include page="Header.jsp" flush="true"/></TD> 
</TR> 
<TR> 
  <TD><jsp:include page="Menu.jsp" flush="true"/></TD> 
  <TD VALIGN="TOP"> 
<% 
  if (dbBean.insertOrder(request.getParameter("contactName"), request.getParameter("deliveryAddress"), 
    request.getParameter("ccName"), request.getParameter("ccNumber"), request.getParameter("ccExpiryDate"), 
    (Hashtable) session.getAttribute("shoppingCart"))) {  
    
	  	session.invalidate(); 
    	out.println("Thank you for your purchase"); 
  } 
  else 
    	out.println("Error"); 
%> 
  </TD> 
</TR> 
</TABLE> 
</BODY> 
</HTML>
