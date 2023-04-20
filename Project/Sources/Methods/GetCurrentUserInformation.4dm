//%attributes = {}
#DECLARE($token : Object)
var $headers : Object
var $request : 4D:C1709.HTTPRequest

$headers:=New object:C1471
$headers.Accept:="application/vnd.github+json"
$headers.Authorization:="Bearer "+$token.token.access_token
$headers["X-GitHub-Api-Version"]:="2022-11-28"

// get user information
$request:=4D:C1709.HTTPRequest.new("https://api.github.com/user"; {method:"GET"; headers:$headers})
$request.wait(30)
Form:C1466.userInfo:=$request.response.body
Form:C1466.avatarPicture:=DlAvatarPicture(Form:C1466.userInfo.avatar_url)

// get email addresses
$request:=4D:C1709.HTTPRequest.new("https://api.github.com/user/emails"; {method:"GET"; headers:$headers})
$request.wait(30)
If ($request.response.body#Null:C1517) && ($request.response.body.length>0)
	Form:C1466.email:=$request.response.body[0].email
End if 

// get repositories
$request:=4D:C1709.HTTPRequest.new("https://api.github.com/user/repos"; {method:"GET"; headers:$headers})
$request.wait(30)
Form:C1466.repos:=$request.response.body
