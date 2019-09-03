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


public partial class Admin_RideAdd : System.Web.UI.Page
{
    RideBal rb = new RideBal();
    RideDal rd = new RideDal();
    
    public void Clear()
    {
        TxtRideName.Text = "";
        TxtDescription.Text = "";
        TxtAge.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        rb.RideName = TxtRideName.Text;
        rb.Description = TxtDescription.Text;
        if (FileUpload1.HasFile)
        {
            rb.Image = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("../Upload/" + FileUpload1.FileName));
        }
        else
            rb.Image = "";    
        rb.Age = TxtAge.Text;
        rd.Insert(rb);
        Clear();
        Response.Redirect("RideView.aspx");
    }
}