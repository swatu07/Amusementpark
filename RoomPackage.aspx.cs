using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_RoomPackage : System.Web.UI.Page
{
    RoomPackageBal rpb = new RoomPackageBal();
    RoomPackageDal rpd = new RoomPackageDal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = rpd.GetData("select * from Roompackageview");
            Repeater1.DataBind();
        }
    }
}