<%
   User user = (User) session.getAttribute("current -user");
    if (user == null) {
        session.setAttribute("message", "Login first to access checkoutpage");
        response.sendRedirect("login.jsp");
        return;
    }
    
 %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <%@include file ="Components/Common_css_js.jsp" %> 
    </head>
    <body>
        <%@include file = "Components/navbar.jsp" %>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-6">                                      
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center mb-5"> Your selected items </h3>
                            <div class="cart-body">

                            </div>

                        </div>

                    </div>
                </div>

                <div class="col-md-6">
                    <!--                     form details-->
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center mb-5"> Your details for order </h3>
                            <form action="#!">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input value="<%= user.getUserEmail()%>" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Your name</label>
                                    <input value="<%= user.getUserName()%>"type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Name">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Contact</label>
                                    <input value="<%= user.getUserPhone()%>"type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Contact number">

                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Your sipping address</label>
                                    <textarea value="<%= user.getUserAddress()%>" class="form-control" id="exampleFormControlTextarea1" placeholder="Enter your address" rows="3"></textarea>
                                </div>
                                <div class="container text-center">
                                    <button class="btn-outline-success"> <a href="order.jsp">Order Now</a></button>
                                    <button class="btn-outline-primary"> <a href="index.jsp"> Continue Shopping</a></button>
                                </div>
                            </form>

                        </div>

                    </div>
                </div>

            </div>
        </div>
        <%@include file="Components/common_modals.jsp" %>
    </body>
</html>
