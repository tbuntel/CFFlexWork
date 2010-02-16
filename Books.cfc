<cfcomponent persistent="true">
    <cfproperty name="BOOKID" column="BOOKID" datatype="integer" length="10" />
    <cfproperty name="AUTHORID" column="AUTHORID" datatype="integer" length="10" />
    <cfproperty name="TITLE" column="TITLE" datatype="string" length="255" />
    <cfproperty name="BOOKDESCRIPTION" column="BOOKDESCRIPTION" datatype="clob" length="2147483647" />
    <cfproperty name="BOOKIMAGE" column="BOOKIMAGE" datatype="string" length="50" />
    <cfproperty name="THUMBNAILIMAGE" column="THUMBNAILIMAGE" datatype="string" length="50" />
    <cfproperty name="ISSPOTLIGHT" column="ISSPOTLIGHT" datatype="character" length="1" />
    <cfproperty name="GENRE" column="GENRE" datatype="string" length="50" />
</cfcomponent>