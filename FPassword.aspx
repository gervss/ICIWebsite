<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FPassword.aspx.cs" Inherits="FPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password?</title>
    <link href="StyleSheet5.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div id ="wrapper">

        <div id="header">


            


            <asp:Image ID="Image1" runat="server" ImageAlign="Left" ImageUrl="~/Images/Picture1.png" />


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" style="top: 19px; left: 358px" Text="SJDM Cornerstone College Inc."></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Style="top: 76px; left: 485px; height: 29px; width: 430px" Text="(Formerly SJDM Cornerstone Academy Inc.)"></asp:Label>
            <asp:Label ID="Label2" runat="server" Style="top: 109px; left: 438px; width: 546px; right: 346px" Text="190 Libis II, Muzon, City of San Jose del Monte, Bulacan"></asp:Label>


        </div>
        </div>

        <div id="content">


            <asp:Label ID="Label4" runat="server" Text="Forgot Password?"></asp:Label>
                    <asp:Label ID="user" runat="server" Text="Your StudentID:"></asp:Label>
                </p>
                <p style="height: 164px">
                    <asp:Label ID="pass" runat="server" Text="Password:"></asp:Label>
                    <asp:TextBox ID="TextBox1" placeholder="CCI-2014-0001" runat="server" style="top: 118px; left: 182px; width: 411px; height: 23px;"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Password" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [StuPass], [StuID], [StuLastname], [StuFirstname], [StuMiddlename], [StuMContactNo], [StuFContactNo] FROM [Registration]"></asp:SqlDataSource>
                    <asp:Label ID="Label9" runat="server" Text="Please Fill up all the information needed to be able to show your PASSWORD."></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="Your Fathers Contact Number:" CssClass="auto-style1"></asp:Label>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" style="top: 190px; left: 182px; width: 411px; height: 23px;"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" Text="Your Mothers Contact Number:"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label13" runat="server" Text=",Label"></asp:Label>
                </p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="top: 372px; left: 385px; height: 46px; width: 154px;" Text="Back To Student Portal" />
 
            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
 
            <asp:Label ID="Label10" runat="server" Text="Name:"></asp:Label>
 
        </div>
      
        <div id ="footer">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SJDM Cornerstone College Inc. All rights reserved.</div>
    </form>
</body>
</html>