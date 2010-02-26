<cfcomponent >

	<cffunction name="list" access="remote" returnType="CFFlexWork.cfc.authors[]" >
		<cfreturn EntityLoad("authors") />
	</cffunction>

	<cffunction name="get" access="remote" returnType="any" >
		<cfargument name="id" type="numeric" required="true"  />
		<cfreturn EntityLoad("authors", arguments.id, true) />
	</cffunction>

	<cffunction name="update" access="remote" returnType="void" >
		<cfargument name="authors" type="any" required="true"  />
		<cfset arguments.authors.nullifyZeroID() />
		<cfset EntitySave(arguments.authors) />
	</cffunction>

	<cffunction name="destroy" access="remote" returnType="void" >
		<cfargument name="authors" type="any" required="true"  />
		<cfset EntityDelete(arguments.authors) />
	</cffunction>

	<cffunction name="search" access="remote" returnType="CFFlexWork.cfc.authors[]" >
		<cfargument name="q" type="string"  />

		<cfset var hqlString = "FROM authors " />
		<cfset var whereClause = "" />
		<cfif len(arguments.q) gt 0>
				<cfset whereClause  = ListAppend(whereClause, " firstname LIKE '%#arguments.q#%'", "|") />
				<cfset whereClause  = ListAppend(whereClause, " lastname LIKE '%#arguments.q#%'", "|") />
				<cfset whereClause  = ListAppend(whereClause, " isspotlight LIKE '%#arguments.q#%'", "|") />
			<cfset whereClause = Replace(whereClause, "|", " OR ", "all") />
		</cfif>
		<cfif len(whereClause) gt 0>
			<cfset hqlString = hqlString & " WHERE " & whereClause />
		</cfif>
		<cfreturn ormExecuteQuery(hqlString) />
	</cffunction>

</cfcomponent>