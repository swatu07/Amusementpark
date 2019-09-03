using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Visitor_ForgotPwd : System.Web.UI.Page
{
    UserBal ub = new UserBal();
    UserDal ud = new UserDal();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCheck_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = ud.GetData("select * from Tbl_User where Email='" + TxtEmail.Text + "'");
        if (dt.Rows.Count > 0)
        {
            TxtSQ.Text = dt.Rows[0]["Security_Question"].ToString();
        }
    }
    protected void BtnChange_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = ud.GetData("select * from Tbl_User where Email='" + TxtEmail.Text + "' and Security_Answer='" + TxtSA.Text + "'");
        if (dt.Rows.Count > 0)
        {
            ub.UserID = Convert.ToInt32(dt.Rows[0]["UserId"].ToString());
            ub.Password = TxtNewPwd.Text;
            ud.ChangePassword(ub);
            Response.Redirect("LogIn.aspx");
        }
    }
}