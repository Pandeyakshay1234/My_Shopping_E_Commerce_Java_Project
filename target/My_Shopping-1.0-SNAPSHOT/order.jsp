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
        <title>Payment Method</title>
        <%@include file ="Components/Common_css_js.jsp" %> 
    </head>
    <body>
        <%@include file = "Components/navbar.jsp" %>
        <!--        order detail-->
        <div class="container text-center">
            <div class="row mt-4" style="height:50px mt-5;">
                <div class="container text-center">
                    <h1 class="mt-0">Your Order Confirmation</h1>
                </div>
                <div class="col-md-12">
                                        
                    <div class="card  card-sm mt-5n">
                        <div class="card-body" >
                            <h3 class="text-center  mt-4"> Your selected items </h3>
                            <div class="cart-body">

                            </div>
                            
                           
                                
                                

<h1>Please select your payment method:</h1>
<div class="container text-center">
<form action="process_order.jsp" method="post" >
  <input type="radio" name="paymentMethod" value="creditCard" onclick="showCreditCardForm()"> Credit Card<br>
  <input type="radio" name="paymentMethod" value="other"> Cash On Delivery<br>
 
  <label for="customerEmail">Your Email Address:</label>
  <input style="text-align: center" type="email" name="customerEmail" required>
  <br>
  

  <div id="creditCardForm" style="display: none;">
    <label for="cardNumber">Card Number:</label>
    <input type="text" name="cardNumber" id="cardNumber" required ">
    <br>
    <label for="cardExpiry">Expiry Date (MM/YY):</label>
    <input type="text" name="cardExpiry" id="cardExpiry" required ">
    <br>
    <label for="cardCVC">CVC Code:</label>
    <input type="text" name="cardCVC" id="cardCVC" required ">
    <br>
  </div>

  <button type="submit">Confirm Order</button>
</form>
</div>

<script>
  function showCreditCardForm() {
    var creditCardForm = document.getElementById("creditCardForm");
    if (document.querySelector('input[name="paymentMethod"]:checked').value === "creditCard") {
      creditCardForm.style.display = "block";
    } else {
      creditCardForm.style.display = "none";
    }
  }
  // Enable submit button when a radio button is selected
 
  
</script>

<!--                    <h1>Please select your payment method:</h1>
                    <form action="process_order.jsp" method="post"> <input type="radio" name="paymentMethod" value="creditCard"> Credit Card<br>
                        <input type="radio" name="paymentMethod" value="other">Cash On Delivery<br>
                      
                        <label for="customerEmail">Your Email Address:</label>
                        <input type="email" name="customerEmail" required>
                        <br>
                        <button type="submit">Confirm Order</button>
                    </form>-->
                

                        </div>

                    </div>
                     <div class="container text-center">
            
           
                
                
            
        </div>
     

                    
                    
                </div>
                
               
            </div>
        </div>
        <%@include file="Components/common_modals.jsp" %>
   
    </body>
</html>