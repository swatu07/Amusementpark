using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ParkPackages : System.Web.UI.Page
{
    ParkPackageBal ppb = new ParkPackageBal();
    ParkPackageDal ppd = new ParkPackageDal();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = ppd.GetData("select * from ParkPackageview");
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "BtnBook")
        {
            Response.Redirect("Booking.aspx?ParkPackageID=" + e.CommandArgument.ToString());
            Response.Redirect("Booking.aspx");
        }
    }
}