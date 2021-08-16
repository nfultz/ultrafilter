<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- This causes the HTML doctype (<!doctype hmlt>) to be rendered. -->
	<xsl:output method="html" doctype-system="about:legacy-compat" indent="yes" />

	<!-- Start matching at the Channel node within the XML RSS feed. -->
	<xsl:template match="/rss/channel">

		<html>
		<head>
			<title> <xsl:value-of select="title" /> </title>
            <link rel="stylesheet" type="text/css" href="https://unpkg.com/sakura.css/css/sakura.css"/>
		</head>

		<body>

			<h1> <xsl:value-of select="title" /> </h1>

            <xsl:for-each select="./item">

                <h2> <xsl:value-of select="pubDate"/> </h2>

                <a href="{ link }"> <xsl:value-of select="title" /> </a>

            </xsl:for-each>

<!-- static -->
<h2>Data &amp; Method</h2>

Song metadata was scraped from <a href="https://www.secondhandsongs.com/">Second Hand Songs</a>,
cleaned, and joined with itself.

<h2>Three Types of Cover Sandwiches</h2>

If A1 is Song A by artist 1, there are three kinds of cover sandwiches:

<h3>Band Sandwich</h3>
<pre>
A1
A2
B2
B1
</pre>

<h3>Tossed Band Sandwich</h3>
<pre>
A1
B2
A2
B1
</pre>


<h3>Song Sandwich</h3>
<pre>
A1
B2
B1
A2
</pre>

<h2>Rules</h2>

<ol>
    <li> Must not share (too many) performers. Crosby, Stills, Nash and Young can't cover Neil Young, for example.</li>
    <li> "Tributes" covers are allowed.</li>
    <li> Rerecording by songwriters are allowed if the more famous performance was pressed first .</li>
    <li> All four recordings should exist online, somewhere </li>
</ol>
<!-- static -->



		</body>
		</html>

	</xsl:template>

</xsl:stylesheet>
