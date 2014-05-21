using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdminLogin : System.Web.UI.Page
{
    SqlDataSource ds;
    SqlDataAdapter adpt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        try
        { 
         OnlineStoreEntities online = new OnlineStoreEntities();
          string Return_Checked= online.AdminLogin(txt_UserName.Text, txt_Password.Text).FirstOrDefault();
        
        if (Return_Checked!=null)
        {
            Response.Redirect("~/Admin_Profile.aspx");
        }
        else
        {
            lbl_Result.Text = "Invalid Loggin Please Try Again";
        }
       }
        catch(Exception ex)
        {
            lbl_Result.Text = "Error" + ex.Message;
        }
    }
}