using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_RateAdd : System.Web.UI.Page
{
    RateBal rb = new RateBal();
    RateDal rd = new RateDal();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Rate_Click(object sender, EventArgs e)
    {
        rb.Rate = RadioButtonList1.SelectedIndex + 1;
        rb.UserID = Convert.ToInt32(Session["UserId"]);
        rd.Insert(rb);
        Response.Redirect("Rate.aspx");
    }
}