  <%@page import="com.learn.my_shopping.entities.User"%>
<%
    User user2= (User) session.getAttribute("current -user");
%> 
<!-- Modal -->
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog model-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg">
        <h5 class="modal-title" id="exampleModalLabel">Your Cart</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">  
          <div class="cart-body"> 
              
              
          </div>
        
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary checkout-btn" onclick="goToCheckout()">Checkout</button>
      </div>
    </div>
  </div>
</div>

 
<!--profile model      -->



<!-- Modal -->
<div class="container">
<div class="modal fade" id="profile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg"" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white ">
          
           <h2 class="modal-title" id="exampleModalLabel">Profile</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         
                <img src="img/<%=user2.getUserPic()%>" style="display: block; margin: 0 auto; max-width: 200px;">
               <h3>  name :- <%=user2.getUserName()%></h3>
               <h3>  Email :- <%=user2.getUserEmail()%></h3>
               <h3>  Password :- <%=user2.getUserPassword()%></h3>
               <h3> Phone :- <%=user2.getUserPhone()%></h3>
               <h3> Address:- <%=user2.getUserAddress()%></h3>
                 
             
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary custom-bg text-white"><a href="Profile_edit.jsp" style="color: red"> Edit </a></button>
      </div>
    </div>
  </div>
</div>
</div>




end of model-->
    </body>
</html>
