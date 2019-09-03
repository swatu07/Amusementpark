using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ParkPackageView : System.Web.UI.Page
{
    ParkPackageDal ppd = new ParkPackageDal();
    ParkPackageBal ppb = new ParkPackageBal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = ppd.GetData("select * from ParkPackageView");
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "btnedit")
        {
            Response.Redirect("ParkPackageEdit.aspx?ParkPackageID=" + e.CommandArgument.ToString());
        }
        if (e.CommandName == "btndelete")
        {
            ppb.ParkPackageID = Convert.ToInt32(e.CommandArgument);
            ppd.Delete(ppb);
            Repeater1.DataSource = ppd.GetData("select * from ParkPackageView");
            Repeater1.DataBind();
        }
    }
}