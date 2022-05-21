using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class EmployeeRegister : System.Web.UI.Page
{
    DataTable dt = new DataTable();

    DataTable dt2 = new DataTable();
    public string Create = "";
    public string Edit = "";
    public string Update = "";
    public string View = "";
    public string Delete = "";
    public string Email = "";
    public string Print = "";
    BusinessLogicLayer bal = new BusinessLogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("login.aspx", false);
            }
            else
            {
                lblloginid.Text = Session["id"].ToString();
                lblrole.Text = Session["role"].ToString();
                bindDetail();
                dt = bal.CheckUserRightsBAL(lblloginid.Text, "EmployeeMaster");
                Create = dt.Rows[0]["CreateStatus"].ToString();
                Edit = dt.Rows[0]["EditStatus"].ToString();
                View = dt.Rows[0]["ViewStatus"].ToString();
                Delete = dt.Rows[0]["DeleteStatus"].ToString();
                Email = dt.Rows[0]["EmailStatus"].ToString();
                Print = dt.Rows[0]["PrintStatus"].ToString();
            }
        }
    }
    public void bindDetail()
    {

        try
        {
            if (Create == "false")
            {
                btncreate.Visible = false;
            }

            if (lblrole.Text.Equals("SuperAdmin"))
            {
                dt = bal.getallemployeedataforadminBAL();
            }
            else
            {
                //dt = bal.getallemployeedataforadminBAL();

               dt = bal.getallemployeedataBAL(lblloginid.Text);
            }



            if (dt.Rows.Count > 0)
            {
                grddata.DataSource = dt;
                grddata.DataBind();
                grddata.UseAccessibleHeader = true;
                grddata.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grddata.DataSource = dt;
                grddata.DataBind();
                grddata.UseAccessibleHeader = true;
                
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                Response.Redirect(String.Format("UpdateEmployee.aspx?no={0}", lblid.Text), false);
            }
        }
        catch (Exception ex)
        {

        }

    }
    protected void btncreate_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("EmployeeMaster.aspx", false);
        }
        catch (Exception ex)
        {

        }
    }

    protected void grddata_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (Edit == "false")
        {
            grddata.Columns[0].Visible = false;
        }
    }
}