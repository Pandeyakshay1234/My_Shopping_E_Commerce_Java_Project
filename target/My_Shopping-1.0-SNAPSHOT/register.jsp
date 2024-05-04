<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
        <%@include file = "Components/Common_css_js.jsp"%> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    </head>
    <body>
        <%@include file = "Components/navbar.jsp" %>
        <div class="container-fluid">
            <div class ="row mt-1">
                <div class= "col-md-4 offset-md-4">
                    <div class ="card">
                        
                        <%@include file = "Components/message.jsp"%>
                        
                        <div class ="card-body px-5">

                            <div style="text-align: center;">
                                <i class="fas fa-users" style="font-size: 3em;"></i>
                            </div>
                            <h3 class="text-center my-3">Sign Up Here!!</h3>
                            <form action ="RegisterServlet" method="post">

                                <div class="form-group">
                                    <label for="name">User Name</label>
                                    <input name ="user_name" type="text"  class="form-control" id="name"  placeholder = "Enter Here" aria-describedby="emailHelp" placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <label for="email">User Email</label>
                                    <input name ="user_email" type="email" class="form-control" id="email"  placeholder = "Enter Here" aria-describedby="emailHelp" placeholder="Enter email">
                                </div>

                                <div class="form-group">
                                    <label for="password">User Password</label>
                                    <input name ="user_password" type="password" class="form-control" id="password"  placeholder = "Enter Here" aria-describedby="emailHelp" placeholder="Enter email">
                                </div>

                                <div class="form-group">
                                    <label for="phone">User phone</label>
                                    <input name ="user_phone" type="number" class="form-control" id="phone"  placeholder = "Enter Here" aria-describedby="emailHelp" placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <label for="phone">User Address</label>
                                    <textarea name ="user_address" style ="height :100px; "class="form-control"  placeholder = "Enter your Address" ></textarea>
                                </div>

                                <div class = "container text-center">
                                    <button class="btn btn-outline-success">Register</button> 
                                    <button class ="btn btn-outline-warning"> Reset</button>
                                </div>
                            </form>
                        </div>
                    </div>       

                </div>
            </div>
        </div>
    </body>
</html>
