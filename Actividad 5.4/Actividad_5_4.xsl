<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Notas de Estudiantes</title>
        <style>
          table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;
            text-align: center;
          }
        </style>
      </head>
      <body>
        <h1>Notas de Estudiantes</h1>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Matrícula</th>
            <th>Convocatoria</th>
            <th>Cuestionarios</th>
            <th>Tareas</th>
            <th>Examen</th>
            <th>Final</th>
          </tr>
          <xsl:apply-templates select="notas/alumno"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="alumno">
    <tr>
      <td>
        <xsl:value-of select="nombre"/>
      </td>
      <td>
        <xsl:value-of select="apellidos"/>
      </td>
      <td>
        <xsl:value-of select="matricula"/>
      </td>
      <td>
        <xsl:value-of select="@convocatoria"/>
      </td>
      <td>
        <xsl:value-of select="cuestionarios"/>
      </td>
      <td>
        <xsl:value-of select="tareas"/>
      </td>
      <td>
        <xsl:value-of select="examen"/>
      </td>
      <td>
        <xsl:value-of select="final"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>