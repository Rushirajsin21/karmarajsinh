<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editproduct.aspx.cs" Inherits="ShopingSite.editproduct" %>

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
&nbsp;<asp:TextBox ID="product_name" runat="server"  class="form-control"  aria-describedby="emailHelp"></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
                       <label for="exampleInputPa`ssword1" class="form-label">Product Image:<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fileupload2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</label>
                   <asp:FileUpload ID="fileupload2" runat="server" class="form-control" type="file"  />
                           </div>
                    <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Price :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="price" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="price" runat="server"  class="form-control"  aria-describedby="emailHelp"></asp:TextBox>
  </div>
                   <br /><br />
                   &nbsp;
                   <asp:Button ID="product_edit" runat="server" Text="Edit" type="submit" class="btn btn-primary" Width="96px" OnClick="product_edit_Click"    ></asp:Button>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="product_clear" runat="server" Text="Clear" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="product_clear_Click"    />

                   <h3 align="center"><asp:Label ID="galmsg" runat="server" Visible="false"></asp:Label><asp:Label ID="imgmsg" runat="server" Visible="false"></asp:Label></h3>
            </div>
    </form>
</body>
</html>
