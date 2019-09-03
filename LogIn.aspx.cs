using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_LogIn : System.Web.UI.Page
{
    ClientLogIn c = new ClientLogIn();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogIn_Click(object sender, EventArgs e)
    {
        if (c.ClientLogin (Email.Text, Password.Text))
        {
            Session["Email"] = Email.Text;
            Session["UserId"] = c.GetData("select * from Tbl_User where Email='" + Email.Text + "'").Rows[0]["UserID"];
            Response.Redirect("../User/Index.aspx"); ;
        }
        else
        {
            lblClient.Text="Invalid AdminName or Password....";
        }
    }
    protected void LinkForgot_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPwd.aspx");
    }
}
