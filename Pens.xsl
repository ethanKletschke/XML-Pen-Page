<?xml version="1.0" encoding="UTF-8"?>
<!--
Define a copyright entity to suppress an
error regarding a non-existent XML entity in the HTML
template.
-->
<!DOCTYPE stylesheet [
  <!ENTITY copy "©">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- The HTML template for the XML document. -->
  <xsl:template match="/">
    <html>
      <!-- Document header -->
      <head>
        <!-- Predefined CSS for the table used (Minimised by formatter). -->
        <style> body { color: #212529; font-family: sans-serif; } h1 { text-align: center;
          font-size: 300%; text-decoration: underline; padding: 1em; color: GhostWhite;
    background-color:
          #212529; border: 3px outset; } table { border: 1px solid; border-collapse: collapse;
    width: 60%;
          margin: auto; text-align: center; } tr, th, td { border: 1px solid; } th { font-weight:
    bolder;
          text-decoration: underline; font-size: 110%; padding: 0.5em; }#tbl-footnote { text-align:
    center; font-size: 90%; font-weight: bolder; font-style: italic; } hr { border: 2px solid
    #212529; width: 80%; }</style>
      </head>
      <!-- Document body -->
      <body>
        <!-- Heading -->
        <h1>Pen Collection</h1>

        <!-- Output table -->
        <table>
          <!-- Header row -->
          <tr>
            <th>ID</th>
            <th>Brand</th>
            <th>Model</th>
            <th>Type</th>
            <th>Price</th>
          </tr>
          <!-- Display each <pen> element's data. -->
          <xsl:for-each select="pens/pen">
            <tr>
              <!-- Pen ID attribute -->
              <td>
                <xsl:value-of select="@pen-id" />
              </td>
              <!-- Pen brand -->
              <td>
                <xsl:value-of select="brand" />
              </td>
              <!-- Pen model -->
              <td>
                <xsl:value-of select="model" />
              </td>
              <!-- Pen type -->
              <td>
                <xsl:value-of select="type" />
              </td>
              <!-- Pen price -->
              <td>
                <xsl:value-of select="price" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <!-- Table footnote -->
        <p id="tbl-footnote">
          * - Not Found
        </p>

        <!-- Horizontal rule -->
        <hr />

        <!-- Page footer -->
        <footer style="text-align: center">
          <!-- Copyright statement -->
          <p>&copy; Ethan Kletschke, 2025</p>
        </footer>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
