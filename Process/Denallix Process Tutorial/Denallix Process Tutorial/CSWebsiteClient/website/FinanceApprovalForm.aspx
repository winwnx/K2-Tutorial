<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="FinanceApprovalForm.aspx.cs" Inherits="SourceCode.Workflow.FormsGeneration.FinanceApprovalForm" %>
<%@ Register Assembly="SourceCode.SharePoint.Workflow.WebControls, Version=4.0.0.0, Culture=neutral, PublicKeyToken=16a2c5aaaa1b130d" Namespace="SourceCode.SharePoint.Workflow.WebControls" TagPrefix="cc1" %>
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>K2 Client Page</title>
    <link href="Default.css" rel="stylesheet" type="text/css" />
</head>
<body>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
     
    <tr   id="trTopBannerMiddle">
        <td class="topbanner_middle" style="height: 69px">
            <table cellpadding="0" cellspacing="0" width="100%" height="49">
                <tr>
                    <td height="49" width="221">
                        <img src="logo.gif" id="imgLogo" runat="server" style="height:49px;"></td>
                    
                </tr>
            </table>
        </td>
    </tr>
 </table>
 
 
     <h4>FormsGenerationEvent 
         <br />
         <br />
  <asp:Label ID="lblMessage" runat="server" Font-Names="Arial" Font-Size="XX-Small" ForeColor="Red"
                Text="Label" Width="100%"></asp:Label><br />
           
    </h4>  
           
    <form id="form1" runat="server" >
    <div>
    	 
           
    	<h5>DenallixExpenseClaim (Load)</h5>
<asp:SqlDataSource ID="SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2" runat="server" ConnectionString=" Server=10.13.3.61;Port=5555;AutoAlias=False;SmartObjects=DenallixExpenseClaim" DeleteCommand="" DeleteCommandType="StoredProcedure" InsertCommand="" InsertCommandType="StoredProcedure" SelectCommand="DenallixExpenseClaim.Load" OnInserted="SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2_Inserted" OnDeleted="SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2_Deleted" OnUpdated="SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2_Updated" OnSelected="SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2_Selected"  SelectCommandType="StoredProcedure" UpdateCommand="" UpdateCommandType="StoredProcedure" ProviderName="SourceCode.Data.SmartObjectsClient">
<SelectParameters>
    <asp:Parameter Name="ExpenseID" Type="Int64"  Direction="InputOutput" />
    <asp:Parameter Name="Category" Type="String"  Direction="Output"  />
    <asp:Parameter Name="Amount" Type="Decimal"  Direction="Output"  />
    <asp:Parameter Name="Date" Type="DateTime"  Direction="Output"  />
    <asp:Parameter Name="Description" Type="String"  Direction="Output"  />
    <asp:Parameter Name="Employee" Type="Int64"  Direction="Output"  />
    <asp:Parameter Name="Payee" Type="String"  Direction="Output"  />
</SelectParameters>
</asp:SqlDataSource>
<asp:FormView ID="FormView_DenallixExpenseClaim_Load_03dd83d2" runat="server" DataKeyNames="ExpenseID" DataSourceID="SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2" DefaultMode="ReadOnly" width="100%">
<ItemTemplate>
   <table width="100%">
        <tr >
            <td style=" font-size: 8pt;width:50% ">
                Category:
            </td>
             <td  >
                <asp:TextBox BorderStyle="Solid"  BorderWidth="1"   BorderColor="gray"  ID="Category_TextBox"  Width="90%" runat="server" Text='<%# Eval("Category")  %>'></asp:TextBox>            </td>
        </tr>
        <tr >
            <td style=" font-size: 8pt;width:50% ">
                Amount:
            </td>
             <td  >
                <asp:TextBox BorderStyle="Solid"  BorderWidth="1"   BorderColor="gray"  ID="Amount_TextBox"  Width="90%" runat="server" Text='<%# Eval("Amount")  %>'></asp:TextBox>            </td>
        </tr>
        <tr >
            <td style=" font-size: 8pt;width:50% ">
                Date:
            </td>
             <td  >
                <asp:TextBox BorderStyle="Solid"  BorderWidth="1"   BorderColor="gray"  ID="Date_TextBox"  Width="90%" runat="server" Text='<%# Eval("Date")  %>'></asp:TextBox>            </td>
        </tr>
        <tr >
            <td style=" font-size: 8pt;width:50% ">
                ExpenseID:
            </td>
             <td  >
                <asp:TextBox BorderStyle="Solid"  BorderWidth="1"   BorderColor="gray"  ID="ExpenseID_TextBox"  Width="90%" runat="server" Text='<%# Eval("ExpenseID")  %>'></asp:TextBox>            </td>
        </tr>
        <tr >
            <td style=" font-size: 8pt;width:50% ">
                Description:
            </td>
             <td  >
                <asp:TextBox BorderStyle="Solid"  BorderWidth="1"   BorderColor="gray"  ID="Description_TextBox"  Width="90%" runat="server" Text='<%# Eval("Description")  %>'></asp:TextBox>            </td>
        </tr>
        <tr >
            <td style=" font-size: 8pt;width:50% ">
                Employee:
            </td>
             <td  >
                <asp:TextBox BorderStyle="Solid"  BorderWidth="1"   BorderColor="gray"  ID="Employee_TextBox"  Width="90%" runat="server" Text='<%# Eval("Employee")  %>'></asp:TextBox>            </td>
        </tr>
        <tr >
            <td style=" font-size: 8pt;width:50% ">
                Payee:
            </td>
             <td  >
                <asp:TextBox BorderStyle="Solid"  BorderWidth="1"   BorderColor="gray"  ID="Payee_TextBox"  Width="90%" runat="server" Text='<%# Eval("Payee")  %>'></asp:TextBox>            </td>
        </tr>
   </table>
</ItemTemplate>
</asp:FormView>
 
    	<br /><table id="TABLE1" width="100%"  >

</table> 
    	<br /><table id="TABLE1" width="100%"  >

</table>
    </div>
     <div>
     <hr  style="color:D9D9D9;width:100%"/>
     <h5>Actions </h5>  
	<asp:DropDownList ID="cboActions" runat="server" Width="332px"></asp:DropDownList><br/>         
     <hr  style="color:D9D9D9;width:100%"/>
         <cc1:K2WorklistItemPanel id="K2WorklistItemPanel" runat="server" K2ServerName="Integrated=True;IsPrimaryLogin=True;Authenticate=True;EncryptedPassword=False;Host=10.13.3.61;Port=5252;UserID=wfservice;Password=k2demo;WindowsDomain=taobao-hz" RuntimeService="http://10.13.3.61/RunTimeServices/ClientEventService.asmx">
        </cc1:K2WorklistItemPanel>   
        <input id="Submit1" type="Submit" value="submit"  runat="server"/>
         <input id="Reset1" type="Reset" value="reset" />
    </div>
    
    </form>
</body>
</html>