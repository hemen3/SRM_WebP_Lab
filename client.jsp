<%-- 
    Document   : client
    Created on : 19 Nov, 2020, 4:58:27 PM
    Author     : hemlu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
font-size: medium;
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
<h1 style="text-align: center;">Easy Flight : Client serive Demo</h1>
<h2 style="margin-left: 2%;">Your Flight Details</h2>
<table class="offer-table">
<tr>
<th>AIRLINE</th>
<th>FROM</th>
<th>DESTINATION</th>
</tr>
<tr>
    <%-- start web service invocation --%>
    <%
    try {
	pack1.MYWebService_Service service = new pack1.MYWebService_Service();
	pack1.MYWebService port = service.getMYWebServicePort();
	java.lang.String airline = "Spicejet";
	java.lang.String from = "Chennai";
	java.lang.String to = "Delhi";
	out.println("<td>"+airline+"</td>");
        out.println("<td>"+from+"</td>");
        out.println("<td>"+to+"</td>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%></tr></table>
    </body>
</html>
