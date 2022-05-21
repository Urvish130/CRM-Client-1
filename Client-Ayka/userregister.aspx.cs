using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userregister : System.Web.UI.Page
{
    BusinessLogicLayer bal = new BusinessLogicLayer();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("login.aspx", false);
                }
                else
                {
                    Binddata();
                }
            }
        }
        catch (Exception ex)
        {

        }
    }
    public void Binddata()
    {
        try
        {
            DataTable dt = bal.GetAllEmployeeListBAL();

            if (dt.Rows.Count > 0)
            {
                grduserreg.DataSource = dt;
                grduserreg.DataBind();
            }
            else
            {
                grduserreg.DataSource = dt;
                grduserreg.DataBind();
            }
        }
        catch (Exception ex)
        { }
    }
    protected void grduserreg_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string id = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                Response.Redirect(String.Format("UserPermission.aspx?Id={0}", id), false);
            }
        }
        catch (Exception ex)
        {

        }
    }

    protected void btncreate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userpermission.aspx", false);
    }
}