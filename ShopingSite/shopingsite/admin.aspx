<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="ShopingSite.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css"/>
   
    <title></title>
    <style type="text/css">
        #heade {
            height: 10%;
            color:white;
            background-color:blue;
            width:85%;
            float:right;
            border:1px solid;
            border-radius:10px;
            border-width:2px;
            border-color:black;

        }
        #dash{
            float:left;
            width:15%;
            color:white;
            background-color:orange;
            position:page;
            
            height:100%;
            border:1px solid;
            border-width:2px;
            border-color:aqua;
            border-radius:10px;
        }
        #img
        {
            border-radius:50%;
        }
        .border{
            border:1px solid;
            border-radius:20px;
            border-block-color:white;
            border-width:1px;
            height:30px;
        }
        #admins1{
            float:right;
            width:85%;
            height:100%;
            background-color:white;
            border-radius:10px;
            /*border:1px solid;
            border-width:2px;*/
            border-color:black;
        }
        #category1{
             float:right;
            width:85%;
            height:90%;
            background-color:white;
            border-radius:10px;
            /*border:1px solid;
            border-width:2px;*/
            border-color:black;
        }
        #gallery1{
              float:right;
            width:85%;
            height:90%;
            background-color:white;
            border-radius:10px;
          /*  border:1px solid;
            border-width:2px;*/
            border-color:black;
        }
        #dashboard{
            float:left;
            width:15%;
            height:200%;
            background-color:orange;
            position:page;
            border:1px solid;
            border-width:2px;
            border-color:black;

        }
    </style>
</head>
<body>
   <form id="form1" runat="server" >
       <div id="dashboard" runat="server">
           <br />
                 &nbsp;    <img id="img"  src="images/NidhiMam.jpg" height="50px" width="50px" /> &nbsp; <b><i>Tour Trip&nbsp<i class="fa fa-plane fa-lg" aria-hidden="true"></i>
</i></b>
           <br /><br />
           <h4 align="center"> Dashboard</h4>
           <br />
           <div id="admin1" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-user fa-lg" aria-hidden="true">&nbsp;<asp:LinkButton ID="adminslink" runat="server" ForeColor="White" OnClick="adminslink_Click" CausesValidation="False"> Add Admins</asp:LinkButton></i>
</div>
           <br />
           <div id="admin_category" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-list-alt fa-lg" aria-hidden="true"> <asp:LinkButton ID="categorylink" runat="server" ForeColor="White" OnClick="categorylink_Click" CausesValidation="False">Category</asp:LinkButton></i>
               </div>
           <br />
           <div id="admin_gallery_image" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-picture-o fa-lg" aria-hidden="true">
               <asp:LinkButton ID="gallerylink" runat="server" ForeColor="White" OnClick="gallerylink_Click" CausesValidation="False">Gallery</asp:LinkButton></i>
               </div>
                <br />
           <div id="logout" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-sign-out fa-lg">
               <asp:LinkButton ID="logoutlink" runat="server" ForeColor="White" OnClick="logoutlink_Click" CausesValidation="False" >Logout</asp:LinkButton></i>
               </div>
               

       </div>
        <div id="heade" runat="server">
            <h1 align="center" runat="server"> Admin Panel</h1>
        </div>
    </form>
</body>
</html>
