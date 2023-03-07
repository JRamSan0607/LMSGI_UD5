<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:variable name="ultimoAutor">
        <xsl:value-of select="/libreria/libro[last()]/autor"/>
    </xsl:variable>
    
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
                    <xsl:for-each select="/libreria/libro[precio &gt; 12]">
                        <xsl:if test="(position() = last()) and (autor = $ultimoAutor)">
                            <tr bgcolor="#F2F2F2">
                        <xsl:else>
                        </xsl:else>
                                <td>
                                    <xsl:value-of select="isbn"/>
                                </td>
                                <td>
                                    <xsl:value-of select="titulo"/>
                                </td>
                                <td>
                                    <xsl:value-of select="autor"/>
                                </td>
                                <td>
                                    <xsl:value-of select="precio"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
