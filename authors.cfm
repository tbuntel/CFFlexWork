<cfsetting showdebugoutput="false" />
<cfparam name="url.method" type="string" default="list" />
<cfparam name="url.id" type="numeric" default="0" />
<cfparam name="url.message" type="string" default="" />
<cfimport path="cfc.*" />

<cf_pageWrapper>
<h1>cfbookclub</h1>
<h2>authors</h2>
<cfoutput><p><a href="index.cfm">Main</a> / <a href="#cgi.script_name#">authors List</a></cfoutput>

<cfswitch expression="#url.method#" >

	<cfcase value="list">
		<cfset authorsArray = entityLoad("authors") />
		<cf_authorsList authorsArray = "#authorsArray#" message="#url.message#" /> 
	</cfcase>

	<cfcase value="read">
		<cfset authors = entityLoad("authors", url.id, true) />
		<cf_authorsRead authors = "#authors#" /> 
	</cfcase>

	<cfcase value="edit">
		<cfif url.id eq 0>
			<cfset authors = New authors() />
		<cfelse>
			<cfset authors = entityLoad("authors", url.id, true) />
		</cfif>

		<cf_authorsEdit authors = "#authors#" message="#url.message#" /> 
	</cfcase>

	<cfcase value="edit_process">
		<cfset authors = EntityNew("authors") />
		<cfif form.AUTHORID gt 0>
			<cfset authors.setAUTHORID(form.AUTHORID)  />
		</cfif>
		<cfset authors.setFIRSTNAME(form.FIRSTNAME)  />
		<cfset authors.setLASTNAME(form.LASTNAME)  />
		<cfset authors.setBIO(form.BIO)  />
		<cfset authors.setISSPOTLIGHT(form.ISSPOTLIGHT)  />
		<cfset EntitySave(authors) />
		<cfset ORMFlush() />
		<cflocation url ="#cgi.script_name#?method=edit&id=#authors.getIDValue()#&message=updated" />
	</cfcase>

	<cfcase value="delete_process">
		<cfset authors = entityLoad("authors", url.id, true) />
		<cfset EntityDelete(authors) />
		<cfset ORMFlush() />
		<cflocation url ="#cgi.script_name#?method=list&message=deleted" />
	</cfcase>

</cfswitch>

</cf_pageWrapper>