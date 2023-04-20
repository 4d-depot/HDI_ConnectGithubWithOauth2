//%attributes = {}
#DECLARE($url : Text)->$picture : Picture
// download the user avatar and create a picture
var $x : Blob
var $request : 4D:C1709.HTTPRequest

$request:=4D:C1709.HTTPRequest.new($url; {method:"GET"})
$request.wait(30)

BLOB TO PICTURE:C682($request.response.body; $picture)