using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_PreviousBooking : System.Web.UI.Page
{
    UserBal ub = new UserBal();
    UserDal ud = new UserDal();

    PackageBookBal pb = new PackageBookBal();
    PackageBookDal pd = new PackageBookDal();

    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        if (!IsPostBack)
        {
            Repeater1.DataSource = pd.GetData("select * from RoomParkPackageBookView where UserID=" + Session["UserID"]);
            Repeater1.DataBind();

            Repeater2.DataSource = pd.GetData("select * from RoomPackageBookView where UserID=" + Session["UserID"]);
            Repeater2.DataBind();

            Repeater3.DataSource = pd.GetData("select * from ParkPackageBookView where UserID=" + Session["UserID"]);
            Repeater3.DataBind();
        }
    }
}