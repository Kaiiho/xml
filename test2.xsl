<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:variable name="chemin_fichier_texte" select="'/.passwd'" />

  <xsl:template match="/">
    <xsl:variable name="contenu_fichier_texte" select="document($chemin_fichier_texte)" />
    <xsl:apply-templates select="$contenu_fichier_texte" />
  </xsl:template>

  <xsl:template match="contenu">
    <xsl:value-of select="." />
  </xsl:template>

</xsl:stylesheet>
