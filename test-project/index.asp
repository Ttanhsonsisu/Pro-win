<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>fundemental asp classic</title>
</head>
<body>
    
    <% 
      Response.Write("<h2> <b>test</b></h2>")
      dim x(2)
      x(0) = "test0"
      x(2) = "test2"
      x(1) = "test1"
      For i = 0 To 2 
        response.Write(x(i))
      Next
    Call mySub()
    testpara = funtionHasPara(1,2)
    response.Write("</br> date:" & myFuntion())
    response.Write(testpara)

      ' define function 
      ' sub ~ void 
      Sub mySub
        response.Write("first mysub")
      End Sub
      ' function ~ have return value if want return value use nameFunction=valueReturn
      function myFuntion() 
        myFuntion = Date()
      End function

      function funtionHasPara(para1, para2)
        funtionHasPara = para1 + para2 
      End function
    %>
    <!-- if statement -->
    <hr>
    <h3>if statement </h3>
    <%
    
    ' syntax: 
      response.Write("if - else </br>")
      age = 18
      If age >= 18 Then
        response.Write("men or women")
      Else
        response.Write("child")
      End if

      response.Write("</br> if - elseif - else </br>")

        age2 = 1
      If age2 >= 18 Then
        response.Write("men or women")
      ElseIf age2 <= 2 Then 
        response.Write("baby")
      Else
        response.Write("child")
      End if

      ti = 12
      Select Case ti
        Case 12:
          response.Write("</br>" & 1)
      End Select
    %>

</body>
</html>