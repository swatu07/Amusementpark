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
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mb.MealName = TxtMealName.Text;
        mb.Price = Convert.ToSingle(TxtPrice.Text);
        md.Insert(mb);
        Clear();
        Response.Redirect("MealView.aspx");
    }
    
}