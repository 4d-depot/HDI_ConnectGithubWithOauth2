
var $oAuth2 : cs:C1710.NetKit.OAuth2Provider
var $request : 4D:C1709.HTTPRequest

var $param : Object

$param:={}
$param.permission:="signedIn"
// OAuth 2.0 application information
$param.clientId:="734e0b59ff6ccb272b70"
$param.clientSecret:="125a576ee8847b063f53f55ad7174b191344d91a"
$param.redirectURI:="http://localhost:50993/authorize/"
$param.scope:="repo, user"

// Github End points 
// Authentication URI of the OAuth 2.0 server
$param.authenticateURI:="https://github.com/login/oauth/authorize"
// Token URI of the OAuth 2.0 server
$param.tokenURI:="https://github.com/login/oauth/access_token"
$param.timeout:=60

// Successful authentication page
$param.authenticationPage:=Folder:C1567(fk web root folder:K87:15).file("authentication.htm")

// Error authentication page
$param.authenticationErrorPage:=Folder:C1567(fk web root folder:K87:15).file("error.htm")

// OAuth2Provider object creation
$oAuth2:=cs:C1710.NetKit.OAuth2Provider.new($param)

$token:=$oAuth2.getToken()
// get the token
If ($token#Null:C1517)
	
	GetCurrentUserInformation($token)
	
Else 
	
	OBJECT SET VISIBLE:C603(*; "spinner"; False:C215)
	
End if 


