<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
  
<xsl:template match="/"> 
 <html>
 <body bgcolor="A2F5EC"> 
  <h1 align="center">Place and Flight details</h1> 
   <table border="3" align="center" > 
   <tr bgcolor="E7EE6F"> 
    <th>Place</th> 
    <th>Flight Id</th> 
    <th>Amount</th>
   </tr> 
    <xsl:for-each select="student/s"> 
   <tr bgcolor="D6F5A2"> 
    <td><xsl:value-of select="name"/></td> 
    <td><xsl:value-of select="id"/></td> 
    <td><xsl:value-of select="price"/></td>
   </tr> 
    </xsl:for-each> 
    </table>
</body> 
</html> 
</xsl:template> 
</xsl:stylesheet> 