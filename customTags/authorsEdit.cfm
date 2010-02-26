<!--- authorsEdit.cfm --->
<cfprocessingdirective suppresswhitespace="yes">
<cfparam name="attributes.authors" type="any" />
<cfparam name="attributes.message" type="string" default="" />
<cfset authors = attributes.authors /> 
<cfset message = attributes.message /> 
<cfif CompareNoCase(message, "updated") eq 0>
	<p class="alert">Records updated</p>
<cfelse>
	<p></p>
</cfif>
<table>
	<tbody>
	<cfoutput>
	<form action="?method=edit_process" method="post">
			<input name="AUTHORID" type="hidden" value="#authors.getAUTHORID()#" />
		<tr>
			<th><label for="FIRSTNAME">FIRSTNAME:</label></th>
			<td><input name="FIRSTNAME" type="text" id="FIRSTNAME" value="#authors.getFIRSTNAME()#" /></td>
		</tr>
		<tr>
			<th><label for="LASTNAME">LASTNAME:</label></th>
			<td><input name="LASTNAME" type="text" id="LASTNAME" value="#authors.getLASTNAME()#" /></td>
		</tr>
		<tr>
			<th><label for="BIO">BIO:</label></th>
			<td><input name="BIO" type="text" id="BIO" value="#authors.getBIO()#" /></td>
		</tr>
		<tr>
			<th><label for="ISSPOTLIGHT">ISSPOTLIGHT:</label></th>
			<td><input name="ISSPOTLIGHT" type="text" id="ISSPOTLIGHT" value="#authors.getISSPOTLIGHT()#" /></td>
		</tr>
		<tr>
			<th />
			<td><input name="save" type="submit" value="Save" /></td>
		</tr>
	</form>
	</cfoutput>
	</tbody>
</table>
</cfprocessingdirective>
<cfexit method="exitTag" />