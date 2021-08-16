<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:content="http://purl.org/rss/1.0/modules/content/"
>

	<!-- Start matching at the Channel node within the XML RSS feed. -->
    <xsl:template match="/">


    <rss version="2.0">
    <channel>

    <title>ultrafilter papers</title>
    <link>http://neal.news/ultrafilter.rss</link>

            <xsl:for-each select="//table[contains(@class, 'post')]">
                <item>

                    <pubDate> <xsl:value-of select="tbody/tr/td[contains(@class, 'postdate')]/text()[4]"/> </pubDate>
                    <title> <xsl:value-of select="tbody/tr/td[contains(@class, 'postdate')]/text()[4]"/> </title>
                    <guid> neal.news/ultrafilter/<xsl:value-of select="@id"/> </guid>


                    <content:encoded>
                            <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
                            <xsl:copy-of select="tbody/tr/td[contains(@class, 'postbody')]"/>
                            <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
                    </content:encoded>

                </item>
            </xsl:for-each>

    </channel>
    </rss>

	</xsl:template>

</xsl:stylesheet>
