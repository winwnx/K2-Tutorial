<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="ManageEmployees.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="ManageRegions.aspx">ManageRegions.aspx</a><hr />
    <div>
        <asp:SqlDataSource ID="ManageEmployee" runat="server" CancelSelectOnNullParameter="False"
            ConnectionString="Port=5555;Server=taobao-wf-dev;SmartObjects=DenallixEmployee"
            DeleteCommand="[DenallixEmployee.Delete]" DeleteCommandType="StoredProcedure"
            InsertCommand="[DenallixEmployee.Create]" InsertCommandType="StoredProcedure"
            ProviderName="SourceCode.Data.SmartObjectsClient" SelectCommand="[DenallixEmployee.GetList]"
            SelectCommandType="StoredProcedure" UpdateCommand="[DenallixEmployee.Save]" UpdateCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="EmployeeID" Type="Int64" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Region" Type="Int64" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="EmployeeID" Type="Int64" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="EmployeeID" Type="Int64" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Region" Type="Int64" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="EmployeeID" Type="Int64" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Region" Type="Int64" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="LoadRegions" runat="server" CancelSelectOnNullParameter="False"
            ConnectionString="Port=5555;Server=taobao-wf-dev;SmartObjects=DenallixRegion"
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
        <asp:DetailsView ID="EmployeeDetails" runat="server" AutoGenerateRows="False" DataKeyNames="EmployeeID"
            DataSourceID="ManageEmployee" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:TemplateField HeaderText="EmployeeID" InsertVisible="False" SortExpression="EmployeeID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmployeeID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:TemplateField HeaderText="Region" SortExpression="Region">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Region") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LoadRegions" DataTextField="ReginoName"
                            DataValueField="RegionID" SelectedValue='<%# Bind("Region") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Region") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="EmployeeID" DataSourceID="ManageEmployee">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    
    </div>
    </form>
</body>
</html>
