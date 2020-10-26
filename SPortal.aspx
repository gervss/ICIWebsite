<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SPortal.aspx.cs" Inherits="SPortal" EnableSessionState="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SJDM Student Portal</title>
    <link href="StyleSheet3.css" rel="stylesheet" />
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
          <div id ="content">
       
                            
                <p>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Student Portal"></asp:Label>
                    <asp:Label ID="user" runat="server" Text="ID Number:"></asp:Label>
                </p>
                <p style="height: 164px">
                    <asp:Label ID="pass" runat="server" Text="Password:"></asp:Label>
                    <asp:TextBox ID="TextBox1" placeholder="CCI-2014-0001" runat="server" style="top: 118px; left: 182px; width: 411px; height: 23px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" placeholder="mm-dd-yyyy" runat="server" style="top: 184px; left: 182px; width: 415px; height: 24px;" TextMode="Password"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/FPassword.aspx">Forgot Password ?</asp:LinkButton>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Log In" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tlbusers]"></asp:SqlDataSource>
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
 
                
 
                    
 
                
 
                </p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="top: 230px; left: 387px; height: 48px; width: 100px; right: 418px;" Text="Back" />
 
                
 
        </div>
      
        <div id ="footer">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SJDM Cornerstone College Inc. All rights reserved.</div>
    </form>
</body>
</html>
