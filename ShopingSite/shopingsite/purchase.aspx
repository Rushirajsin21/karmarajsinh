<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchase.aspx.cs" Inherits="ShopingSite.purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                                            <h1 align="center">Your Bill</h1>

                    <table align="center" border="1" cellpadding="10px">
                        <th>Product</th>
                        <th>Product Name</th>
                        <th>Product Price</th>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                    <td><%#Eval("product_nm") %></td>
                    <td><asp:Image ID="img" runat="server" ImageUrl='<%#Eval("product_img") %>'  Height="100px" Width="100px" /></td>
                        <td><%#Eval("product_price") %></td>
                   
                        </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <tr />
                     <td>Bill is:</td><td colspan="2" align="right"><%#sum() %></td>
                    </tr>s
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
