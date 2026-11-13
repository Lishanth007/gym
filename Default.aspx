<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ValidationGroup="MemberForm" />
        <br />

        <asp:Label ID="Label2" runat="server" Text="Phone"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" ValidationGroup="MemberForm" />
        <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="TextBox2" ErrorMessage="10 digits only" ValidationExpression="^\d{10}$" ForeColor="Red" ValidationGroup="MemberForm" />
        <br />

        <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" ValidationGroup="MemberForm" />
        <asp:CompareValidator ID="cvAge" runat="server" ControlToValidate="TextBox3" ErrorMessage="Age must be greater than 12" Operator="GreaterThan" Type="Integer" ValueToCompare="12" ForeColor="Red" ValidationGroup="MemberForm" />
        <br />

        <asp:Label ID="Label4" runat="server" Text="Gmail"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvGmail" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" ValidationGroup="MemberForm" />
        <asp:RegularExpressionValidator ID="revGmail" runat="server" ControlToValidate="TextBox4" ErrorMessage="@gmail.com required" ValidationExpression="^[a-zA-Z0-9._%+-]+@gmail\.com$" ForeColor="Red" ValidationGroup="MemberForm" />
        <br />

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" ValidationGroup="MemberForm" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" ValidationGroup="MemberForm" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" CausesValidation="False" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Select" CausesValidation="False" />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Go to Plan" CausesValidation="False" />
        <p>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Admin" />
        </p>
    </form>
</body>
</html>