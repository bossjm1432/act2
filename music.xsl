<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Harmony Vault</title>
                <style>
                    body { font-family: 'Nunito', sans-serif; background-color: #f4f4f4; color: #000000; }
                    h1 { color: #e74c3c; text-align: center; }
                    ul { list-style-type: none; padding: 0; }
                    li { margin: 10px 0; padding: 15px; border: 1px solid #ddd; border-radius: 8px; background-color: #ecf0f1; }
                    .songTitle { font-weight: bold; color: #e74c3c; }
                    .artist { color: #3498db; }
                    .albums { color: #2ecc71; }
                    .debutYear { color: #9b59b6; }
                </style>
            </head>
            <body>
                <h1>Harmony Vault</h1>
                <ul>
                    <xsl:for-each select="music/song">
                        <li>
                            <div class="songTitle"><xsl:value-of select="songTitle"/></div>
                            <div class="artist">Artist: <xsl:value-of select="artist"/></div>
                            <div class="albums">
                                Albums:
                                <ul>
                                    <xsl:for-each select="albums/album">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            <div class="debutYear">Debut Year: <xsl:value-of select="debutYear"/></div>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>