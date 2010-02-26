<cfprocessingdirective suppresswhitespace="yes">
<cfif thisTag.executionMode is "start">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<cfoutput><title>Generated App</title></cfoutput>

<style type="text/css">
	th {
		text-align: left;
		padding-right: 10px;
	}
	td{
		padding-right: 10px;
		border-bottom: 1px dotted #999;	
	}	
	body{
		font-family: "Adobe Clean";
		font-size: 90%;
	}
	.alert{
		font-weight: bold;
		color: red;
		border: 1px dotted red;
		background-color: #FFDFDF;
		padding: 1px;
		}
		
		form td{ border: 0;}	
</style>

</head>
<body>
<cfelse>
</body>
</html>
</cfif>
</cfprocessingdirective>