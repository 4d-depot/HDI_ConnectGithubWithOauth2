//%attributes = {}
#DECLARE() : cs:C1710.NetKit.OAuth2Provider
var $param : Object

$param:=New object:C1471
$param.permission:="signedIn"
$param.clientId:="734e0b59ff6ccb272b70"
$param.clientSecret:="125a576ee8847b063f53f55ad7174b191344d91a"
$param.redirectURI:="http://localhost:50993/authorize/"
$param.scope:="repo, user"
$param.authenticateURI:="https://github.com/login/oauth/authorize"
$param.tokenURI:="https://github.com/login/oauth/access_token"
$param.timeout:=10

return cs:C1710.NetKit.OAuth2Provider.new($param)