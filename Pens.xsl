<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          body {
            color: #212528;
          }

          table {
            border: 1px solid;
            border-collapse: collapse;
            width: 60%;
            margin: auto;
            text-align: center;
          }

          tr, th, td {
            border: 1px solid;
          }

          th {
            font-weight: bolder;
            text-decoration: underline;
            font-size: 110%;
            padding: 0.5em;

          }
        </style>
      </head>
      <body>
        <h1>Pen Collection</h1>

        <table>
          <tr>
            <th>ID</th>
            <th>Brand</th>
            <th>Model</th>
            <th>Type</th>
          </tr>
          <xsl:for-each select="pens/pen">
            <tr>
              <td><xsl:value-of select="@pen-id" /></td>
              <td><xsl:value-of select="brand" /></td>
              <td><xsl:value-of select="model" /></td>
              <td><xsl:value-of select="type" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
