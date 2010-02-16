<!--- Get data --->
<cfset data=EntityLoad("Books")>
<!--- Display titles --->

<table>
<tr>
<th>Title</th>
</tr>
	
	<cfoutput>
	<cfloop array="#data#" index="book">
		<tr>
		<td>#book.GetTitle()#</td>
		</tr>
	</cfloop>
	</cfoutput>
</table>
