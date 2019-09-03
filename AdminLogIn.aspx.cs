using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class AdminLogIn : System.Web.UI.Page
{
    CheckLogInDal cd = new CheckLogInDal();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogIn_Click(object sender, EventArgs e)
    {
        if (cd.ValidLogin(AdminName.Text, Password.Text))
        {
            Session["Admin"] = AdminName.Text;
            Response.Redirect("Index.aspx");
        }
        else
        {
            lblAdminName.Text="Invalid AdminName or Password....";
        }
    }
}