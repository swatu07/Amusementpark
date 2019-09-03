using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ReviewAdd : System.Web.UI.Page
{
    ReviewBal rb = new ReviewBal();
    ReviewDal rd = new ReviewDal();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnReview_Click(object sender, EventArgs e)
    {
        rb.Review = TxtReview.Text;
        rb.UserID = Convert.ToInt32(Session["UserID"]);
        rd.Insert(rb);
        Response.Redirect("Review.aspx");
    }
}