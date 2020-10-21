<?php  
    session_start();
    /*if (isset($_SESSION["user_id"]) && isset($_SESSION["user_name"])) 
    {
    
    }*/
    /*var_dump($_SESSION['list'])*/
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/x-icon" href="img/buy_sell.ico">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="main.js"></script>
    <style>
        .list{
            cursor: pointer;
        }
    </style>

  <title>Smart Buy</title>
</head>
<body>
<!---------------- Navbar---------------------->
    <nav class="navbar navbar-dark navbar-expand">
        <div class="container">
            <div class="col-12">
                <ul class="navbar-nav justify-content-between">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">Smart buy</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="mylist/my_list.html">My lists</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="mylist/my_list.html#contact_btn">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="mylist/my_list.html#about_us_btn">About us</a>
                    </li>
                    <li class="nav-item">
                        <?php  
                            if (isset($_SESSION['user_id'])) 
                            { echo "<span style='color: white'>Welcome ".$_SESSION['user_name']."</span>";
                            ?>
                                <button class="btn btn-sm btn-outline-info mt-1" data-toggle="modal" id="logout">Logout</button>
                            <?php }
                            else
                            {?>
                                <button class="btn btn-sm btn-outline-info mt-1" data-toggle="modal" data-target="#sign-in">Sign in</button>
                            <?php }
                        ?>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<!------------------------------Search----------------------->
    <div class="pb-2 search_bar" id="search-bar">
        <div class="container">
                <div class="input-group">
                <input class="form-control" type="text" placeholder="Search items...." id="txtSearch">
                <span class="input-group-prepend">
                    <button class="btn btn-outline-info" id="btnSearch"> Search</button>
               </span>
           </div>
           <div class="list-item" id="result">
            <!--    <table class="table table-dark table-striped w-100">
                                
                                <tr>
                                    <td>Number of Shops</td>
                                    <td>Price in A$</td>
                                    <td>Total savings</td>
                                </tr>
                                <tr>
                                    <td>Three Shops</td>
                                    <td>Price in A$</td>
                                    <td>Savings</td>
                                </tr>
                            </table>    -->      
           </div>
        </div>
    </div>
<!------------------------------Sign in start----------------------->
    <div class="modal" id="sign-in">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="form-container row">
                    
                    <div class="col-lg-8 col=md-12 col-sm-9 col-xs-12 form-box text-center">
                    <div class="mb-5">
                        <button class="close float-right text-light" data-dismiss="modal">&times;</button>
                    </div>
                        <div class="logo mb-3">
                            <img src="img/logo.png" width="150px">
                        </div>
                        <div class="heading mb-4">
                            <h4>Sign in into your account</h4>
                        </div>
                        <form>
                            <div class="form-input">
                                <span><i class="fa fa-envelope"></i></span>
                                <input id="sign_in_email" type="text" placeholder="Email or phone" required>
                            </div>
                            <div class="form-input">
                                <span><i class="fa fa-lock"></i></span>
                                <input id="sign_in_pass" type="password" placeholder="Password" autocomplete="off" required>
                            </div>
                            <div class="row mb-3">
                                <div class="col-6 d-flex">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="cb1">
                                        <label class=" custom-control-label text-white" for="cb1">Remember me</label>
                                    </div>
                                </div>
                                <div class="col-6 text-right">
                                    <a href="#forget-password" data-toggle="modal" class="forget-link" id="forget-pw">Forget password?</a>
                                </div>
                            </div>
                            <div class="text-left mb-3">
                                <button id="btnSignIn" type="submit" class="btn btn-outline-info">Sign in</button>
                            </div>
                            <div class="text-center mb-2">
                                <div class="mb-3" style="color:#777"> or sign in with</div>
                                <a href="http://www.facebook.com" class="btn btn-social btn-facebook">facebook</a>
                                <a href="https://accounts.google.com/signin/v2/identifier?passive=1209600&continue=https%3A%2F%2Fadssettings.google.com%2Fauthenticated&followup=https%3A%2F%2Fadssettings.google.com%2Fauthenticated&flowName=GlifWebSignIn&flowEntry=ServiceLogin" class="btn btn-social btn-google">google</a>
                                <a href="https://twitter.com/login" class="btn btn-social btn-twitter">twitter</a>
                            </div>
                            <div class="text-light">Don't have an account? <a href="#sign-up" class="register-link" data-toggle="modal" id="register-here">Register here</a></div>
                        </form>
                        <div class="modal-footer mt-5">
                            <button class="btn btn-outline-danger" data-dismiss="modal" id="sign-in-close">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!------------------------------Sign in end----------------------->
