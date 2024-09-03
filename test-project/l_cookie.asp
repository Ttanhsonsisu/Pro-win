' <%
' ' Response.Cookies("firstname")="Alex"
' ' ' add hạn của cookie
' ' Response.Cookies("firstname").Expires=#May 10,2024# 

' %>

<%
Response.Cookies("firstname")="Alex"
Response.Cookies("user")("firstname")="John"
Response.Cookies("user")("lastname")="Smith"
Response.Cookies("user")("country")="Norway"
Response.Cookies("user")("age")="25"
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>fundemental asp classic</title>
</head>
<body>

<%
dim x,y
for each x in Request.Cookies
  response.write("<p>")
  if Request.Cookies(x).HasKeys then
    for each y in Request.Cookies(x)
      response.write(x & ":" & y & "=" & Request.Cookies(x)(y))
      response.write("<br>")
    next
  else
    Response.Write(x & "=" & Request.Cookies(x) & "<br>")
  end if
  response.write "</p>"
next
%>

</body>
</html>