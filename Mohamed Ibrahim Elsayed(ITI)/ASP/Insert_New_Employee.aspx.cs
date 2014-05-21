using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insert_New_Employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bt_Add_Click(object sender, EventArgs e)
    {
        try
        {
            int RowAffected;
            OnlineStoreEntities online = new OnlineStoreEntities();
            RowAffected = online.Add_New_Employee(txt_FirstName.Text, txt_MiddleName.Text, txt_LastName.Text,
            txt_UserName.Text, txt_Password.Text, DDL_Role.SelectedValue,txt_SecurityQuestion.Text,txt_Answer.Text);
            if (RowAffected != 0)
            {
                lbl_Result.Text = "Added";
            }
            else
            {
                lbl_Result.Text = "Erroe Fill Data";
            }
        }
        catch (Exception ex)
        {
            lbl_Result.Text ="Error "+ ex.Message;
        }
    }
}