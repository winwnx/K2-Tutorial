using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using SourceCode.Workflow.RuntimeServices.Objects;


namespace SourceCode.Workflow.FormsGeneration
{


public partial class FinanceApprovalForm: System.Web.UI.Page 
{

    K2Worklist k2Worklist = new K2Worklist();

    private void SetDatasourceSelectSQL(SqlDataSource sqlDataSource, string sql)
    {
        sqlDataSource.SelectCommand = sql;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        // Clear message and items
        lblMessage.Text ="";   
        form1.Visible = false;

        // Get worklist item based on serialnumber
        if (Request.QueryString["SN"] != null)
        {
            K2WorklistItemPanel.GetWorkflistItem(Request.QueryString["SN"]);

            if (ViewState["WorkflistItem"] != null)
            {
                k2Worklist = (K2Worklist)ViewState["WorkflistItem"]; 
            }
            else
            { 
                k2Worklist = K2WorklistItemPanel.WorklistItem;
                ViewState.Add("WorkflistItem", k2Worklist);
            }  
        }
        else
        {
            return;
        } 


        if (IsPostBack)
        {
            if (Request.Params["Submit1"] == "submit" && cboActions.Text != string.Empty)
            {

                try
                {
                    
                }
                catch (Exception ex)
                {
                   
                } 
                 
                lblMessage.Text ="Worklist item action complete.";
                return;
            }
        }
        else
	    {
            if (k2Worklist == null)
            {
                lblMessage.Text ="Unable to retrieve K2 Blackpearl data please check connection and that you have rights to the worklist item.";
                return;
            }
	    }  

        form1.Visible = true;
        if (!IsPostBack)
        {
            // Not postback

            // Datasource pre-Populate
            try
            {
                 
                SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2.SelectParameters["ExpenseID"].DefaultValue =  k2Worklist.ProcessInstance.DataFields["ExpenseID"].Value.ToString(); 

            	
            }
            catch 
            {
                // User to handle exceptions
            }

            // Populate action combo box
            if (k2Worklist != null)
            {
                cboActions.Items.Clear();
                cboActions.Items.Add("");
                foreach (K2Action action in k2Worklist.Actions)
                {
                    cboActions.Items.Add(action.Name);
                }
            }

            // Set DataFields and Xml Fields 
            try
            {
                

                
            	
            }
            catch 
            {
                // User to handle exceptions
            }

        }
         
    } 
 
    protected void Page_UnLoad(object sender, EventArgs e)
    {
        if (cboActions.Text != string.Empty)
        {
            //Set action properties
            k2Worklist.Actions[cboActions.SelectedIndex-1].Execute = true;
            k2Worklist.Platform = "ASP";

            try
            { 
                // Save DataFields and Xml Fields
                

                
            }
            catch 
            {
                // User to handle exceptions
            }


            // Perform the worklist item action 
            K2WorklistItemPanel.WorklistItem = k2Worklist;
            K2WorklistItemPanel.ActionWorkListItem();
        }
    }

    protected void SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2_Inserted(object sender, SqlDataSourceStatusEventArgs e)
{

}
protected void SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2_Selected(object sender, SqlDataSourceStatusEventArgs e)
{

}
protected void SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2_Deleted(object sender, SqlDataSourceStatusEventArgs e)
{

}
protected void SqlFormDataSource_DenallixExpenseClaim_Load_03dd83d2_Updated(object sender, SqlDataSourceStatusEventArgs e)
{

}

}
}