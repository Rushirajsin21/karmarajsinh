<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="why1.aspx.cs" Inherits="ShopingSite.why1" %>

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
              <asp:LinkButton ID="envelope" runat="server" href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  Email : demo@gmail.com
                </span>
              </asp:LinkButton>
            </div>
            <from class="search_form">
              <asp:TextBox ID="srch" runat="server" type="text" class="form-control" placeholder="Search here...">
                  </asp:TextBox>
               <asp:LinkButton ID="btnsubmit"  runat="server" type="submit" class="bg-warning bs-tooltip-right rounded-right align-content-center">
                   &#128269;   

                   </asp:LinkButton>
            </from>
            <div class="user_option_box">
              <asp:LinkButton ID="myaccount" runat="server" href="" class="account-link">
                <i class="fa fa-user" aria-hidden="true"></i>
                <span>
                  My Account
                </span>
              </asp:LinkButton>
              <asp:LinkButton ID="cart" runat="server" href="" class="cart-link">
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
                  <asp:LinkButton ID="abouts1" runat="server" class="nav-link" href="about1.aspx"> About</asp:LinkButton>
                </li>
                <li class="nav-item">
                  <asp:LinkButton ID="product1" runat="server" class="nav-link" href="product1.aspx">Products</asp:LinkButton>
                </li>
                <li class="nav-item active">
                  <asp:LinkButton ID="whys1" runat="server" class="nav-link" href="why1.aspx">Why Us</asp:LinkButton>
                </li>
                <li class="nav-item">
                  <asp:LinkButton ID="testimonials1" runat="server" class="nav-link" href="testimonial1.aspx">Testimonial</asp:LinkButton>
                </li>
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- why us section -->

  <section class="why_us_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Why Choose Us
        </h2>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="box ">
            <div class="img-box">
              <asp:Image ID="w1" runat="server" src="images/w1.png" alt="" />
            </div>
            <div class="detail-box">
              <h5>
                Fast Delivery
              </h5>
              <p>
                variations of passages of Lorem Ipsum available
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="box ">
            <div class="img-box">
              <asp:Image ID="w2" runat="server" src="images/w2.png" alt="" />
            </div>
            <div class="detail-box">
              <h5>
                Free Shiping
              </h5>
              <p>
                variations of passages of Lorem Ipsum available
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="box ">
            <div class="img-box">
              <asp:Image ID="w3" runat="server" src="images/w3.png" alt="" />
            </div>
            <div class="detail-box">
              <h5>
                Best Quality
              </h5>
              <p>
                variations of passages of Lorem Ipsum available
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end why us section -->

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
                <asp:LinkButton ID="home1" runat="server" href="index1.aspx">
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
                <asp:LinkButton ID="why_1" runat="server" href="why1.aspx">
                  Why Us
                </asp:LinkButton>
              </li>
              <li>
                <asp:LinkButton ID="testimonials" runat="server" href="testimonial1.aspx">
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
              <asp:LinkButton ID="facebook"  runat="server"  href="">
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
        &copy; <span id="displayYear"></span> All Rights Reserved By @ Minics
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