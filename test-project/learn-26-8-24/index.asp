<!-- #include file="ApplicationDbcontext.asp" -->

 <%
    sql = "select * from category" 
    'mở tập kết quả
    rs.open sql, conn 
 %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>
</head>
<body>
    <h1>category list</h1>
    <font color="red"><center><% = session("category_error") %></center></font>

    <table>
        <tr>
            <th>category id</th>
            <th>name</th>
            <th>img</th>
            <th>dsc</th>
            <th>order</th>
        </tr>
    
    </table>
</body>
</html>