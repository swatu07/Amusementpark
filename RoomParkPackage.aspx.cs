using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_RoomParkPackage : System.Web.UI.Page
{
    RoomParkPackageBal rppb = new RoomParkPackageBal();
    RoomParkPackageDal rppd = new RoomParkPackageDal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = rppd.GetData("select * from RoomParkpackageview");
            Repeater1.DataBind();
        }
    }
}