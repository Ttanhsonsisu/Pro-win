<%
    set conn = Server.CreateObject("ADODB.Connection")
    stringConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.Mappath("Database1.mdb")
    sql = inset into [Database1].[user](user)

    conn.open stringConn 

    
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test connection</title>
</head>
<body>
 
</body>
</html>