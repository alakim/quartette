<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
				<title><xsl:value-of select="SoundProcessor/@name"/></title>
			</head>
			<body>
				<h1><xsl:value-of select="SoundProcessor/@name"/></h1>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="module">
		<div>
			<h2><xsl:value-of select="@name"/></h2>
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="group">
		<xsl:apply-templates select="effect"/>
		<xsl:apply-templates select="param"/>
	</xsl:template>
	
	<xsl:template match="effect">
		<p><xsl:value-of select="@sign"/> (<xsl:value-of select="@name"/>)</p>
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="param">
		<p>
			<xsl:value-of select="@knob"/>: <xsl:value-of select="@name"/>
			<xsl:if test="value"> (<xsl:apply-templates/>)</xsl:if>
			
		</p>
	</xsl:template>
	
	<xsl:template match="value">
		<xsl:value-of select="@sign"/>: <xsl:value-of select="."/> 
	</xsl:template>
</xsl:stylesheet>
