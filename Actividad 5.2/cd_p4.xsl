<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de CDs de música duración menor a 2:50</title>
                <style>
          table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;
          }
          th {
            background-color: #ddd;
          }
                </style>
            </head>
            <body>
                <h1>Lista de CDs de música duración menor a 2:50</h1>
                <table>
                    <tr>
                        <th>Título del álbum</th>
                        <th>Artista</th>
                        <th>Títulos de las canciones</th>
                        <th>Tiempo por canción</th>
                        <th>Sello discográfico</th>
                        <th>Año de publicación</th>
                    </tr>
                    <xsl:for-each select="catalogo/cd">
                        <xsl:if test="tiempo >= 2:50 ">
                            <tr>
                                <td>
                                    <xsl:value-of select="titulo"/>
                                </td>
                                <td>
                                    <xsl:value-of select="artista"/>
                                </td>
                                <td>
                                    <xsl:for-each select="canciones/cancion">
                                        <xsl:value-of select="."/>
                                        <br/>
                                    </xsl:for-each>
                                </td>
                                <td>
                                    <xsl:for-each select="canciones/cancion">
                                        <xsl:value-of select="@tiempo"/>
                                        <br/>
                                    </xsl:for-each>
                                </td>
                                <td>
                                    <xsl:value-of select="sello_discografico"/>
                                </td>
                                <td>
                                    <xsl:value-of select="anio_publicacion"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>