<!------------------------------Sign up start----------------------->
    <div class="modal" id="sign-up">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="form-container row">
                    
                    <div class="col-lg-8 col=md-12 col-sm-9 col-xs-12 form-box text-center">
                    <div class="mb-5">
                        <button class="close float-right text-light" data-dismiss="modal">&times;</button>
                    </div>
                        <div class="logo mb-3">
                            <img src="img/logo.png" width="150px">
                        </div>
                        <div class="heading mb-4">
                            <h4>Create an account</h4>
                        </div>
                        <form>
                            <div class="form-input">
                                <span><i class="fa fa-user"></i></span>
                                <input id="sign_up_full_name" type="text" placeholder="Full Name" required>
                            </div>
                            <div class="form-input">
                                <span><i class="fa fa-envelope"></i></span>
                                <input id="sign_up_email" type="email" placeholder="Email or phone" required>
                            </div>
                            <div class="form-input">
                                <span><i class="fa fa-phone"></i></span>
                                <input id="sign_up_contact_number" type="text" placeholder="Contact Number" required>
                            </div>
                            <div class="form-input">
                                <span><i class="fa fa-home"></i></span>
                                <input id="sign_up_address" type="text" placeholder="Address" required>
                            </div>
                            <div class="form-input">
                                <span><i class="fa fa-lock"></i></span>
                                <input id="sign_up_pass" type="password" placeholder="Password" autocomplete="off" required>
                            </div>
                            <div class="row mb-3">
                                <div class="col-12 d-flex">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="cb2">
                                        <label id="home_condition" class=" custom-control-label text-white" for="cb2">I agree all terms & conditions</label>
                                    </div>
                                </div>
                            </div>
                            <div class="text-left mb-3">
                                <button id="btnSignUp" type="submit" class="btn btn-outline-info">Sign up</button>
                            </div>
                            <div class="text-center mb-2">
                                <div class="mb-3" style="color:#777"> or sign up with</div>
                                <a href="http://www.facebook.com" class="btn btn-social btn-facebook">facebook</a>
                                <a href="https://accounts.google.com/signin/v2/identifier?passive=1209600&continue=https%3A%2F%2Fadssettings.google.com%2Fauthenticated&followup=https%3A%2F%2Fadssettings.google.com%2Fauthenticated&flowName=GlifWebSignIn&flowEntry=ServiceLogin" class="btn btn-social btn-google">google</a>
                                <a href="https://twitter.com/login" class="btn btn-social btn-twitter">twitter</a>
                            </div>
                            <div class="text-light">Already have an account? <a href="#sign-in" data-toggle="modal" class="register-link" id="sign-in-here">Sign in here</a></div>
                        </form>
                        <div class="modal-footer mt-5">
                            <button class="btn btn-outline-danger" data-dismiss="modal" id="sign-up-close">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!------------------------------Sign up end----------------------->
<!-----------------------Forget password start----------------------->
    <div class="modal" id="forget-password">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="form-container row">
                    
                    <div class="col-lg-8 col=md-12 col-sm-9 col-xs-12 form-box">
                    <div class="mb-5">
                        <button class="close float-right text-light" data-dismiss="modal">&times;</button>
                    </div>
                        <div class=" text-center logo mb-3">
                            <img src="img/logo.png" width="150px">
                        </div>
                            <div class="reset-form d-block">
                                <form class="reset-password-form">
                                    <h4 class="mb-3">Reset your password</h4>
                                    <p class="mb-3 text-white">Please enter your email address</p>
                                    <div class="form-input">
                                        <span><i class="fa fa-envelope"></i></span>
                                        <input type="text" placeholder="Email or phone" required>
                                    </div>
                                    <div class="mb-3">
                                        <button class="btn btn-outline-info" type="submit">Send Reset link</button>
                                    </div>
                                </form>
                            </div>
                            <div class="reset-confirmation d-none">
                                <div class="mb-4">
                                    <h4 class="mb-3">Link was send</h4>
                                    <h6 class="text-white">Please check your inbox</h6>
                                </div>
                                <div>
                                    <a href="#sign-in">
                                        <button type="submit" class="btn btn-outline-info" data-toggle="modal" data-target="#sign-in" id="sign-in-now">Sign in Now</button>
                                    </a>
                                </div>
                            </div>
                        <div class="modal-footer mt-5">
                            <button class="btn btn-outline-danger" data-dismiss="modal" id="forget-password-close">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-----------------------Forget password ends----------------------->
<!-------------------------main body section start----------------->
    <section>
        <div class="dark-overlay">
            <div class="home-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7">
                            <div id="product_add">
                                
                            </div>
