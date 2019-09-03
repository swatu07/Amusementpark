using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Packages : System.Web.UI.Page
{
    ParkPackageBal ppb = new ParkPackageBal();
    ParkPackageDal ppd = new ParkPackageDal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = ppd.GetData("select * from parkpackageview");
            Repeater1.DataBind();
        }
    }
}