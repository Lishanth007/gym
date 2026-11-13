<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment1.aspx.cs" Inherits="Payment1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label2" runat="server" Text="Payment Page"></asp:Label>
    
    </div>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Select Mode of Payment"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Price Rs.10,000"></asp:Label>
        </p>
        <p>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Gpay</asp:ListItem>
            <asp:ListItem>Cash</asp:ListItem>
            <asp:ListItem>Card</asp:ListItem>
        </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Check Out" />
        </p>
    </form>
</body>
</html>
