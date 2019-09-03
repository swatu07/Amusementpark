using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_RoomPackages : System.Web.UI.Page
{
    RoomPackageBal rpb = new RoomPackageBal();
    RoomPackageDal rpd = new RoomPackageDal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = rpd.GetData("select * from RoomPackageview");
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "BtnBook")
        {
            Response.Redirect("Booking.aspx?RoomPackageID=" + e.CommandArgument.ToString());
            Response.Redirect("Booking.aspx");
        }
    }
}