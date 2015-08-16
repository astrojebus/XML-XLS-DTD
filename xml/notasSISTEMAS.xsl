<?xml version="1.0" encoding="ISO-8869-1"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:template match="/">
<HTML>
<HEAD>

<BODY	>
<H2>lsitado de notas</H2>
<TABLE border="1.0"	>
<TR	>Nombres</TR	>
<TR	>apellidos</TR	>
<TR	>matriculas</TR	>
<TR	>nota teorica</TR	>
<TR	>nota practica</TR	>
<TR	>nota final</TR	>
<xsl: for-each select="notas/alumno[@escuela='is']">
<TR>
<TD>
<xsl:value-of select="nombres"	></xsl:value-of>
</TD>
<TD>
<xsl:value-of select="apellidos"	></xsl:value-of>
</TD>
<TD>
<xsl:value-of select="teorica"	></xsl:value-of>
</TD>
<TD>
<xsl:value-of select="final"	></xsl:value-of>
</TD>
</TR>

</xsl:for-each>	

</TABLE	>
</BODY	>
</HEAD>

</HTML>
</xsl:template>
</xsl:stylesheet>
