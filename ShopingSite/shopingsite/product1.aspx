<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product1.aspx.cs" Inherits="ShopingSite.product1" %>

<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <link rel="icon" href="images/fevicon.png" type="image/gif" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Minics</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet"> <!-- range slider -->

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">
    <form id="form1" runat="server">
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="header_top">
        <div class="container-fluid">
          <div class="top_nav_container">
            <div class="contact_nav">
              <asp:LinkButton ID="phone" runat="server" href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call : +01 123455678990
                </span>
              </asp:LinkButton>
              <asp:LinkButton  ID="envelope" runat="server" href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  Email : demo@gmail.com
                </span>
              </asp:LinkButton>
            </div>
         <from class="search_form">

                           &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


             </from>
            <asp:Button ID="Login" runat="server" Text="Login" class="btn btn-success" OnClick="Login_Click" />
            &nbsp;&nbsp;  <asp:Button ID="Register" runat="server" Text="Register" class="btn btn-primary" OnClick="Register_Click" />
              &nbsp;&nbsp;
              <asp:Button ID="logout" runat="server" Visible="false" Text="Logout" class="btn btn-danger" OnClick="logout_Click" />
            <div class="user_option_box">
              <asp:LinkButton ID="cart" runat="server"  class="cart-link" OnClick="cart_Click">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                <span>
                  Cart
                </span>
              </asp:LinkButton>
            </div>
          </div>

        </div>
      </div>
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <asp:LinkButton ID="index" runat="server" class="navbar-brand" href="index1.aspx">
              <span>
                Minics
              </span>
            </asp:LinkButton>

            <asp:Button ID="navtog" runat="server" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              
            </asp:Button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ">
                <li class="nav-item ">
                  <asp:LinkButton ID="home" runat="server" class="nav-link" href="index1.aspx">Home <span class="sr-only">(current)</span></asp:LinkButton>
                </li>
                <li class="nav-item">
                  <asp:LinkButton ID="about" class="nav-link" runat="server" href="about1.aspx"> About</asp:LinkButton>
                </li>
                <li class="nav-item active">
                  <asp:LinkButton ID="product" runat="server" class="nav-link" href="product1.aspx">Products</asp:LinkButton>
                </li>
                <li class="nav-item">
                  <asp:LinkButton ID="why" runat="server" class="nav-link" href="why1.aspx">Why Us</asp:LinkButton>
                </li>
                <li class="nav-item">
                  <asp:LinkButton ID="testimonial" runat="server" class="nav-link" href="testimonial1.aspx">Testimonial</asp:LinkButton>
                </li>
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </header>
    <!-- end header section -->
  </div>


  <!-- product section -->

  <section class="product_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Our Products
        </h2>
      </div>
      <div class="row">
          <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
        <div class="col-sm-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <asp:Image ID="p1" runat="server" ImageUrl='<%#Eval("product_imgpath") %>' alt="" />
              <a ID="addtocart1"  href="cart.aspx?name=<%#Eval("product_name")%>" class="add_cart_btn" >
                <span>
                  Add To Cart
                </span>
              </a>
            </div>
            <div class="detail-box">
              <h5>
                  <%#Eval("product_name") %>
              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span> <%#Eval("product_price") %>
                </h5>
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
                  </ItemTemplate>
              </asp:Repeater>
        <%--<div class="col-sm-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <asp:Image ID="p2" runat="server" src="images/p2.png" alt="" />
              <asp:LinkButton ID="addtocart2" runat="server" href="" class="add_cart_btn">
                <span>
                  Add To Cart
                </span>
              </asp:LinkButton>
            </div>
            <div class="detail-box">
              <h5>
                Product Name
              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span> 300
                </h5>
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <asp:Image ID="p3" runat="server" src="images/p3.png" alt="" />
              <asp:LinkButton ID="addtocart3" runat="server" href="" class="add_cart_btn">
                <span>
                  Add To Cart
                </span>
              </asp:LinkButton>
            </div>
            <div class="detail-box">
              <h5>
                Product Name
              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span> 300
                </h5>
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <asp:Image ID="p4" runat="server" src="images/p4.png" alt="" />
              <asp:LinkButton ID="addtocart4" runat="server" href="" class="add_cart_btn">
                <span>
                  Add To Cart
                </span>
              </asp:LinkButton>
            </div>
            <div class="detail-box">
              <h5>
                Product Name
              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span> 300
                </h5>
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <asp:Image ID="p5" runat="server" src="images/p5.png" alt="" />
              <asp:LinkButton ID="addtocart5" runat="server" href="" class="add_cart_btn">
                <span>
                  Add To Cart
                </span>
              </asp:LinkButton>
            </div>
            <div class="detail-box">
              <h5>
                Product Name
              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span> 300
                </h5>
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
          <div class="box">
            <div class="img-box">
             <asp:Image ID="p6" runat="server" src="images/p6.png" alt="" />
              <asp:LinkButton ID="addtocart6" runat="server" href="" class="add_cart_btn">
                <span>
                  Add To Cart
                </span>
              </asp:LinkButton>
            </div>
            <div class="detail-box">
              <h5>
                Product Name
              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span> 300
                </h5>
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <asp:Image ID="p7" runat="server" src="images/p7.png" alt="" />
              <asp:LinkButton ID="addtocart" runat="server" href="" class="add_cart_btn">
                <span>
                  Add To Cart
                </span>
              </asp:LinkButton>
            </div>
            <div class="detail-box">
              <h5>
                Product Name
              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span> 300
                </h5>
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <asp:Image ID="p8" runat="server" src="images/p8.png" alt="" />
              <asp:LinkButton ID="addtocar8" runat="server" href="" class="add_cart_btn">
                <span>
                  Add To Cart
                </span>
              </asp:LinkButton>
            </div>
            <div class="detail-box">
              <h5>
                Product Name
              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span> 300
                </h5>
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <asp:Image ID="p9" runat="server" src="images/p9.png" alt="" />
              <asp:LinkButton ID="addtocart9" runat="server" href="" class="add_cart_btn">
                <span>
                  Add To Cart
                </span>
              </asp:LinkButton>
            </div>
            <div class="detail-box">
              <h5>
                Product Name
              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span> 300
                </h5>
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
              </div>
            </div>
          </div>
        </div>--%>
      </div>
      <div class="btn_box">
        <asp:LinkButton ID="view_more" runat="server" href="" class="view_more-link">
          View More
        </asp:LinkButton>
      </div>
    </div>
  </section>

  <!-- end product section -->


  <!-- info section -->
  <section class="info_section ">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="info_contact">
            <h5>
              <asp:LinkButton ID="sitename" runat="server" href="" class="navbar-brand">
                <span>
                  Minics
                </span>
              </asp:LinkButton>
            </h5>
            <p>
              <i class="fa fa-map-marker" aria-hidden="true"></i>
              Address
            </p>
            <p>
              <i class="fa fa-phone" aria-hidden="true"></i>
              +01 1234567890
            </p>
            <p>
              <i class="fa fa-envelope" aria-hidden="true"></i>
              demo@gmail.com
            </p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info_info">
            <h5>
              Information
            </h5>
            <p>
              Eligendi sunt, provident, debitis nemo, facilis cupiditate velit libero dolorum aperiam enim nulla iste maxime corrupti ad illo libero minus.
            </p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info_links">
            <h5>
              Useful Link
            </h5>
            <ul>
              <li>
                <asp:LinkButton ID="index1" runat="server" href="index1.aspx">
                  Home
                </asp:LinkButton>
              </li>
              <li>
                <asp:LinkButton ID="about1" runat="server" href="about1.aspx">
                  About
                </asp:LinkButton>
              </li>
              <li>
                <asp:LinkButton ID="products1" runat="server" href="product1.aspx">
                  Products
                </asp:LinkButton>
              </li>
              <li>
                <asp:LinkButton ID="why1" runat="server" href="why1.aspx">
                  Why Us
                </asp:LinkButton>
              </li>
              <li>
                <asp:LinkButton ID="testimonial1" runat="server" href="testimonial1.aspx">
                  Testimonial
                </asp:LinkButton>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info_form ">
            <h5>
              Newsletter
            </h5>
            
              <asp:TextBox ID="mail" runat="server" type="email" placeholder="Enter your email">
                  </asp:TextBox>
              <asp:Button ID="Subscribe" runat="server" Text="Subscribe">
                
              </asp:Button>
            <div class="social_box">
              <asp:LinkButton ID="facebook" runat="server" href="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </asp:LinkButton>
              <asp:LinkButton ID="twitter" runat="server" href="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </asp:LinkButton>
              <asp:LinkButton ID="instagram" runat="server" href="">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </asp:LinkButton>
              <asp:LinkButton ID="youtube" runat="server" href="">
                <i class="fa fa-youtube" aria-hidden="true"></i>
              </asp:LinkButton>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info_section -->


  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Free Html Templates</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>

</form>
</body>

</html>
