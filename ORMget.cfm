<!--- Get data --->
<cfset data=EntityLoad("Books")>
<!--- Display titles --->
<cfoutput>
<cfloop array="#data#" index="book">
    #book.GetTitle()#<br>
</cfloop>
</cfoutput>