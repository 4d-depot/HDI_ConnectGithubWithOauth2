//%attributes = {}
#DECLARE($request : Object; $winref : Integer)

CALL FORM:C1391($winRef; Formula:C1597(Form:C1466.userInfo:=$request.response.body))
CALL FORM:C1391($winRef; Formula:C1597(Form:C1466.avatarPicture:=DlAvatarPicture(Form:C1466.userInfo.avatar_url)))