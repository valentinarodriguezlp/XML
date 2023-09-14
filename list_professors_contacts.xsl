<!-- Scenario 5: Calendar of Activities by Day and Time -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>List of professors</title>
      </head>
      <body>
        <h1>Professors Contact List</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Discipline</th>
            <th>Email</th>
            <th>Phone</th>
          </tr>
          <xsl:for-each select="CulturalCenter/Administration/Professors/Professor">
            <tr>
              <td><xsl:value-of select="Name" /></td>
              <td><xsl:value-of select="Discipline" /></td>
              <td><xsl:value-of select="ContactDetails/Email" /></td>
              <td><xsl:value-of select="ContactDetails/PhoneNumber" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
