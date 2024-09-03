<%
dim a 
dim b 
dim c

a = request.form("txta")
b = request.form("txtb")
c = request.form("txtc")
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>fundemental asp classic</title>

</head>
<body >
 <h1 align=center > giai phuong trinh</h1>
 <div class="bg-gradient-primary">
        <form method="post" action="">
    a: <input type="text" name="txta" value="<% =a  %>" placeholder="nhap a"/></br>
    b: <input type="text" name="txtb" value="<% =b  %>" /></br>
    c: <input type="text" name="txtc" value="<% =c  %>"/></br></br> 

    <input type="submit" value="Submit">
    </form>
</div>
<%

If a = 0  Then
    If b = 0  Then
        if c = 0 Then
            Response.Write("phuong trinh vo so nghiem")
        Else  
            Response.Write("phuong trinh vo nghiem")
        End if
    Else
        Response.Write(-c/b)
    End if

Else

    dim delta
    delta = (b*b) - (4*a*c)
    Response.Write("phuong trinh bac 2" )
        If delta < 0 Then
        result = "vo nghiem"

    ElseIf delta = 0 Then 
        
        Response.Write("phuong trinh nghiem kep" & " " & (-b/(2*a)))
        
    Else
        sqrDelta =  sqr(delta)
         x1 = (-b + sqrDelta) / (2*a)
         x2 = (-b - sqrDelta) / (2*a)
         Response.Write("nghiem x1 = " & " " & x1 )
         Response.Write("nghiem x2 = " & " " & x2)
    End if

End if

%>

 <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
</body>
</html>