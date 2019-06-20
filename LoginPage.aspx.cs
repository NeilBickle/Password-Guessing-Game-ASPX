using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            TxtUsername.Focus(); 
    }


    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        string Lan; int Rows;
        OleDbConnection tan = new OleDbConnection();
        tan.ConnectionString = "Provider = Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Server.MapPath("TablesForGithubWebsite1.accdb");
        tan.Open(); 
        Lan = "SELECT count(*) FROM (Table1) WHERE [Username]='" + TxtUsername.Text + "' AND [Password]='" + TxtPassword.Text + "'";
        OleDbCommand cmd = new OleDbCommand(Lan, tan);
        Rows = (int)cmd.ExecuteScalar(); 
        tan.Close(); 
        if (Rows > 0)
            Response.Redirect("MainPage.aspx");
        else
            LblIncorrect.Text = "Your Login Information Is Incorrect";
    }
}