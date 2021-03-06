﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>ejer_3</title>
        <style type="text/css">
          table,td,th {border:1px black solid}
        </style>
      </head>
      <body>
        <table>
        <tr>
          <th>Title</th>
          <th>Artist</th>
          <th>Año</th>
        </tr>
        <xsl:for-each select="catalog/cd[year&gt;1979 and  year&lt;1990]">
          <xsl:sort select="year" />
          <tr>
          <td><xsl:value-of select="title" /></td>
          <td><xsl:value-of select="artist" /></td>
          <td><xsl:value-of select="year" /></td>
          </tr>

        </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
