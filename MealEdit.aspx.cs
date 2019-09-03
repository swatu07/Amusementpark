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
public partial class Admin_MealAdd : System.Web.UI.Page
{
    MealBal mb = new MealBal();
    MealDal md = new MealDal();
    public void Clear()
    {
        TxtMealName.Text = "";
        TxtPrice.Text = "";
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new  DataTable();
            dt = md.GetData("select * from Meal where MealID=" + Request.QueryString["MealID"].ToString ());
            TxtMealName.Text = dt.Rows[0]["MealName"].ToString();
            TxtPrice.Text = dt.Rows[0]["Price"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mb.MealID = Convert.ToInt32(Request.QueryString["MealID"].ToString());
        mb.MealName = TxtMealName.Text;
        mb.Price = Convert.ToSingle(TxtPrice.Text);
        md.Update(mb);
        Response.Redirect("MealView.aspx");
        Clear();
    }    
}