using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Room : System.Web.UI.Page
{
    RoomDal rd = new RoomDal();
    RoomBal rb = new RoomBal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = rd.GetData("select * from RoomView");
            Repeater1.DataBind();
        }
    }
}