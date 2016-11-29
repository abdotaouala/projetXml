<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:template match="/">
        <html> 
            <head>
                <style>
                    table {
                    border: 1px solid black;
                    border-collapse: collapse;
                    width:100%;border: 1px solid black;border: 1px solid black;
                    border-collapse: collapse;
                    }
                    th, td{
                    border: 1px solid black;
                    border-collapse: collapse;
                    border: 1px solid black;
                    border: 1px solid black;
                    border-collapse: collapse;
                    }
                    
                </style>
            </head>
            <body> 
                <table  >
                    <tr>
                        <th>N</th>
                        <th>Pays</th>
                        <th>Population</th>
                        <th>Relidion</th>
                    </tr>
                    <xsl:for-each select="mondial/pays">
                        <tr>
                            <th><xsl:value-of
                                select ="@numero">
                            </xsl:value-of></th>
                            <th><xsl:value-of select="@name"/></th>
                            <xsl:choose>
                                
                                <xsl:when test="population  &gt;  1200"> <th style="background:#FFF;"><xsl:value-of select="population"/></th></xsl:when>
                            </xsl:choose>
                            
                            <th>
                            <xsl:for-each select="religion">
                                type : <xsl:value-of select="@type"/><br />
                                nombre : <xsl:value-of select="@nbr"/><br />
                            </xsl:for-each>
                            </th>
                        </tr>
                    </xsl:for-each>
                    
                </table>
                <xsl:value-of select="mondial/message"/> 
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>