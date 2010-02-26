<cfcomponent output="false">

<!---
    README for sample service

    This generated sample service contains functions that illustrate typical service operations.
    Use these functions as a starting point for creating your own service implementation. Modify the 
    function signatures, references to the database, and implementation according to your needs. 
    Delete the functions that you do not use.

    Save your changes and return to Flash Builder. In Flash Builder Data/Services View, refresh 
    the service. Then drag service operations onto user interface components in Design View. For 
    example, drag the getAllItems() operation onto a DataGrid.
    
    This code is for prototyping only.
    
    Authenticate the user prior to allowing them to call these methods. You can find more 
    information at http://www.adobe.com/go/cf9_usersecurity

---> 

	<cffunction name="getAllBOOKS" output="false" access="remote" returntype="any" >

		<!--- Auto-generated method
		        Retrieve set of records and return them as a query or array.
		        Add authorization or any logical checks for secure access to your data --->
		
		<!--- Sample Code --->
		
		<cfset var qAllItems="">
		<cfquery name="qAllItems" datasource="cfbookclub">
			SELECT * FROM BOOKS
		</cfquery>
		<cfreturn qAllItems>
		
	</cffunction>

	<cffunction name="getBOOKS" output="false" access="remote"  returntype="any" >
		<cfargument name="BOOKID" type = "numeric" required="true" />

		<!--- TODO Auto-generated method
		        Retrieve a single record and return it as a query or array.
		        Add authorization or any logical checks for secure access to your data --->
		 
		<!--- Sample Code ---> 
		
		<cfset var qItem="">
		<cfquery name="qItem" datasource="cfbookclub">
			SELECT * 
			FROM BOOKS 
			WHERE BOOKID = <CFQUERYPARAM CFSQLTYPE="CF_SQL_INTEGER" VALUE="#ARGUMENTS.BOOKID#">
		</cfquery>

		<cfreturn qItem>
		 
	</cffunction>

	<cffunction name="createBOOKS" output="false" access="remote" returntype="any" >
		<cfargument name="item" required="true" />

		<!--- TODO Auto-generated method
		        Insert a new record in the database.
				Add authorization or any logical checks for secure access to your data --->
		 
		<!--- Sample Code --->

		<cfquery name="createItem" datasource="cfbookclub" result="result">
			INSERT INTO BOOKS (AUTHORID, TITLE, BOOKDESCRIPTION, BOOKIMAGE, THUMBNAILIMAGE, ISSPOTLIGHT, GENRE)
            		VALUES (<CFQUERYPARAM cfsqltype="CF_SQL_INTEGER" VALUE="#item.AUTHORID#">, 
							<CFQUERYPARAM cfsqltype="CF_SQL_VARCHAR" VALUE="#item.TITLE#">, 
							<CFQUERYPARAM cfsqltype="CF_SQL_CLOB" VALUE="#item.BOOKDESCRIPTION#">, 
							<CFQUERYPARAM cfsqltype="CF_SQL_VARCHAR" VALUE="#item.BOOKIMAGE#">, 
							<CFQUERYPARAM cfsqltype="CF_SQL_VARCHAR" VALUE="#item.THUMBNAILIMAGE#">, 
							<CFQUERYPARAM cfsqltype="CF_SQL_CHAR" VALUE="#item.ISSPOTLIGHT#">, 
							<CFQUERYPARAM cfsqltype="CF_SQL_VARCHAR" VALUE="#item.GENRE#">)

		</cfquery>
		
		<!--- The GENERATED_KEY is valid for mysql database only, you can modify it for your database --->
		<cfreturn result.GENERATED_KEY/>
		
	</cffunction>

	<cffunction name="updateBOOKS" output="false" access="remote" returntype="void" >
		<cfargument name="item" required="true" />

		<!--- TODO Auto-generated method
		        Update an existing record in the database.
				Add authorization or any logical checks for secure access to your data --->
		
		<!--- Sample Code --->
		 <cfquery name="updateItem" datasource="cfbookclub">
			UPDATE BOOKS SET AUTHORID = <CFQUERYPARAM cfsqltype=CF_SQL_INTEGER VALUE="#item.AUTHORID#">, 
							 TITLE = <CFQUERYPARAM cfsqltype=CF_SQL_VARCHAR VALUE="#item.TITLE#">, 
							 BOOKDESCRIPTION = <CFQUERYPARAM cfsqltype=CF_SQL_CLOB VALUE="#item.BOOKDESCRIPTION#">, 
							 BOOKIMAGE = <CFQUERYPARAM cfsqltype=CF_SQL_VARCHAR VALUE="#item.BOOKIMAGE#">, 
							 THUMBNAILIMAGE = <CFQUERYPARAM cfsqltype=CF_SQL_VARCHAR VALUE="#item.THUMBNAILIMAGE#">, 
							 ISSPOTLIGHT = <CFQUERYPARAM cfsqltype=CF_SQL_CHAR VALUE="#item.ISSPOTLIGHT#">, 
							 GENRE = <CFQUERYPARAM cfsqltype=CF_SQL_VARCHAR VALUE="#item.GENRE#">

			WHERE BOOKID = <CFQUERYPARAM CFSQLTYPE="CF_SQL_INTEGER" VALUE="#item.BOOKID#">
		</cfquery>
				
	</cffunction>

	<cffunction name="deleteBOOKS" output="false" access="remote" returntype="void" >
		<cfargument name="BOOKID" type="numeric" required="true" />

		<!--- TODO Auto-generated method
		        Delete a record in the database.
				Add authorization or any logical checks for secure access to your data --->
		
		<!--- Sample Code --->
		<cfquery name="delete" datasource="cfbookclub">
			DELETE FROM BOOKS
			WHERE BOOKID = <CFQUERYPARAM CFSQLTYPE="CF_SQL_INTEGER" VALUE="#ARGUMENTS.BOOKID#">
		</cfquery>
              
	</cffunction>

	<cffunction name="count" output="false" access="remote" returntype="numeric" >

		<!--- TODO Auto-generated method
		        Return the number of items in your table.
				Add authorization or any logical checks for secure access to your data --->
		
		<!--- Sample Code --->
		<cfquery name="qread" datasource="cfbookclub">
			SELECT COUNT(BOOKID) AS itemCount FROM BOOKS
		</cfquery>
        
		<cfreturn qread.itemCount>
		
	</cffunction>
	
	<cffunction name="getBOOKS_paged" output="false" access="remote" returntype="any" >
		<cfargument name="startIndex" type="numeric" required="true" />
		<cfargument name="numItems" type="numeric" required="true" />


		<!--- TODO Auto-generated method
		        Return a page of numRows number of records as an array or query from the database for this startRow.
				Add authorization or any logical checks for secure access to your data --->
		
		<!--- Sample Code --->
		<!--- The LIMIT keyword is valid for mysql database only, you can modify it for your database --->
		
		<cfset var qRead="">
		<cfquery name="qRead" datasource="cfbookclub">
			SELECT * FROM BOOKS LIMIT #startIndex#, #numItems#
		</cfquery>
		<cfreturn qRead>
		
	</cffunction>

</cfcomponent>