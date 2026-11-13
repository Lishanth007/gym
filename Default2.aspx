<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label7" runat="server" Text="Home Page"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Overline="True" Text="Welcome To Arnold Gym"></asp:Label>
    
    </div>
        <p>
            <asp:Label ID="Label6" runat="server" Text="You can Explore after the form fill"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Fill form" />
        </p>
        <asp:Button ID="Button2" runat="server" Text="Admin" OnClick="Button2_Click" />
    </form>
</body>
</html>
