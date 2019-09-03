using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Review : System.Web.UI.Page
{
    ReviewDal rvd = new ReviewDal();
    ReviewBal rvb = new ReviewBal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = rvd.GetData("select * from ReviewView");
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "btndelete")
        {
            rvb.ReviewID  = Convert.ToInt32(e.CommandArgument);
            rvd.Delete(rvb);
            Repeater1.DataSource = rvd.GetData("select * from ReviewView");
            Repeater1.DataBind();
        }
    }
}