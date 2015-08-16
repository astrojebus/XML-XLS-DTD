<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/TR/REC-html40">
	
	<xsl:template match="/">
		<html>
			<HEAD>
				<title>Dando formato al documento xml con xsl</title>
			</HEAD>
			<BODY>
				<h2>Listado de notas</h2>
				<TABLE border="1.0">
					<tr>
						<TD>Nombres</TD>
						<TD>Apellidos</TD>
						<TD>Matrícula</TD>
						<TD>Nota teórica</TD>
						<TD>Nota práctica</TD>
						<TD>Nota final</TD>
					</tr>
					
					<xsl:for-each select="notas/alumno[@escuela='HO']">
					<TR>
						<TD><xsl:value-of select="nombres"/></TD>
						<TD><xsl:value-of select="apellidos"/></TD>
						<TD><xsl:value-of select="num-matricula"/></TD>
						<TD><xsl:value-of select="nota-teorica"/></TD>
						<TD><xsl:value-of select="nota-practica"/></TD>
						<TD><xsl:value-of select="nota-final"/></TD>
					</TR>
					</xsl:for-each>
				</TABLE>
			</BODY>
		</html>
	</xsl:template>
</xsl:stylesheet>
