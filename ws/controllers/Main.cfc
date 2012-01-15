<cfcomponent extends="Controler" output="false">

	<cffunction name="init">
	</cffunction>

	<cffunction name="index">

	</cffunction>

<!--- AJAX functions --->

	<cffunction name="getStatusCode" hint="Returns status code for a URL">
		<cfparam name="params.url" default="">
		<cfset var Local = {}>
		<cfset Local.returnStr = "Error">
		<cfif trim(params.url) neq "">
			<cfhttp		url				= "#params.url#"
						redirect		= "yes"
						resolveurl		= "yes"
						result			= "Local.result"
						throwonerror	= "no"
						timeout			= "10"
						useragent		= "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.26 Safari/535.11"
			>
		</cfif>
		<cfset renderWith(Local.result.StatusCode)>
	</cffunction>

</cfcomponent>