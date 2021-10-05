<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteproduct.aspx.cs" Inherits="ShopingSite.deleteproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Product Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="product_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="product_name" runat="server"  class="form-control"  aria-describedby="emailHelp" ReadOnly="true"></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
                       <label for="exampleInputPa`ssword1" class="form-label">Product Image:
</label>
                   <asp:Image ID="image1" runat="server" ImageUrl='<%#Eval("product_imgpath") %>' Height="100px" Width="100px"/>
                           </div>
                    <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Price :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="price" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="price" runat="server"  class="form-control"  aria-describedby="emailHelp" ReadOnly="true"></asp:TextBox>
  </div>
                   <br /><br />
                   &nbsp;
                   
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="delete" runat="server" Text="Delete" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="delete_Click"     />
            <h2 align="center"><asp:Label ID="delmsg" Visible="false" runat="server"></asp:Label></h2>
        </div>
    </form>
</body>
</html>
