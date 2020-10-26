<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%-- Add content controls here --%>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <div id ="slider">

            <img id ="1" src="Slider/1.jpg" border="0" alt="Image1" />
         <img id ="2" src="Slider/pic1.jpg" border="0" alt="Image2" />
         <img id ="3" src="Slider/pic2.jpg" border="0" alt="Image3" />
         <img id ="4" src="Slider/pic3.jpg" border="0" alt="Image4" />
         <img id ="5" src="Slider/pic4.jpg" border="0" alt="Image5" />
         <img id ="6" src="Slider/pic5.jpg" border="0" alt="Image6" />
         <img id ="7" src="Slider/pic6.jpg" border="0" alt="Image7" />
         <img id ="8" src="Slider/pic7.jpg" border="0" alt="Image8" />
            </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
     <div id ="History" style="height: 172px; top: 302px; left: 5px;">


            

                             

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H I S T O R Y: The SJDM Cornerstone College Inc. was founded by Eng’r. Roberto B. Robes Ph.D, a Philanthroper, with the help of his wife Mrs. Racquel Manahan – Robes and their families. Eng’r Roberto B. Robes is a son of Mr. &amp; Mrs. Florencio Robes, He finished a Degree of Civil Engineering and a license Civil Engineer of at the Technological Institute of the Philippines, Mrs. Racquel Manahan – Robes is the only Daughter of Mr. &amp; Mrs. Nathanael Manahan she finished her studies at the Philippine Christian University with the Degree of Computer Programming, this couples were blessed with two lovely children, Cristalyn Faith and Timothy Paul. The School got its name in the book of Ephesians 2:20 where JESUS CHRIST is the CHIEF CORNERSTONE. The founder of the school believes that from this verse he can create a stronghold that could embody his vision and mission. At the beginning the school was created through a vision as 
         perceived by Eng’r Robes.</div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
     <div id ="Vision" style="height: 275px; width: 575px; top: 364px; left: -19px; margin-left: 303px; margin-top: 154px;">

            <div class="blogEntryContent">
                <span class="fw_sanitized">
                <p style="text-align: center;">
                    VISION/MISSION:</p>
                <p style="text-align: center;">
                    <asp:FormView ID="FormView2" align="center" runat="server" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            Vision:
                            <asp:TextBox ID="VisionTextBox" runat="server" Text='<%# Bind("Vision") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Vision:
                            <asp:TextBox ID="VisionTextBox" runat="server" Text='<%# Bind("Vision") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="VisionLabel" runat="server" Text='<%# Bind("Vision") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Vision] FROM [Vision]"></asp:SqlDataSource>
                </p>
                <div class="blogEntryContent">
                    <p style="text-align: center;">
                        <asp:FormView ID="FormView3" align="center" runat="server" DataSourceID="SqlDataSource3">
                            <EditItemTemplate>
                                Mission:
                                <asp:TextBox ID="MissionTextBox" runat="server" Text='<%# Bind("Mission") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Mission:
                                <asp:TextBox ID="MissionTextBox" runat="server" Text='<%# Bind("Mission") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="MissionLabel" runat="server" Text='<%# Bind("Mission") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Mission] FROM [Mission]"></asp:SqlDataSource>
                    </p>
                </div>
                <p style="text-align: center;">
                    &nbsp;</p>
                </span>
            </div>

            </div>
</asp:Content>


<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder4">
     <div id ="Div1" style="height: 122px; width: 7px; top: 454px; left: 10px;">


            </div>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder5">
    <div id ="Motto" style="height: 275px; width: 227px; top: 508px; left: 10px;">


        


            <div class="blogEntryContent">
                <span class="fw_sanitized">
                <p style="text-align: center;">
                    &nbsp;<b>MOTTO:</b></p>
                <p style="text-align: center;">
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                        <EditItemTemplate>
                            Motto:
                            <asp:TextBox ID="MottoTextBox" runat="server" Text='<%# Bind("Motto") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Motto:
                            <asp:TextBox ID="MottoTextBox" runat="server" Text='<%# Bind("Motto") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="MottoLabel" runat="server" Text='<%# Bind("Motto") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Motto] FROM [Motto]"></asp:SqlDataSource>
                </p>
                </span>
            </div>


        


            </div>
</asp:Content>
