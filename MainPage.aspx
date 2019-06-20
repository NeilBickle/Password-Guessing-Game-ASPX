<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MainPage</title>
    <style>
        body{
            background-color:blanchedalmond;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Hello World</h1>
        <h2>You Have Logged Into The Website Congrtulations</h2>
        <asp:Label ID="LblEnd" runat="server" Text="Try And Find The Other Hidden Passwords There Are 6 In Total" Enabled="False" Font-Bold="True" Font-Size="Larger"></asp:Label><br /><br /><br />
        <asp:Button ID="BtnBack" runat="server" Text="Go Back To The Login And Try Again" OnClick="BtnBack_Click" />
    </form>
</body>
</html>
