using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RoomAdd : System.Web.UI.Page
{
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
            DDLRoomType.DataTextField = "RoomTypeName";
            DDLRoomType.DataValueField = "RoomTypeID";
            DDLRoomType.DataSource = rod.GetData("select * from RoomType");
            DDLRoomType.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        rob.RoomName = RoomName.Text;
        rob.RoomTypeID = Convert.ToInt32(DDLRoomType.SelectedValue.ToString());
        rob.Rate = Convert.ToSingle(Rate.Text);
        if (FileUpload1.HasFile)
        {
            rob.Image1 = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("../Upload/" + FileUpload1.FileName));
        }
        else
            rob.Image1 = "";
        if (FileUpload2.HasFile)
        {
            rob.Image2 = FileUpload2.FileName;
            FileUpload2.SaveAs(Server.MapPath("../Upload/" + FileUpload2.FileName));
        }
        else
            rob.Image2 = "";
        if (FileUpload3.HasFile)
        {
            rob.Image3 = FileUpload3.FileName;
            FileUpload3.SaveAs(Server.MapPath("../Upload/" + FileUpload3.FileName));
        }
        else
            rob.Image3 = "";
        if (FileUpload4.HasFile)
        {
            rob.Image = FileUpload4.FileName;
            FileUpload4.SaveAs(Server.MapPath("../Upload/" + FileUpload4.FileName));
        }
        else
            rob.Image = "";
        rod.Insert(rob);
        clear();
        Response.Redirect("RoomView.aspx");
    }
}