//%attributes = {}
#DECLARE($request : Object; $winRef : Integer)

CALL FORM:C1391($winRef; Formula:C1597(Form:C1466.repos:=$request.response.body))