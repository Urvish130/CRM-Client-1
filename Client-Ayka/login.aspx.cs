using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _login : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    DataTable dt = new DataTable();
    BusinessLogicLayer bll = new BusinessLogicLayer();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                Session["id"] = null;

            }
            catch (Exception ex)
            {

            }
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {

            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();



            dt1 = bll.checklogindata(txtuname.Text, txtpwd.Text);
            if (dt1.Rows.Count > 0)
            {
                dt2 = bll.CheckUserRightsdata(txtuname.Text, txtpwd.Text);
                if (dt2.Rows.Count > 0)
                {
                    Session["id"] = dt1.Rows[0]["no"].ToString();
                    Session["Ename"] = dt1.Rows[0]["Ename"].ToString();
                    Session["role"] = dt1.Rows[0]["Role"].ToString();
                    Response.Redirect("Dashboard.aspx", false);
                }
                else
                {
                    ShowMessage("No Permission Of Any Master", MessageType.Error);
                }


            }
            else
            {
                ShowMessage("Invalid username and password", MessageType.Error);
            }
        }


        
        catch (Exception ex)
        {

        }
    }
    protected void ShowMessage(string Message, MessageType type)
{
    ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
}
}