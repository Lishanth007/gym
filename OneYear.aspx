<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OneYear.aspx.cs" Inherits="OneYear" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Year Plan Details Page"></asp:Label>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Rs.10,000/-"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay Online" />
        </p>
    </form>
</body>
</html>
