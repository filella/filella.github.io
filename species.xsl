<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
	<html>
	<head>
		<title>JESS species</title>
	</head>
	<body>
	<h1 align="center" style="font-family:courier;"><xsl:value-of select="all_species/species_banner"/></h1>
	<h2 align="center" style="font-family:courier;"><xsl:value-of select="all_species/species_title"/></h2>
	<h2 align="center" style="font-family:courier;"><xsl:value-of select="all_species/species_date"/></h2>
	<p>&#160;<br/>Species containing the string EDDA<br/>&#160;</p>
		<table border="1" bordercolor="black" width="1000" align="center" cellpadding="10px" style="font-family:courier;">
			<xsl:for-each select="all_species/species[contains(species_symbol, 'EDDA')]">
<!---			<xsl:for-each select="all_species/species">
				<xsl:if test="contains(species_symbol, 'EDDA')">  --->
					<tr border="1">
						<td colspan="5">&#160;<br/>
								<xsl:value-of select="species_symbol"/>
								<br/><xsl:value-of select="species_names"/>
						</td>
					</tr>
					<tr border="1">
						<th>Charge</th>
						<th>CAS&#160;&#160;&#160;&#160;&#160;&#160;&#160;</th>
						<th>Count</th>
						<th>Molecular formula</th>
						<th width="140">Mol. mass</th>
					</tr>
					<tr border="1">
						<td align="center"><xsl:value-of select="species_charge"/></td>
						<td align="center" width="140">
							<xsl:choose>
								<xsl:when test="species_cas != ''">
									<xsl:value-of select="species_cas"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>---</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<td align="center"><xsl:value-of select="species_rxnknt"/></td>
						<td><xsl:value-of select="species_molfrm"/></td>
						<td align="center"><xsl:value-of select="species_molwgt"/></td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>
