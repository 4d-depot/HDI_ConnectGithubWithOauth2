//%attributes = {}
#DECLARE($request : Object; $winRef : Integer)

If ($request.response.body#Null:C1517) && ($request.response.body.length>0)
	CALL FORM:C1391($winRef; Formula:C1597(Form:C1466.email:=$request.response.body[0].email))
End if 