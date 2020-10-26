<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/backend.master" AutoEventWireup="true" CodeFile="AdSection.aspx.cs" Inherits="BackEnd_AdSection" UnobtrusiveValidationMode ="none" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table style="width: 100%">
            <tr>
                <td style="width: 431px">&nbsp;</td>
                <td colspan="2" align="center">Add Section</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 431px">&nbsp;</td>
                <td  style="width: 131px">&nbsp;</td>
                <td style="width: 235px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Grade 1</asp:ListItem>
                        <asp:ListItem>Grade 2</asp:ListItem>
                        <asp:ListItem>Grade 3</asp:ListItem>
                        <asp:ListItem>Grade 4</asp:ListItem>
                        <asp:ListItem>Grade 5</asp:ListItem>
                        <asp:ListItem>Grade 6</asp:ListItem>
                        <asp:ListItem>Grade 7</asp:ListItem>
                        <asp:ListItem>Grade 8</asp:ListItem>
                        <asp:ListItem>Grade 9</asp:ListItem>
                        <asp:ListItem>4th year</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 431px">&nbsp;</td>
                <td align="center" style="width: 131px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                    Section</td>
                <td style="width: 235px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="162px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 431px">&nbsp;</td>
                <td align="center" style="width: 131px">&nbsp;</td>
                <td style="width: 235px">
                    <asp:Button ID="Section" runat="server" OnClick="Section_Click" Text="Add" />
&nbsp;<asp:Label ID="sect" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO GradeSection(grade, section) VALUES (@grade,@section)" SelectCommand="SELECT * FROM [GradeSection]">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="grade" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TextBox1" Name="section" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 431px">&nbsp;</td>
                <td align="center" style="width: 131px">&nbsp;</td>
                <td style="width: 235px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                      <asp:BoundField DataField="section" HeaderText="section" SortExpression="section" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [GradeSection]" DeleteCommand="DELETE FROM [GradeSection] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [GradeSection] ([grade], [section]) VALUES (@grade, @section)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [GradeSection] SET [grade] = @grade, [section] = @section WHERE [Id] = @original_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="grade" Type="String" />
                        <asp:Parameter Name="section" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="grade" Type="String" />
                        <asp:Parameter Name="section" Type="String" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>

