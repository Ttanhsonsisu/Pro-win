<%
    set conn = Server.CreateObject("ADODB.Connection")
    set rs = Server.CreateObject("ADODB.Recordset")
    connstr = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.Mappath("Database1.mdb")

    ' open connection

    conn.open connstr
%>