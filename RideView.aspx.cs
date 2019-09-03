using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RideView : System.Web.UI.Page
{
    RideDal rid = new RideDal();
    RideBal rib = new RideBal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = rid.GetData("select * from Ride");
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "btnedit")
        {
            Response.Redirect("RideEdit.aspx?RideID=" + e.CommandArgument.ToString());
        }
        if (e.CommandName == "btndelete")
        {
            rib.RideID = Convert.ToInt32(e.CommandArgument);
            rid.Delete(rib);
            Repeater1.DataSource = rid.GetData("select * from Ride");
            Repeater1.DataBind();
        }
    }
}