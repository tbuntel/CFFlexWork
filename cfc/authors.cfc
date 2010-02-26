<cfcomponent persistent="true" >

	<cfproperty name="authorid" ormtype="integer" type="integer" fieldtype="id" generator="increment" />
	<cfproperty name="firstname" ormtype="string" type="string" />
	<cfproperty name="lastname" ormtype="string" type="string" />
	<cfproperty name="bio" ormtype="clob" type="clob" />
	<cfproperty name="isspotlight" ormtype="character" type="character" />

	<cffunction name="getIDName" access="public" returnType="string" >

		<cfset var id = StructFindValue( GetMetaData(This), "id")[1].owner.name />
		<cfreturn id />
	</cffunction>

	<cffunction name="getIDValue" access="public" returnType="any" >
		<cfreturn variables[getIDName()] />
	</cffunction>

	<cffunction name="setIDValue" access="public" returnType="void" >
		<cfargument name="idvalue" type="any"  />
		<cfset variables[getIDName()] = arguments.idvalue />
	</cffunction>

	<cffunction name="nullifyZeroID" access="public" returnType="void" >
		<cfif getIDValue() eq 0>
			<cfset variables[getIDName()] = JavaCast("Null", "") />
		</cfif>
	</cffunction>

</cfcomponent>