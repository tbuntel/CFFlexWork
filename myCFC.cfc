<cfcomponent>


	<cffunction name="sayHello" access="remote">
		<cfargument name="aName" required="false" />
		<cfset aGreeting = "Why, hello " & arguments.aName>
		<cfreturn aGreeting>

	</cffunction>

</cfcomponent>