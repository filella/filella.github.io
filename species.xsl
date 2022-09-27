<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
	<html>
	<body>
	<h1>LLLL</h1>
			<table>
				<tr>
					<th>Charge</th>
					<th>CAS&#160;&#160;&#160;&#160;&#160;&#160;&#160;</th>
					<th>Count</th>
					<th>Molecular formula</th>
					<th>Mol. mass</th>
				</tr>
				<xsl:for-each select="species">
					<tr>
						<td colspan="5">&#160;<xsl:value-of select="species_symbol"/>
								<br/><xsl:value-of select="species_names"/>
						</td>
					</tr>
					<tr>
						<td><xsl:value-of select="species_charge"/></td>
						<td><xsl:value-of select="species_cas"/></td>
						<td><xsl:value-of select="species_rxnknt"/></td>
						<td><xsl:value-of select="species_molfrm"/></td>
						<td><xsl:value-of select="species_molwgt"/></td>
					</tr>
			</table>
		</xsl:for-each>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>
