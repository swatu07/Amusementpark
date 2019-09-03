using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RoomPackageAdd : System.Web.UI.Page
{
    RoomPackageBal rpb = new RoomPackageBal();
    RoomPackageDal rpd = new RoomPackageDal();
    public void clear()
    {
        Days.Text = "";
        Nights.Text = "";
        Amount.Text = "";
        Description.Text = "";
        Max_Person.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDLRoom.DataTextField = "RoomName";
            DDLRoom.DataValueField = "RoomID";
            DDLRoom.DataSource = rpd.GetData("select * from Room");
            DDLRoom.DataBind();
        } 
        if (!IsPostBack)
        {
            DDLMeal.DataTextField = "MealName";
            DDLMeal.DataValueField = "MealID";
            DDLMeal.DataSource = rpd.GetData("select * from Meal");
            DDLMeal.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        rpb.RoomID = Convert.ToInt32(DDLRoom.SelectedValue.ToString());
        rpb.Days = Convert.ToInt32(Days.Text);
        rpb.Nights = Convert.ToInt32(Nights.Text);
        rpb.MealID = Convert.ToInt32(DDLMeal.SelectedValue.ToString());
        rpb.Amount = Convert.ToSingle(Amount.Text);
        rpb.Description = Description.Text;
        rpb.Max_Person = Max_Person.Text;
        if(FileUpload1.HasFile)
        {
            rpb.Image = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("../Upload/" + FileUpload1.FileName));
        }
        else
            rpb.Image = "";    
        rpd.Insert(rpb);
        clear();
        Response.Redirect("RoomPackageView.aspx");
    }
}