<!----------------Products list table--------------------->
                            <div>
                                <h4 class="text-light">Products list</h4>
                                <table id="product_list_row" class="table-dark table-striped text-center mb-4 product_list_table">
                                    <tr>
                                        <th>Name</th>
                                        <th>Amount</th>
                                        <th>Unit</th>
                                        <th>Cost</th>
                                        <th colspan="2">Action</th>
                                    </tr>
                                    <?php
                                    if(isset($_SESSION['user_id']))
                                        {
                                            include_once 'product_list.php';
                                        } ?>
                                </table>
                                <button id="calculate" class="btn btn-sm btn-outline-info">Calculate</button>
                            </div>
<!-----------------Cheapest price table---------------------->
                            <div>
                                
                                <div>
                                    <select class="btn btn-outline-info disable_scrolling">
                                        <option class="bg-dark text-info">Number of shops</option>
                                        <option class="bg-dark text-info"><a href="#">One shop</a></option>
                                        <option class="bg-dark text-info"><a href="#">Two shops</a></option>
                                        <option class="bg-dark text-info"><a href="#">Three shops</a></option>
                                    </select>
                                </div>
                                <h4 class="text-info">Get products in cheapest price</h4>
                            </div>
                            <div>
                                <table class="table text-center mt-1 cheapest_price_table">
                                    <tr>
                                        <td>
                                            <div>
                                                <input type="checkbox" class="btn-info" id="cb_coles">
                                                <label class="text-white" for="cb_coles">Coles</label>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <input type="checkbox" class="btn-info" id="cb_woolworths">
                                                <label class="text-white" for="cb_woolworths">Woolworths</label>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <input type="checkbox" class="btn-info" id="cb_aldi">
                                                <label class="text-white" for="cb_aldi">Aldi</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <ul>
                                                <ul id="product_list_coles">
                                                <?php if(isset($_SESSION['user_id'])){include_once 'home_shopwise_list_coles.php';}?>
                                                <!-- <li>Coffee</li> -->
                                            </ul>
                                            </ul>
                                        </td>
                                        <td>
                                            <ul id="product_list_woolworths">
                                                <?php if(isset($_SESSION['user_id'])){include_once 'home_shopwise_list_woolworths.php';}?>
                                                <!-- <li>Mango</li> -->
                                            </ul>
                                        </td>
                                        <td>
                                            <ul id="product_list_aldi">
                                                <?php if(isset($_SESSION['user_id'])){include_once 'home_shopwise_list_aldi.php';}?>
                                                <!-- <li>Orange</li> -->
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                                <div id="suggestion">
                                    <!-- <span style="color: red">Hello</span> -->
                                </div>
                            </div>
<!------------------Save or Share----------------------->
                            <div class="btn-group">
                                <button class="btn btn-outline-info">Save</button>
                                <button class="btn btn-outline-info">Add to my lists</button>
                                <button class="btn btn-outline-info">Share</button>
                            </div>
                        </div>
<!----------------------------Savings table--------------------------->
                        <div class="col-md-5">
                            <table class="table table-dark table-striped text-center mt-4 saving_table">
                                <tr>
                                    <td>Number of Shops</td>
                                    <td>Total cost in A$</td>
                                    <td>Total savings</td>
                                </tr>
                                <tr>
                                    <td>Three Shops</td>
                                    <td><span id="Three_shops">
                                        <?php if(isset($_SESSION['user_id'])){include_once "three_shops_total.php";} ?></span></td>
                                    <td>Savings</td>
                                </tr>
                                <tr>
                                    <td>Two Shops</td>
                                    <td>Price in A$ <span id="Two_shops"></span></td>
                                    <td>Savings</td>
                                </tr>
                                <tr>
                                    <td>One Shop</td>
                                    <td>Price in A$ <span id="One_shops"></span></td>
                                    <td>Savings</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-------------------------main body section end----------------->
<!-----------------------------footer start--------------------->
    <footer class="text-center text-light py-1 mt-2 fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p class="pt-2">Copyright &copy; 2020, <a href="index.html" class=" text-light">Smart Buy</a></p>
                </div>
            </div>
        </div>
    </footer>
<!-----------------------------footer end--------------------->

  <script>
  /*--------------sign in & sign up-----------------*/ 
  $(document).ready(function(){
      $('#register-here').click(function(){
          $('#sign-in-close').click();
          });
      $('#sign-in-here').click(function(){
          $('#sign-up-close').click();
          });
      });

    /*--------------forget password-----------------*/ 
    $(document).ready(function(){
        $('#forget-pw').click(function(){
          $('#sign-in-close').click();
          }); 
        $('#sign-in-now').click(function(){
          $('#forget-password-close').click();
          });
     });
    function PasswordReset(){
        $('form.reset-password-form').on('submit',function(e){
            e.preventDefault();
            $('.reset-form').removeClass('d-block').addClass('d-none');
            $('.reset-confirmation').addClass('d-block');
            });
        }
    window.addEventListener('load',function(){
        PasswordReset();
        });
  </script>
</body>
</html>
