<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index1.aspx.cs" Inherits="ShopingSite.index1" %>

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

<body>
    <form id="frm1" runat="server">

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="header_top">
        <div class="container-fluid">
          <div class="top_nav_container">
            <div class="contact_nav">
              <asp:LinkButton ID="phone" runat="server" href="#">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call : +01 123455678990
                </span>
              </asp:LinkButton>
              <asp:LinkButton ID="envelope" runat="server" href="#">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  Email : d&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


             </from>
              <asp:Button ID="Admin_Login" runat="server" Text="Admin Login" class="btn btn-warning" OnClick="Admin_Login_Click" />
              &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Login" runat="server" Text="Login" class="btn btn-success" OnClick="Login_Click" />
            &nbsp;&nbsp;  <asp:Button ID="Register" runat="server" Text="Register" class="btn btn-primary" OnClick="Register_Click" />
              &nbsp;&nbsp;
              <asp:Button ID="logout" runat="server" Visible="false" Text="Logout" class="btn btn-danger" OnClick="logout_Click" />
            <div class="user_option_box">
           
              <asp:LinkButton ID="cart" runat="server"  class="cart-link" OnClick="cart_Click"> <i class="fa fa-shopping-cart" aria-hidden="true"></i><span>Cart </span></asp:LinkButton>
            </div>
          </div>

        </div>
      </div>
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <asp:LinkButton ID="index" runat="server" class="navbar-brand" href="index1.aspx"> <span>Minics </span></asp:LinkButton>

            <asp:Button ID="navtog" runat="server" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" OnClick="navtog_Click">
            </asp:Button>
              

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ">
                <li class="nav-item active">
                  <asp:LinkButton ID="home" runat="server" class="nav-link" href="index1.aspx">Home <span class="sr-only">(current)</span></asp:LinkButton>
                </li>
                <li class="nav-item">
                  <asp:LinkButton ID="about" runat="server" class="nav-link" href="about1.aspx"> About</asp:LinkButton>
                </li>
                <li class="nav-item">
                  <asp:LinkButton ID="products" runat="server" class="nav-link" href="product1.aspx">Products</asp:LinkButton>
                </li>
                <li class="nav-item">
                  <asp:LinkButton ID="whyus" runat="server" class="nav-link" href="why1.aspx">Why Us</asp:LinkButton>
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
    <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Welcome to our shop
                          <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Welcome to our shop
                    </h1>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quam velit saepe dolorem deserunt quo quidem ad optio.
                    </p>
                    <asp:LinkButton ID="readmore" runat="server" href="#">
                      Read More
                    </asp:LinkButton>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <asp:Image ID="slider_img" runat="server" src="images/slider-img.png" alt="" />
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Welcome to our shop
                    </h1>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quam velit saepe dolorem deserunt quo quidem ad optio.
                    </p>
                    <asp:LinkButton ID="readmore2" runat="server" href="#">
                      Read More
                    </asp:LinkButton>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <asp:Image ID="slider_img2" runat="server" src="images/slider-img.png" alt="" />
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Welcome to our shop
                    </h1>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quam velit saepe dolorem deserunt quo quidem ad optio.
                    </p>
                    <asp:LinkButton ID="readmore3" runat="server" href="#">
                      Read More
                    </asp:LinkButton>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <asp:Image ID="slider_img3" runat="server"  src="images/slider-img.png" alt="" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel_btn_box">
          <asp:LinkButton ID="Carousel1" runat="server" class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
            <span class="sr-only">Previous</span>
          </asp:LinkButton>
          <asp:LinkButton ID="Carousel2" runat="server" class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
            <span class="sr-only">Next</span>
          </asp:LinkButton>
        </div>
      </div>
    </section>
    <!-- end slider section -->
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
              <a ID="addcart"  href="cart.aspx?name=<%#Eval("product_name") %>" class="add_cart_btn" >
                <span>
                  Add To Cart
                </span>
              </a>
            </div>
            <div class="detail-box">
              <h5>
