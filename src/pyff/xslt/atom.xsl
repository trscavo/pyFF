<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:shibmeta="urn:mace:shibboleth:metadata:1.0"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ds="http://www.w3.org/2000/09/xmldsig#"
                xmlns:md="urn:oasis:names:tc:SAML:2.0:metadata"
                xmlns:atom="http://www.w3.org/2005/Atom"
		        xmlns:xi="http://www.w3.org/2001/XInclude"
                xmlns:shibmd="urn:mace:shibboleth:metadata:1.0">

  <xsl:template match="md:EntitiesDescriptor">
      <atom:feed>
        <xsl:apply-templates select="md:EntityDescriptor"></xsl:apply-templates>
      </atom:feed>
  </xsl:template>

  <xsl:template match="md:EntityDescriptor">
    <xsl:apply-templates select="md:Extensions/atom:entry"></xsl:apply-templates>
  </xsl:template>

  <xsl:template match="atom:entry">
      <xsl:copy-of select="."></xsl:copy-of>
  </xsl:template>

</xsl:stylesheet>
