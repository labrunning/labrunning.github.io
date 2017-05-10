<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:date="http://exslt.org/dates-and-times"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt">

	<xsl:output method="html"/>

	<xsl:template match="/">
		<html>
			<head>
				<script type="text/javascript" language="javascript" src="../Shared%20Documents/Saxonce/Saxonce.nocache.js"></script>
			</head>
			<body>
				<h3>Luke Brunning Timesheet Data</h3>
				<xsl:for-each select="//time">
					<p>Leave Remaining: <xsl:value-of select="LeaveRemaining"/></p>
					<p>Flexi Balance: <xsl:value-of select="LeaveCurrentFlexi"/></p>
					<p>Value for true: <xsl:value-of select="fn:base-uri()"/></p>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>