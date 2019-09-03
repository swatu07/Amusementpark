using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_ParkPackageAdd : System.Web.UI.Page
{
    string img = "";
    ParkPackageBal ppb = new ParkPackageBal();
    ParkPackageDal ppd = new ParkPackageDal();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DDLMeal.DataTextField = "MealName";
            DDLMeal.DataValueField = "MealID";
            DDLMeal.DataSource = ppd.GetData("select * from Meal");
            DDLMeal.DataBind();
            dt = ppd.GetData("select * from ParkPackage where ParkPackageID=" + Request.QueryString["ParkPackageID"].ToString());
            DDLMeal.SelectedValue = dt.Rows[0]["MealId"].ToString();
            Amount.Text = dt.Rows[0]["Amount"].ToString();
            TxtDescription.Text = dt.Rows[0]["Description"].ToString();
            Image1.ImageUrl = "../Upload/" + dt.Rows[0]["Image"].ToString();
            img = dt.Rows[0]["Image"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ppb.ParkPackageID = Convert.ToInt32(Request.QueryString["ParkPackageID"].ToString());
        ppb.MealID = Convert.ToInt32(DDLMeal.SelectedValue.ToString ());
        ppb.Amount = Convert.ToSingle(Amount.Text);
        ppb.Description = TxtDescription.Text;
        if (FileUpload1.HasFile)
        {
            ppb.Image = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("../Upload/" + FileUpload1.FileName));
        }
        else
            ppb.Image = img;
        ppd.Update(ppb);
        Response.Redirect("ParkPackageView.aspx");
    }
}