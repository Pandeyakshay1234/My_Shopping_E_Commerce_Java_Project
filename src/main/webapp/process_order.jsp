
<%
   User user = (User) session.getAttribute("current -user"); 
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>order Placed</title>
        <%@include file ="Components/Common_css_js.jsp" %> 
    </head>
    <body style="background-image: url(img/6505894.jpg);background-repeat: no-repeat;
             background-position: left top;
             background-attachment: fixed; background-size: 100%">
        <%-- Simulate order processing and email sending --%>
<%@include file = "Components/navbar.jsp" %>
<div class="container text-center">
 <div class="bgg">
<h1>ORDER SUMMERY</h1>

<h2>Thank you for your order! We are processing it now.</h2>
<h2>A confirmation email will be sent to your address shortly.</h2>
<br><br>

<%-- Assuming you have captured payment method and email from the form --%>
<h2>Selected Payment Method:<%= request.getParameter("paymentMethod") %></h2>
<h2>Customer Name: <%= user.getUserName()%></h2>
<h2>Customer Email: <%= request.getParameter("customerEmail") %></h2>
<h2>Customer Email: <%= user.getUserPhone()%></h2>
<h2>Customer Address:  <%= user.getUserAddress()%></h2>

 </div>
</div>
        
    </body>
</html>
