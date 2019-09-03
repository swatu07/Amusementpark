using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ParkPackageAdd : System.Web.UI.Page
{
    ParkPackageBal ppb = new ParkPackageBal();
    ParkPackageDal ppd = new ParkPackageDal();
    public void clear()
    {
        
        Amount.Text = "";
        TxtDescription.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDLMeal.DataTextField = "MealName";
            DDLMeal.DataValueField = "MealID";
            DDLMeal.DataSource=ppd.GetData("select * from Meal");
            DDLMeal.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ppb.MealID = Convert.ToInt32(DDLMeal.SelectedValue.ToString ());
        ppb.Amount = Convert.ToSingle(Amount.Text);
        ppb.Description = TxtDescription.Text;
        if (FileUpload1.HasFile)
        {
            ppb.Image = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("../Upload/" + FileUpload1.FileName));
        }
        else
            ppb.Image = "";
        ppd.Insert(ppb);
        clear();
        Response.Redirect("ParkPackageView.aspx");
    }
}