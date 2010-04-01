<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageExpenseClaims.aspx.cs" Inherits="ManageExpenseClaims" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" CancelSelectOnNullParameter="False"
            ConnectionString="Port=5555;Server=taobao-wf-dev;SmartObjects=DenallixExpenseClaim"
            DeleteCommand="[DenallixExpenseClaim.Delete]" DeleteCommandType="StoredProcedure"
            InsertCommand="[DenallixExpenseClaim.Create]" InsertCommandType="StoredProcedure"
            ProviderName="SourceCode.Data.SmartObjectsClient" SelectCommand="[DenallixExpenseClaim.GetList]"
            SelectCommandType="StoredProcedure" UpdateCommand="[DenallixExpenseClaim.Save]"
            UpdateCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Employee" Type="Int64" />
                <asp:Parameter Name="ExpenseID" Type="Int64" />
                <asp:Parameter Name="Payee" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="ExpenseID" Type="Int64" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Employee" Type="Int64" />
                <asp:Parameter Name="ExpenseID" Type="Int64" />
                <asp:Parameter Name="Payee" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Employee" Type="Int64" />
                <asp:Parameter Name="ExpenseID" Type="Int64" />
                <asp:Parameter Name="Payee" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ExpenseID"
            DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="ExpenseID" HeaderText="ExpenseID" InsertVisible="False"
                    ReadOnly="True" SortExpression="ExpenseID" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Payee" HeaderText="Payee" SortExpression="Payee" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Employee" HeaderText="Employee" SortExpression="Employee" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="ExpenseID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ExpenseID" HeaderText="ExpenseID" InsertVisible="False"
                    ReadOnly="True" SortExpression="ExpenseID" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Payee" HeaderText="Payee" SortExpression="Payee" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Employee" HeaderText="Employee" SortExpression="Employee" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
