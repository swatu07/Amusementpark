using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RideReview : System.Web.UI.Page
{
    RideReviewDal rrd = new RideReviewDal();
    RideReviewBal rrb=new RideReviewBal ();
	
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack )
        {
            Repeater1.DataSource = rrd.GetData("select * from RideReviewView");
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "btndelete")
        {
            rrb.RideReviewID = Convert.ToInt32(e.CommandArgument);
            rrd.Delete(rrb);
            Repeater1.DataSource = rrd.GetData("select * from RideReviewView");
            Repeater1.DataBind();
        }
    }
}