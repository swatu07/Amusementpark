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
    string img = "";
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
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            dt = rd.GetData("select * from Ride where RideID=" + Request.QueryString["RideID"].ToString());
            TxtRideName.Text = dt.Rows[0]["RideName"].ToString();
            TxtDescription.Text = dt.Rows[0]["Description"].ToString();
            Image1.ImageUrl = "../Upload/" + dt.Rows[0]["Image"].ToString();
            img = dt.Rows[0]["Image"].ToString();
            TxtAge.Text = dt.Rows[0]["Age"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        rb.RideID = Convert.ToInt32(Request.QueryString["RideID"].ToString());
        rb.RideName = TxtRideName.Text;
        rb.Description = TxtDescription.Text;
        if(FileUpload1.HasFile)
        {
            rb.Image = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("../Upload/" + FileUpload1.FileName));
        }
        else
            rb.Image = "";
        rb.Age = TxtAge.Text;
        rd.Update(rb);
        Clear();
        Response.Redirect("RideView.aspx");
    }
}