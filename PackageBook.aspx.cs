using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_PackageBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PackageBookDal pbd = new PackageBookDal();
        Repeater1.DataSource = pbd.GetData("select * from PackageBook");
        Repeater1.DataBind();
    }
}