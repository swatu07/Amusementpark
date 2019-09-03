using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_ChangePassword : System.Web.UI.Page
{
    UserBal ub = new UserBal();
    UserDal ud = new UserDal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("../Visitor/LogIn.aspx");
        }
    }
    protected void BtnChange_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = ud.GetData("select * from Tbl_User where UserId=" + (Session["UserId"]).ToString());
        if (dt.Rows[0]["Password"].ToString() == TxtOldPwd.Text)
        {
            if (TxtNewPwd.Text == TxtNewPwd.Text)
            {
                ub.UserID = Convert.ToInt32(Session["UserId"]);
                ub.Password = TxtNewPwd.Text;
                ud.ChangePassword(ub);
                Response.Redirect("../Client/LogIn.aspx");
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
