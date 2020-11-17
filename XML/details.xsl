<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
	<div style="background-image: url('img1.jpg');background-repeat: no-repeat;  background-attachment: fixed;
  background-size: cover;">
	
  <center><h2>Customers WishList</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Name</th>
      <th>Wishlist</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <xsl:choose>
      <xsl:when test="flightid = 1">
         <td bgcolor="#ff00ff">
         <xsl:value-of select="wishlist"/>
         </td>
      </xsl:when>
      <xsl:when test="flightid = 2">
         <td bgcolor="#cccccc">
         <xsl:value-of select="wishlist"/></td>
      </xsl:when>
	  <xsl:when test="flightid = 3">
         <td bgcolor="FF5733">
         <xsl:value-of select="wishlist"/></td>
      </xsl:when>
	  <xsl:when test="flightid = 4">
         <td bgcolor="33FAFF">
         <xsl:value-of select="wishlist"/></td>
      </xsl:when>
	  <xsl:when test="flightid = 5">
         <td bgcolor="33FFA1">
         <xsl:value-of select="wishlist"/></td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="wishlist"/></td>
      </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>
  
  </center></div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

