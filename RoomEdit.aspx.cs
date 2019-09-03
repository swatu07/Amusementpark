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

public partial class Admin_RoomAdd : System.Web.UI.Page
{
    string img1 = "";
    string img2 = "";
    string img3 = "";
    string img = "";

    RoomBal rob = new RoomBal();
    RoomDal rod = new RoomDal();
    public void clear()
    {
        RoomName.Text = "";
        Rate.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DDLRoomType.DataTextField = "RoomTypeName";
            DDLRoomType.DataValueField = "RoomTypeID";
            DDLRoomType.DataSource = rod.GetData("select * from RoomType");
            DDLRoomType.DataBind();
            dt = rod.GetData("select * from Room where RoomID=" + Request.QueryString["RoomID"].ToString());
            RoomName.Text = dt.Rows[0]["RoomName"].ToString();
            DDLRoomType.SelectedValue = dt.Rows[0]["RoomTypeId"].ToString();
            Rate.Text = dt.Rows[0]["Rate"].ToString();
            Image1.ImageUrl = "../Upload/" + dt.Rows[0]["Image1"].ToString();
            img1 = dt.Rows[0]["Image1"].ToString();
            Image2.ImageUrl = "../Upload/" + dt.Rows[0]["Image2"].ToString();
            img2 = dt.Rows[0]["Image2"].ToString();
            Image3.ImageUrl = "../Upload/" + dt.Rows[0]["Image3"].ToString();
            img3 = dt.Rows[0]["Image3"].ToString();
            Image4.ImageUrl = "../Upload/" + dt.Rows[0]["Image"].ToString();
            img = dt.Rows[0]["Image"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        rob.RoomID = Convert.ToInt32(Request.QueryString["RoomID"].ToString());
        rob.RoomName = RoomName.Text;
        rob.RoomTypeID = Convert.ToInt32(DDLRoomType.SelectedValue.ToString());
        rob.Rate = Convert.ToSingle(Rate.Text);
        if (FileUpload1.HasFile)
        {
            rob.Image1 = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("../Upload/" + FileUpload1.FileName));
        }
        else
            rob.Image1 = img1;
        if (FileUpload2.HasFile)
        {
            rob.Image2 = FileUpload2.FileName;
            FileUpload2.SaveAs(Server.MapPath("../Upload/" + FileUpload2.FileName));
        }
        else
            rob.Image2 = img2;
        if (FileUpload3.HasFile)
        {
            rob.Image3 = FileUpload3.FileName;
            FileUpload3.SaveAs(Server.MapPath("../Upload/" + FileUpload3.FileName));
        }
        else
            rob.Image3 = img3;
        if (FileUpload4.HasFile)
        {
            rob.Image = FileUpload4.FileName;
            FileUpload4.SaveAs(Server.MapPath("../Upload/" + FileUpload4.FileName));
        }
        else
            rob.Image = img;
        rod.Update(rob);
        clear();
        Response.Redirect("RoomView.aspx");
    }
}