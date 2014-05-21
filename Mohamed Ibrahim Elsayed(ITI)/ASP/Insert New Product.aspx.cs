using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insert_New_Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        try
        {
        OnlineStoreEntities online = new OnlineStoreEntities();
        int RowAffected;
        RowAffected = online.Add_New_Product(txt_ProductName.Text, int.Parse(txt_ProductNumber.Text),decimal.Parse(txt_Price.Text),int.Parse(DDL_Category.SelectedValue.ToString()));
        if (RowAffected!=0)
	    {
		    lbl_Result.Text="Product Added";
 
	    }
       }
        catch(Exception ex)
        {
            lbl_Result.Text="Error"+ex.Message;
        }

    }
    
}