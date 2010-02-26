<!--- authorsList.cfm --->
<cfprocessingdirective suppresswhitespace="yes">
<cfparam name="attributes.authorsArray" type="array" />
<cfset message = attributes.message /> 
<cfif CompareNoCase(message, "deleted") eq 0>
	<p class="alert">Record deleted</p>
<cfelse>
	<p></p>
</cfif>
	<p><a href="?method=edit">New</a></p>
<table>
	<thead>
		<tr>
			<th>AUTHORID</th>
			<th>FIRSTNAME</th>
			<th>LASTNAME</th>
			<th>BIO</th>
			<th>ISSPOTLIGHT</th>
		</tr>
	</thead>
	<tbody>
	<cfoutput>
	<cfloop array="#attributes.authorsArray#" index="authors">
		<tr>
			<td>#authors.getAUTHORID()#</td>
			<td>#authors.getFIRSTNAME()#</td>
			<td>#authors.getLASTNAME()#</td>
			<td>#authors.getBIO()#</td>
			<td>#authors.getISSPOTLIGHT()#</td>
			<td><a href="?method=read&id=#authors.getIDValue()#">Read</a></td>
			<td><a href="?method=edit&id=#authors.getIDValue()#">Edit</a></td>
			<td><a href="?method=delete_process&id=#authors.getIDValue()#" onclick="if (confirm('Are you sure?')) { return true}; return false"">Delete</a></td>
		</tr>
	</cfloop>
	</cfoutput>
	</tbody>
</table>
</cfprocessingdirective>
<cfexit method="exitTag" />