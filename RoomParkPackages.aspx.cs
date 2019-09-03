using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_RoomParkPackages : System.Web.UI.Page
{
    RoomPackageBal rppb = new RoomPackageBal();
    RoomPackageDal rppd = new RoomPackageDal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("../Visitor/LogIn.aspx");
        }
        if (!IsPostBack)
        {
            Repeater1.DataSource = rppd.GetData("select * from RoomParkPackageview");
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "BtnBook")
        {
            Response.Redirect("Booking.aspx?RoomParkPackageID=" + e.CommandArgument.ToString());
            Response.Redirect("Booking.aspx");
        }
    }
}