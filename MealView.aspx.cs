using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MealView : System.Web.UI.Page
{
    MealDal ed = new MealDal();
    MealBal eb = new MealBal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = ed.GetData("select * from Meal");
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "btnedit")
        {
            Response.Redirect("MealEdit.aspx?MealID=" + e.CommandArgument.ToString ());
        }
        if (e.CommandName == "btndelete")
        {
            eb.MealID = Convert.ToInt32(e.CommandArgument);
            ed.Delete(eb);
            Repeater1.DataSource = ed.GetData("select * from Meal");
            Repeater1.DataBind();
        }
    }
}