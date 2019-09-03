using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Booking : System.Web.UI.Page
{
    PackageBookBal pb = new PackageBookBal();
    PackageBookDal pd = new PackageBookDal();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["RoomPackageID"] != null)
        {
            txtprice.Value = pd.GetData("select * from RoomPackage where RoomPackageID="  + Request.QueryString["RoomPackageID"].ToString()).Rows[0]["Amount"].ToString ();
        }
        if (Request.QueryString["RoomParkPackageID"] != null)
        {
            txtprice.Value = pd.GetData("select * from RoomParkPackage where RoomParkPackageID=" + Request.QueryString["RoomParkPackageID"].ToString()).Rows[0]["Amount"].ToString();

        }
        if (Request.QueryString["ParkPackageID"] != null)
        {
            txtprice.Value = pd.GetData("select * from ParkPackage where ParkPackageID=" + Request.QueryString["ParkPackageID"].ToString()).Rows[0]["Amount"].ToString();
        }
 
    }
    protected void BtnBook_Click(object sender, EventArgs e)
    {
        pb.UserID = Convert.ToInt32(Session["UserID"]);
        pb.BookDate = TxtBookDate.Text;
        pb.CurrentDate = DateTime.Now.Date.ToString ("yyyy-MM-dd") ;
        pb.Amount = Convert.ToSingle(TxtAmount.Text);
        pb.CCNo = TxtCCNo.Text;
        pb.CCName = TxtCCName.Text;
        pb.ExpDate = TxtEDate.Text;
        pb.CVVNo = TxtCVVNo.Text;
        pb.Adult = TxtAdult.Text;
        if (Request.QueryString["RoomPackageID"] != null)
        {
            pb.RoomPackageID = Convert.ToInt32(Request.QueryString["RoomPackageID"].ToString());
            pd.RoomInsert(pb);
        }
        if (Request.QueryString["RoomParkPackageID"] != null)
        {
            pb.RoomParkPackageID  = Convert.ToInt32(Request.QueryString["RoomParkPackageID"].ToString());
            pd.RoomParkInsert(pb);
        }
        if (Request.QueryString["ParkPackageID"] != null)
        {
            pb.ParkPackageID  = Convert.ToInt32(Request.QueryString["ParkPackageID"].ToString());
            pd.ParkInsert(pb);
        }
    }

    protected void TxtAdult_TextChanged(object sender, EventArgs e)
    {
        try
        {
            if (Convert.ToInt32(TxtAdult.Text) <= 4)
            {
                TxtAmount.Text = (Convert.ToInt32(txtprice.Value) * Convert.ToInt32(TxtAdult.Text)).ToString();
            }
            else
            {
                LblErr.Text = "Max 4 Person Allowed";
                TxtAdult.Text = "4";
                TxtAmount.Text = (Convert.ToInt32(txtprice.Value) * Convert.ToInt32(TxtAdult.Text)).ToString();
            }
        }
        catch (Exception ex)
        {
            LblErr.Text = "Invalid Persons ";
            TxtAmount.Text = "";
        }
    }
}