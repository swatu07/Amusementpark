using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_AdminChangePwd : System.Web.UI.Page
{
    AdminBal ab=new AdminBal();
    AdminDal ad=new AdminDal();
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChange_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = ad.GetData("select * from Admin where AdminName='" + (Session["Admin"]).ToString()+"'");
        if (dt.Rows[0]["Password"].ToString() == TxtOldPwd.Text)
        {
            if (TxtNewPwd.Text == TxtNewPwd.Text)
            {
                ab.AdminName = ((Session["Admin"]).ToString ());
                ab.Password = TxtNewPwd.Text;
                ad.AdminChangePassword(ab);
                Response.Redirect("../Admin/AdminLogIn.aspx");
            }
            else
            {
                Label4.Text = "Password And Confirm Password Not Matched";
            }
        }
        else
        {
            Label4.Text = "Invalid Password";
        }
    
    }
}