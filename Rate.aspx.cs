using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Rate : System.Web.UI.Page
{
    RateDal rd = new RateDal();
    RateBal rb = new RateBal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = rd.GetData("select * from RateView");
            Repeater1.DataBind();
        }
    }
}