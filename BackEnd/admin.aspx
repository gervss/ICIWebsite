<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/admin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="BackEnd_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <center>
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="ADMIN"></asp:Label>
       </p>
    <p>
       User Name:
        <asp:TextBox ID="TextBox1" runat="server" Width="231px" ></asp:TextBox>
    </p>
    <p>
      Password:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="231px"></asp:TextBox>
</p>
    <p>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" Width="106px" />
    </p>
    <p>

        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
    &nbsp;
    </p>
    <p>
    </p>

        </center>
</asp:Content>


