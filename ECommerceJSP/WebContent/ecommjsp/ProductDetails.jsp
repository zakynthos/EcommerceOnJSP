<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.zakhy.ecomm.Product" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %> 
<jsp:useBean id="dbBean" scope="application" class="com.zakhy.ecomm.DbBean"/> 
<% 
  String base = (String) application.getAttribute("base"); 
  String imageUrl = (String) application.getAttribute("imageUrl"); 
%> 
<HTML> 
<HEAD> 
<TITLE>Product Details</TITLE> 
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
  try {
    int productId = Integer.parseInt(request.getParameter("productId")); 
    Product product = dbBean.getProductDetails(productId); 
    if (product!=null) {
%> 
<TABLE> 
<TR> 
  <TD><IMG BORDER="0" WIDTH="100" SRC="<%=(imageUrl + product.id)%>.gif"></TD> 
  <TD><B><%=product.name%></B><BR> 
      <%=product.description%><BR> 
      Price :Rs <%=product.price%></TD> 
</TR> 
<TR> 
  <TD COLSPAN="2" ALIGN="RIGHT"> 
    <A HREF="<%=base%>?action=addShoppingItem&productId=<%=product.id%>">Add To Cart</A> 
  </TD> 
</TR> 
</TABLE> 
<% 
    } 
  } 
  catch (Exception e) {
    out.println("Error: Invalid product identifier."); 
  } 
%> 
  </TD> 
</TR> 
</TABLE> 
</BODY> 
</HTML>
