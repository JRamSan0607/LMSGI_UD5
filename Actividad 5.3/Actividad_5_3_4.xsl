<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <body>
        <h1>Mi biblioteca</h1>
        <table>
          <tr bgcolor="#DF0101">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
          </tr>
          
          <xsl:for-each select="/libreria/libro[precio > 12 and autor = 'Nuevo autor']">
            <tr>
              <td><xsl:value-of select="isbn"/></td>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="precio"/></td>
            </tr>
          </xsl:for-each>
          
        </table>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
