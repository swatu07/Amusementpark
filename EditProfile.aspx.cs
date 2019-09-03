using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_EditProfile : System.Web.UI.Page
{
    string img = "";
    int UserID = 1;

    UserDal ud = new UserDal();
    UserBal ub = new UserBal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("../Visitor/LogIn.aspx");
        }
        DataTable dt = new DataTable();
        if (!IsPostBack)
        {
            dt = ud.GetData("select * from Tbl_User where UserID=" + Session["UserID"]);
            if (dt.Rows.Count > 0)
            {
                Session["UserID"] = dt.Rows[0]["UserID"].ToString();
                UserID = Convert.ToInt32(Session["UserID"].ToString());
                TxtUserName.Text=dt.Rows[0]["UserName"].ToString();
                TxtMNo.Text = dt.Rows[0]["MobileNumber"].ToString();
                TxtAddress.Text = dt.Rows[0]["Address"].ToString();
                Image1.ImageUrl = "../Upload/" + dt.Rows[0]["Image"].ToString();
                img = dt.Rows[0]["Image"].ToString();
            }
        }
    }

    protected void BtnChange_Click(object sender, EventArgs e)
    {
        ub.UserID = Convert.ToInt32(Session["UserID"].ToString());
        ub.UserName = TxtUserName.Text;
        ub.MobileNumber = TxtMNo.Text;
        ub.Address = TxtAddress.Text;
        if (FileUpload1.HasFile)
        {
            ub.Image = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("../Upload/" + FileUpload1.FileName));
        }
        else
            ub.Image = "";
        ud.Update(ub);
        Response.Redirect("Index.aspx");
    }
}