<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ShopingSite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <asp:Image ID="Image1" runat="server" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
            <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <asp:RadioButton ID="RadioButton1" runat="server" />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>


        </div>
    </form>
</body>
</html>
