<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/backend.master" AutoEventWireup="true" CodeFile="Adstatus.aspx.cs" Inherits="BackEnd_Adstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
Status for Teacher Evaluation
        <br />
        <asp:GridView ID="GridView1" align="center" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="userid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" SortExpression="userid" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [statusEval] WHERE [userid] = @original_userid AND [status] = @original_status" InsertCommand="INSERT INTO [statusEval] ([userid], [status]) VALUES (@userid, @status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [statusEval]" UpdateCommand="UPDATE [statusEval] SET [status] = @status WHERE [userid] = @original_userid AND [status] = @original_status">
        <DeleteParameters>
            <asp:Parameter Name="original_userid" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="original_userid" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

        <br />
        <br />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [status] WHERE [userid] = @original_userid AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [status] ([userid], [status]) VALUES (@userid, @status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [status]" UpdateCommand="UPDATE [status] SET [status] = @status WHERE [userid] = @original_userid AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_userid" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="original_userid" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />

    </center>
</asp:Content>

