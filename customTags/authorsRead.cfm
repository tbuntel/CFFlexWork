<!--- authorsRead.cfm --->
<cfprocessingdirective suppresswhitespace="yes">
<cfparam name="attributes.authors" type="any" />
<cfset authors = attributes.authors /> 
<table>
	<tbody>
	<cfoutput>
		<tr>
			<th>AUTHORID</th>
			<td>#authors.getAUTHORID()#</td>
		</tr>
		<tr>
			<th>FIRSTNAME</th>
			<td>#authors.getFIRSTNAME()#</td>
		</tr>
		<tr>
			<th>LASTNAME</th>
			<td>#authors.getLASTNAME()#</td>
		</tr>
		<tr>
			<th>BIO</th>
			<td>#authors.getBIO()#</td>
		</tr>
		<tr>
			<th>ISSPOTLIGHT</th>
			<td>#authors.getISSPOTLIGHT()#</td>
		</tr>
	</cfoutput>
	</tbody>
</table>
</cfprocessingdirective>
<cfexit method="exitTag" />