<%@page import="com.mylearn.my_shopping.helper.Helper"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.my_shopping.entities.Category"%>
<%@page import="com.mylearn.my_shopping.helper.FactoryProvider"%>
<%@page import="com.learn.my_shopping.dao.CategoryDao"%>
<%@page import="com.learn.my_shopping.entities.User"%>
<%@page import = "org.hibernate.SessionFactory"%>
<%@page import = "org.hibernate.Session"%>
<%

    User user = (User) session.getAttribute("current -user");
    if (user == null) {
        session.setAttribute("message", "Login first");
        response.sendRedirect("login.jsp");
        return;
    } else {
        if (user.getUserType().equals("normal")) {
            session.setAttribute("message", "you are not admin! Do not access this page");
            response.sendRedirect("login.jsp");
            return;
        }
    }

%>
<%   CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
    List<Category> list = cdao.getcategory();
    
   //getting count
   Map<String,Long> m = Helper.getCounts(FactoryProvider.getFactory());   
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        <%@include file ="Components/Common_css_js.jsp" %> 
        
        



    </head>
    <body>
        <%@include file = "Components/navbar.jsp" %>
        <div class="container admin">
            <div class ="container-fluid mt-3">
                <%@include file="Components/message.jsp"%>
            </div>
            <div class="row mt-4">
                <!-- first col-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 120px;" class="img-fluid rounded-circle" src="img/seo-and-web.png" alt="user_icon">
                            </div>
                           <h1><%=m.get("userCount")%></h1>
                            <h1 class="text-uppercase">Users</h1>
                        </div>
                    </div>

                </div>

                <!-- second col--> 
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 120px;" class="img-fluid rounded-circle" src="img/list.png" alt="user_icon">
                            </div>
                            <h1><%=list.size()%></h1>
                            <h1 class="text-uppercase">Categories</h1>
                        </div>
                    </div>

                </div>

                <!-- third col-->
                <div class="col-md-4">
                    <div class="card ">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 120px;" class="img-fluid rounded-circle" src="img/product.png" alt="user_icon">
                            </div>
                            <h1><%=m.get("productCount")%></h1>
                            <h1 class="text-uppercase">Products</h1>
                        </div>
                    </div>

                </div>
            </div>  
            <!--  second row-->
            <div class="row mt-3">
                <!--  second row first col-->
                <div class="col-md-6">   

                    <div class="card" data-toggle="modal" data-target="#add-category-model">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 120px;" class="img-fluid rounded-circle" src="img/keys.png" alt="user_icon">
                            </div>
                            <p class="mt-2">Click here to add new category</p>
                            <h1 class="text-uppercase ">Add Category</h1>
                        </div>
                    </div>
                </div
                <!--  second row second col-->
                <div class="col-md-6">
                    <div class="card" data-toggle="modal" data-target="#add-product-model">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 120px;" class="img-fluid rounded-circle" src="img/plus.png" alt="user_icon">
                            </div>
                            
                            <p class="mt-2 ">Click here to add new product</p>
                            <h1 class="text-uppercase ">Add Product</h1>
                        </div>
                    </div>

                </div>
            </div>  
        </div>
        <!-- add category model-->



        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade" id="add-category-model" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog model-lg" role = "document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Fill Category details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form  action="ProductOperationServlet" method="post">

                            <input type="hidden" name="operation" value="addcategory">
                            <div class ="form-group">
                                <input type="text" class ="form-control" name="catTitle" placeholder="Enter category title" required/>
                            </div>

                            <div class ="form-group">

                                <textarea style="height: 300px" class ="form-control" placeholder="Enter category description" name ="catDescription" required></textarea>
                            </div>
                            <div class="container text-center">

                                <button class = "btn btn-outline-success">Add category</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>

                        </form>

                    </div>

                </div>
            </div> 
        </div>


        <!--End category model-->
        <!--   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++     -->
        <!--        product model-->
        <!-- Button trigger modal -->
        <!--        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    Launch demo modal
                </button>-->

        <!-- Modal -->
        <div class="modal fade" id="add-product-model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Product details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!--          form-->


                        <form  action="ProductOperationServlet" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="operation" value="addproduct"/>

                            <!--    product title-->

                            <div class="form-group">
                                <input type="text" class ="form-control" placeholder="Enter title of product" name="pName" required />

                            </div>

                            <!--product description-->

                            <div class ="form-group">
                                <textarea style ="height: 150px;"class="form-control" 
                                          placeholder="Enter product description" name="pDesc" required></textarea>
                            </div>

                            <!--                              product price-->
                            <div class="form-group">
                                <input type="number" class ="form-control" placeholder="Enter price of product" name="pPrice" required />

                            </div>
                            <!--                              product discount-->
                            <div class="form-group">
                                <input type="number" class ="form-control" placeholder="Enter  product discount" name="pDiscount" required />

                            </div>
                            <!--                               product Quantitiy-->
                            <div class="form-group">
                                <input type="number" class ="form-control" placeholder="Enter  product quantity" name="pQuantity" required />

                            </div>


                            <!--                          product category-->




                            <div class="form-group">
                                <select name="catId"  class ="form-control" id="">
                                    <%     for (Category c : list) {

                                    %>


                                    <option value="<%=c.getCategoryId()%>"> <%=c.getCategoryTitle()%></option>

                                    <% ;
                                        }
                                    %>
                                </select>


                            </div>

                            <!--                            product file-->

                            <div class="form-group">
                                <label for="pPic">Select Picture of products</label>
                                <br>
                                <input type="file" name="pPic" required />

                            </div>
                            <!--                            submit  button-->
                            <div class="container" text-center>
                                <button class="btn btn-outline-success">Add product</button>
                            </div>


                        </form>









                        <!--        end form-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div>





        <!--end product model-->
        <%@include file="Components/common_modals.jsp" %> 
        
        

    </body>
</html>
