<!-- XSL Stylesheet for Scenario 3 (Table Format - Corrected) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>List of Attendees</title>
      </head>
      <body>
        <h1>Attendees by Activity List</h1>
        <table border="1"> 
          <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Registration Mode</th>
            <th>Activity</th>
            <th>Day</th>
          </tr>
          <xsl:for-each select="CulturalCenter/Sales/Attendees/Attendee">
            <tr>
              <td><xsl:value-of select="NameOfAttendee"/></td>
              <td><xsl:value-of select="ContactDetails/Email"/></td>
              <td><xsl:value-of select="ContactDetails/PhoneNumber"/></td>
              <td><xsl:value-of select="RegistrationMode"/></td>
              <td><xsl:value-of select="ActivityRegistration"/></td>
              <td><xsl:value-of select="Day"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
