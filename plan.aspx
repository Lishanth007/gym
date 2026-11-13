<%@ Page Language="C#" AutoEventWireup="true" CodeFile="plan.aspx.cs" Inherits="plan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label6" runat="server" Text="Plan Page"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Overline="True" Text="Welcome To Arnold Gym"></asp:Label>
    
    </div>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Select Plan"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="1 Month Plan" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="1 Year Plan" />
        </p>
    </form>
</body>
</html>
