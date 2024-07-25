<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FormWebApp.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login Form</title>
    <style>
        body{
            text-align: center;
            margin-top: 15rem;
            font-size: 2rem;
        }
        form{
            border: solid 2px;
            margin-left: 35%;
            margin-right: 35%;
            padding-bottom: 20px;
        }
        div{
            padding: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Login Form" Font-Size="30px"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Username" Font-Size="20px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Password" Font-Size="20px"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Login" BackColor="Lime" ForeColor="Black" Height="30px" Width="80px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cacel" BackColor="#FF6666" Height="30px" Width="80px" OnClick="Button2_Click" />
        </div>
        <div>
            <asp:Button ID="Button3" runat="server" Text="Register" BackColor="#0099FF" Height="30px" Width="126px" OnClick="Button3_Click" />
        </div>
    </form>
</body>
</html>
