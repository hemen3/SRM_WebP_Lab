<%-- 
    Document   : main
    Created on : 5 Nov, 2020, 1:22:59 PM
    Author     : hemlu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
<title>Registration Page</title>
<style>
.offer-table {
width: 80%;
margin: auto;
margin-top: 4%;
}
table,th,td {
border-collapse: collapse;
padding: 15px;
text-align: center;
}
td {
background-color: rgb(203, 224, 243);
}

tr {
border: 1px solid white;
}
th {
background-color: #0093E9;
color: white;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
font-size: medium;
}
h1{
    text-align:center;
    margin:135px auto 0px auto; 
    widhth:15en; color:blue; 
    font-family: \"Lucida Console\", Courier, monospace;
}
h2{
    font-family: Arial, Helvetica, sans-serif; 
    text-align:center; 
    margin:55px auto 0px auto; 
    widhth:15en;}

</style>
</head>
<body>
<h1 style="text-align: center;">Easy Flight : Reading Form data using JSP</h1>
<h2 style="margin-left: 2%;">Registration Details</h2>
<table class="offer-table">
<tr>
<th>Username</th>
<th>Firstname</th>
<th>Lastname</th>
<th>DOB</th>
<th>Gender</th>
<th>Address</th>
<th>Nation</th>
<th>Mobile</th>
<th>Email</th>
<th>Password</th>
</tr>
<tr>
<td><%= request.getParameter("username")%></td>
<td><%= request.getParameter("fname")%></td>
<td><%= request.getParameter("lname")%></td>
<td><%= request.getParameter("dob")%></td>
<td><%=request.getParameter("gender")%></td>
<td><%= request.getParameter("add")%></td>
<td><%= request.getParameter("nat")%></td>
<td><%= request.getParameter("mob")%></td>
<td><%=request.getParameter("mail")%></td>
<td><%=request.getParameter("pwd")%></td>
</tr>
</table>
</body>
</html>
