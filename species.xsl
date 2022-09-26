<!-- Thermodynamic data for a given species -->
<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
<head>
<style>
table, th, td {
  padding: 5px;
  border: 1px solid black;
  border-collapse: collapse;
  font-family: Courier New;
  font-weight: bold;
  font-size: 13px;
  vertical-align: top;
}
h2 {
 font-family: Courier New;
 font-size: 22px;
 font-weight: bold;
 text-align: center;
}
h3 {
 font-family: Courier New;
 font-size: 18px;
 font-weight: bold;
 text-align: center;
}
h4 {
 font-family: Courier New;
 font-size: 15px;
 font-weight: bold;
 text-align: center;
}
p {
 font-family: Courier New;
 font-size: 10px;
   font-weight: bold;
}
td {
 font-family: Courier New;
 font-size: 12px;
}</style>
</head>
<body>
<xsl:for-each select="all_species">
	<h2><xsl:value-of select="species_banner"/></h2>
	<h3><xsl:value-of select="species_title"/></h3>
	<h4><xsl:value-of select="species_date"/></h4>
	<table style="width:100%">
		<tr bgcolor="#a6a6a6">
			<th align="left">Charge</th>
			<th align="left">CAS&#160;&#160;&#160;&#160;&#160;&#160;&#160;</th>
			<th align="left">Count</th>
			<th align="left">Molecular formula</th>
			<th align="left" style="width:14%">Mol. mass</th>
		</tr>
	<xsl:for-each select="species">
		<tr>
			<td align="left" colspan="5">&#160;<br/><span style="font-size:120%"><xsl:value-of select="species_symbol"/></span>
				<xsl:if test="species_names != ''">
					<br/><xsl:value-of select="species_names"/>
				</xsl:if>
			</td>
		</tr>
		<tr>
			<td align="left"><xsl:value-of select="species_charge"/></td>
			<td align="left">
				<xsl:choose>
					<xsl:when test="species_cas != ''">
						<xsl:value-of select="species_cas"/>
					</xsl:when>
 					<xsl:otherwise>
						<xsl:text>---</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</td>
			<td align="left"><xsl:value-of select="species_rxnknt"/></td>
			<td align="left"><xsl:value-of select="species_molfrm"/></td>
			<td align="left" style="width:14%"><xsl:value-of select="species_molwgt"/></td>
		</tr>
	</xsl:for-each>
	</table>
</xsl:for-each>
</body>
</html>