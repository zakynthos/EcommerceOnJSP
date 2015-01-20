<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% 
  String base = (String) application.getAttribute("base"); 
  String imageUrl = (String) application.getAttribute("imageUrl"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Zakhy's</title>
</head>
<body>
<table>
<TR> 
  <TD COLSPAN=2><jsp:include page="Header.jsp" flush="true"/></TD> 
</TR> 
<TR> 
  <TD><jsp:include page="Menu.jsp" flush="true"/></TD> 
  <TD VALIGN="TOP"> 

    <H2><FONT FACE="Verdana">Welcome to  <A HREF="<%=base%>"><IMG BORDER="0" SRC="<%=(imageUrl + "z_logo.gif")%>" height="30" width="35"></A>akhy's e-Mall.</FONT></H2> 
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <A HREF="<%=base%>"><IMG BORDER="0" SRC="<%=(imageUrl + "z_logo.gif")%>"></A>
  </TD> 
</TR> 
<TR><TD>Copyright Dev.Inc</TD></TR>
</table>

</body>
</html>