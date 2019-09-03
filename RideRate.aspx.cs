using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RideRate : System.Web.UI.Page
{
    RideRateDal rrd = new RideRateDal();
    RideRateBal rrb = new RideRateBal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = rrd.GetData("select * from RideRateView");
            Repeater1.DataBind();
        }
    }
}