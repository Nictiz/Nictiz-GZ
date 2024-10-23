<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

    <pattern>
        <rule context="/*">

            <let name="a" value="'a'"/>
            <assert test=". eq $a">*** <value-of select="concat($a, 'x')"/>!</assert>

            <let name="a" value="'b'"/>
            <assert test=". eq $a">*** <value-of select="$a"/>!</assert>

        </rule>


    </pattern>

</schema>
