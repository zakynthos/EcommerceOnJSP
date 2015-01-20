<% 
  String base = (String) application.getAttribute("base"); 
  String imageUrl = (String) application.getAttribute("imageUrl"); 
%> 
<TABLE WIDTH="740" CELLPADDING="0" HEIGHT="75" CELLSPACING="0" BORDER="0"> 
<TR> 
  <TD ALIGN="left" BGCOLOR="FFFFFF" >
  <A HREF="<%=base%>"><IMG BORDER="0" SRC="<%=(imageUrl + "z_logo.gif")%>" height="20" width="25"></A> 
    <FONT FACE="Verdana" SIZE="4">akhy's e-Mall</FONT> 
  </TD> 
  <TD ALIGN="RIGHT" BGCOLOR="FFFFFF"> 
    <A HREF="<%=base%>?action=displayShoppingCart"><IMG 
      BORDER="0" SRC="<%=(imageUrl + "cart.gif")%>" height="40" width="45"></A> &nbsp;&nbsp;&nbsp; 
  </TD> 
</TR> 
</TABLE>
