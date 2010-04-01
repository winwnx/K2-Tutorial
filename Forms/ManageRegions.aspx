<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageRegions.aspx.cs" Inherits="ManageRegions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="ManageEmployees.aspx">ManageEmployees.aspx</a><hr />
    <div>
        &nbsp;</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Port=5555;Server=taobao-wf-dev;SmartObjects=DenallixRegion"
            DeleteCommand="[DenallixRegion.Delete]" DeleteCommandType="StoredProcedure" InsertCommand="[DenallixRegion.Create]"
            InsertCommandType="StoredProcedure" ProviderName="SourceCode.Data.SmartObjectsClient"
            SelectCommand="[DenallixRegion.GetList]" SelectCommandType="StoredProcedure"
            UpdateCommand="[DenallixRegion.Save]" UpdateCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="Folder" Type="String" />
                <asp:Parameter Name="ReginoName" Type="String" />
                <asp:Parameter Name="RegionDescription" Type="String" />
                <asp:Parameter Name="RegionID" Type="Int64" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="RegionID" Type="Int64" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Folder" Type="String" />
                <asp:Parameter Name="ReginoName" Type="String" />
                <asp:Parameter Name="RegionDescription" Type="String" />
                <asp:Parameter Name="RegionID" Type="Int64" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Folder" Type="String" />
                <asp:Parameter Name="ReginoName" Type="String" />
                <asp:Parameter Name="RegionDescription" Type="String" />
                <asp:Parameter Name="RegionID" Type="Int64" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="RegionID"
            DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="RegionID" HeaderText="RegionID" InsertVisible="False"
                    ReadOnly="True" SortExpression="RegionID" />
                <asp:BoundField DataField="ReginoName" HeaderText="ReginoName" SortExpression="ReginoName" />
                <asp:BoundField DataField="RegionDescription" HeaderText="RegionDescription" SortExpression="RegionDescription" />
                <asp:BoundField DataField="Folder" HeaderText="Folder" SortExpression="Folder" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataKeyNames="RegionID"
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="RegionID" HeaderText="RegionID" InsertVisible="False"
                    ReadOnly="True" SortExpression="RegionID" />
                <asp:BoundField DataField="ReginoName" HeaderText="ReginoName" SortExpression="ReginoName" />
                <asp:BoundField DataField="RegionDescription" HeaderText="RegionDescription" SortExpression="RegionDescription" />
                <asp:BoundField DataField="Folder" HeaderText="Folder" SortExpression="Folder" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Port=5555;Server=taobao-wf-dev;SmartObjects=DenallixEmployee"
            ProviderName="SourceCode.Data.SmartObjectsClient" SelectCommand="[DenallixEmployee.GetList]"
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="EmployeeID" Type="Int64" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Region" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False"
                    ReadOnly="True" SortExpression="EmployeeID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
