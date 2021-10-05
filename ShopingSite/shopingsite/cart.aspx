<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="ShopingSite.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
           <asp:Repeater ID="Repeater1" runat="server">

               <HeaderTemplate>
                   <table align="center" border="1" cellpadding="10px">
                       <th>Product Image</th>
                       <th>Product Name</th>
                       <th>Product Price</th>


               </HeaderTemplate>
               <ItemTemplate>
                   <tr>
                   <td><asp:Image ID="productimg" runat="server" ImageUrl='<%#Eval("product_img") %>' Height="130px" Width="130px"/></td>
                   <td><%#Eval("product_nm") %></td>
                   <td><%#Eval("product_price") %></td>
                       </tr>
               </ItemTemplate>
               <FooterTemplate>
                   <tr>
                       <td colspan="2" align="left">Total Rs. </td><td colspan="2" align="right"><%#sum() %></td>
                                      </table>

               </FooterTemplate>
           </asp:Repeater>
            
          
            <asp:Button ID="purchase" Text="Purchase" runat="server" class="btn btn-warning" OnClick="purchase_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:LinkButton runat="server" OnClick="Unnamed1_Click">Home</asp:LinkButton>
                 <br />
            <br />
            <h3>
                <asp:Label ID="Label2" runat="server" Visible="False" ForeColor="#33CC33"></asp:Label></h3>
           <h3> <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="false"></asp:Label></h3>
        </div>
    </form>
</body>
</html>
