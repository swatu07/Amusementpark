using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Registration : System.Web.UI.Page
{
    UserBal ub = new UserBal();
    UserDal ud = new UserDal();
    
    public void clear()
    {
        TxtUserName.Text = "";
        TxtEmail.Text = "";
        TxtPassword.Text = "";
        TxtMobileNumber.Text = "";
        TxtAddress.Text = "";
        TxtSecurityAnswer.Text = "";
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        ub.UserName = TxtUserName.Text;
        ub.Email = TxtEmail.Text;
        ub.Password = TxtPassword.Text;
        ub.MobileNumber = TxtMobileNumber.Text;
        ub.Address = TxtAddress.Text;
        ub.Security_Question = Convert.ToString(DDLSQ.SelectedValue.ToString());
        ub.Security_Answer = TxtSecurityAnswer.Text;
        if (FileUpload1.HasFile)
        {
            ub.Image = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("../Upload/" + FileUpload1.FileName));
        }
        else
            ub.Image = "";
        ud.Insert(ub);
        Response.Redirect("LogIn.aspx");
        clear();
    }
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        clear();
    }
}