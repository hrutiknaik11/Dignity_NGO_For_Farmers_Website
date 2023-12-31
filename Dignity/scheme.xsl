<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h3>Government Schemes</h3>

  <table border="1">
    <tr bgcolor="#fb2274">
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Description</th>
    </tr>
    <xsl:for-each select="govscheme/scheme">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="description"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
