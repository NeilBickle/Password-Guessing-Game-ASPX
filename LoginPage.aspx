<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body{
            background-color:blanchedalmond;
            height: 1249px;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style1">
        Login Page
        </h1>
        <div draggable="true">
            </div>
            <table style="margin:auto;border:10px solid white" align="center">
                <tr>
                    <td>
                        <asp:Label ID="LblUsername" runat="server" Text="Username: "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TxtUsername" runat="server" placeholder="Please Enter Your Username" style="width:180px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblPassword" runat="server" Text="Password: "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TxtPassword" type="password" runat="server" placeholder="Please Enter Your Password" style="width:180px;" ></asp:TextBox></td>
                </tr>
                <tr> 
                    <td>
                        <asp:Button ID="BtnLogin" type="submit" runat="server" Text="Login" OnClick="BtnLogin_Click" /></td>
                </tr>   
                <tr> 
                    <td>
                        <asp:Label ID="LblIncorrect" runat="server" Text="Incorrect Username Or/And Password" Visible="false"></asp:Label></td>
                </tr>                 
            </table>
            <h2>The Aim Of The Game Is To Guess All 6 Passwords, You Have Unlimited Time And Unlimited Tries But No Hints Expect This One Semi Type Of Riddle, The Passwords Are Very Easy Some Are Metalic Some Are Numeric And Some Are Simple Technolgic words.</h2>
        <p id="parInfo" runat="server" ></p>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" CssClass="auto-style2" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
    </form>
</body>
</html>
