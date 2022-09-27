<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
	<html>
	<body>
	<h1><xsl:value-of select="all_species/species_banner"/></h1>
	<h2><xsl:value-of select="all_species/species_title"/></h2>
	<h2><xsl:value-of select="all_species/species_date"/></h2>
		<table border="1" bordercolor="black" width="800">
			<xsl:for-each select="all_species/species">
				<tr border="1" >
					<th>Charge</th>
					<th>CAS&#160;&#160;&#160;&#160;&#160;&#160;&#160;</th>
					<th>Count</th>
					<th>Molecular formula</th>
					<th>Mol. mass</th>
				</tr>
				<tr border="1" >
					<td colspan="5">&#160;<xsl:value-of select="species_symbol"/>
							<br/><xsl:value-of select="species_names"/>
					</td>
				</tr>
				<tr border="1" >
					<td><xsl:value-of select="species_charge"/></td>
					<td><xsl:value-of select="species_cas"/></td>
					<td><xsl:value-of select="species_rxnknt"/></td>
					<td><xsl:value-of select="species_molfrm"/></td>
					<td><xsl:value-of select="species_molwgt"/></td>
				</tr>
			</xsl:for-each>
		</table>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>
