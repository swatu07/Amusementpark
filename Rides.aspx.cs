using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Rides : System.Web.UI.Page
{
    RideDal rid = new RideDal();
    RideBal rib = new RideBal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("../Visitor/LogIn.aspx");
        }
        
        if (!IsPostBack)
        {            
            Repeater1.DataSource = rid.GetData("select * from RideRateAvgView");
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Response.Write(e.CommandName);
        if (e.CommandName == "btnrate")
        {
            Response.Redirect("RideRate.aspx?RideId=" + e.CommandArgument);
        }
        Response.Write(e.CommandName);
        if (e.CommandName == "btnreview")
        {
            Response.Redirect("RideReview.aspx?RideId=" + e.CommandArgument);
        }
    }
    public string GetStar(string rate)
    {
        string star = "";
        for (int i = 1; i <= Convert.ToInt16(rate); i++)
        {
            star += "★";
        }
        return star;
    }
    public string GetBStar(string rate)
    {
        string star = "";
        for (int i = 1; i <= 5 - Convert.ToInt16(rate); i++)
        {
            star += "★";
        }
        return star;
    }
}