<%#Eval("product_name") %>              </h5>
              <div class="product_info">
                <h5>
                  <span>$</span><%#Eval("product_price") %>
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
              <asp:LinkButton ID="addtocart2" runat="server" href="#" class="add_cart_btn">
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
              <asp:LinkButton ID="addtocart3" runat="server" href="#" class="add_cart_btn">
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
              <asp:LinkButton ID="addtocart4" runat="server" href="#" class="add_cart_btn">
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
              <asp:LinkButton ID="addtocart5" runat="server" href="#" class="add_cart_btn">
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
              <asp:LinkButton ID="addtocart6" runat="server" href="#" class="add_cart_btn">
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
              <asp:LinkButton ID="addtocart7" runat="server" href="#" class="add_cart_btn">
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
              <asp:LinkButton ID="addtocart8" runat="server" href="#" class="add_cart_btn">
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
              <asp:LinkButton ID="addtocart9" runat="server" href="#" class="add_cart_btn">
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
        <asp:LinkButton ID="view" runat="server" href="#" class="view_more-link">
          View More
        </asp:LinkButton>
      </div>
    </div>
  </section>

  <!-- end product section -->

  <!-- about section -->

  <section class="about_section">
    <div class="container-fluid  ">
      <div class="row">
        <div class="col-md-5 ml-auto">
          <div class="detail-box pr-md-3">
            <div class="heading_container">
              <h2>
                We Provide Best For You
              </h2>
            </div>
            <p>
              Totam architecto rem beatae veniam, cum officiis adipisci soluta perspiciatis ipsa, expedita maiores quae accusantium. Animi veniam aperiam, necessitatibus mollitia ipsum id optio ipsa odio ab facilis sit labore officia!
              Repellat expedita, deserunt eum soluta rem culpa. Aut, necessitatibus cumque. Voluptas consequuntur vitae aperiam animi sint earum, ex unde cupiditate, molestias dolore quos quas possimus eveniet facilis magnam? Vero, dicta.
            </p>
            <asp:LinkButton ID="readmore4" runat="server" href="#">
              Read More
            </asp:LinkButton>
          </div>
        </div>
        <div class="col-md-6 px-0">
          <div class="img-box">
            <asp:Image ID="about_img" runat="server" src="images/about-img.jpg" alt="" />
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

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
              <asp:Image ID="why_us_img" runat="server" src="images/w1.png" alt="" />
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


  <!-- client section -->

  <section class="client_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          What Says Our Customers
        </h2>
      </div>
    </div>
    <div class="client_container ">
      <div id="carouselExample2Controls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container">
              <div class="box">
                <div class="detail-box">
                  <p>
                    <i class="fa fa-quote-left" aria-hidden="true"></i>
                  </p>
                  <p>
                    It is a long established fact that a reader will be distracted by the readable content of a page
                    when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                    distribution of letters, as opposed to using 'Content here, content here', making it lookIt is a
                    long established fact that a reader will be distracted by the readable content of a page when
                    looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                    distribution of letters, as opposed to using 'Content here, content here', making it look
                  </p>
                </div>
                <div class="client-id">
                  <div class="img-box">
                    <asp:Image ID="client_img" runat="server" src="images/client.jpg" alt=""/>
                  </div>
                  <div class="name">
                    <h5>
                      James Dew
                    </h5>
                    <h6>
                      Photographer
                    </h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container">
              <div class="box">
                <div class="detail-box">
                  <p>
                    <i class="fa fa-quote-left" aria-hidden="true"></i>
                  </p>
                  <p>
                    It is a long established fact that a reader will be distracted by the readable content of a page
                    when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                    distribution of letters, as opposed to using 'Content here, content here', making it lookIt is a
                    long established fact that a reader will be distracted by the readable content of a page when
                    looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                    distribution of letters, as opposed to using 'Content here, content here', making it look
                  </p>
                </div>
                <div class="client-id">
                  <div class="img-box">
                    <asp:Image ID="client_img2" runat="server" src="images/client.jpg" alt="" />
                  </div>
                  <div class="name">
                    <h5>
                      James Dew
                    </h5>
                    <h6>
                      Photographer
                    </h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container">
              <div class="box">
                <div class="detail-box">
                  <p>
                    <i class="fa fa-quote-left" aria-hidden="true"></i>
                  </p>
                  <p>
                    It is a long established fact that a reader will be distracted by the readable content of a page
                    when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                    distribution of letters, as opposed to using 'Content here, content here', making it lookIt is a
                    long established fact that a reader will be distracted by the readable content of a page when
                    looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                    distribution of letters, as opposed to using 'Content here, content here', making it look
                  </p>
                </div>
                <div class="client-id">
                  <div class="img-box">
                    <asp:Image ID="client_img3" runat="server" src="images/client.jpg" alt="" />
                  </div>
                  <div class="name">
                    <h5>
                      James Dew
                    </h5>
                    <h6>
                      Photographer
                    </h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel_btn-box">
          <asp:LinkButton ID="carouselprev" runat="server" class="carousel-control-prev" href="#carouselExample2Controls" role="button" data-slide="prev">
            <span>
              <i class="fa fa-angle-left" aria-hidden="true"></i>
            </span>
            <span class="sr-only">Previous</span>
          </asp:LinkButton>
          <asp:LinkButton ID="carouselnext" runat="server" class="carousel-control-next" href="#carouselExample2Controls" role="button" data-slide="next">
            <span>
              <i class="fa fa-angle-right" aria-hidden="true"></i>
            </span>
            <span class="sr-only">Next</span>
          </asp:LinkButton>
        </div>
      </div>
    </div>
  </section>
  <!-- end client section -->

  <!-- info section -->
  <section class="info_section ">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="info_contact">
            <h5>
              <asp:LinkButton ID="sitename" runat="server" href="#" class="navbar-brand">
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
                <asp:LinkButton ID="product1" runat="server" href="product1.aspx">
                  Products
                </asp:LinkButton>
              </li>
              <li>
                <asp:LinkButton ID="why_us1" runat="server" href="why1.aspx">
                  Why Us
                </asp:LinkButton>
              </li>
              <li>
                <asp:LinkButton ID="testimonial1"  runat="server" href="testimonial1.aspx">
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
<%--            <form action="#">--%>
              <asp:TextBox ID="mail" runat="server" type="email" placeholder="Enter your email"></asp:TextBox>
              <asp:Button ID="subscribe" runat="server" class="bg-warning" Text="Subscribe">
                
              </asp:Button>
            <%--</form>--%>
            <div class="social_box">
              <asp:LinkButton ID="facbook" runat="server" href="#">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </asp:LinkButton>
              <asp:LinkButton ID="twitter" runat="server" href="#">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </asp:LinkButton>
              <asp:LinkButton ID="instagram" runat="server" href="#">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </asp:LinkButton>
              <asp:LinkButton ID="youtube" runat="server" href="#">
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

