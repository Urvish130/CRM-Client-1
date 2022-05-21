using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class ItemRegister : System.Web.UI.Page
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
    public enum MessageType { Success, Error, Info, Warning };

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
                dt = bal.CheckUserRightsBAL(lblloginid.Text, "ItemMaster");
            Create = dt.Rows[0]["CreateStatus"].ToString();
            Edit = dt.Rows[0]["EditStatus"].ToString();
            View = dt.Rows[0]["ViewStatus"].ToString();
            Delete = dt.Rows[0]["DeleteStatus"].ToString();
            Email = dt.Rows[0]["EmailStatus"].ToString();
            Print = dt.Rows[0]["PrintStatus"].ToString();

            bindDetail();
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
                dt = bal.getallItemdatRegiforadminBAL();
            }
            else
            {

                dt = bal.getallItemdataBAL(lblloginid.Text);
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
                Response.Redirect(String.Format("UpdateItem.aspx?no={0}", lblid.Text), false);
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
            Response.Redirect("Item.aspx", false);
        }
        catch (Exception ex)
        {

        }
    }

    

    protected void grddata_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {


                string customerId = grddata.DataKeys[e.Row.RowIndex].Value.ToString();
               

              


                if (customerId=="1")
                {
                    Label label = (Label)e.Row.FindControl("lblItemStatus");
                    label.Text = "Active";
                }
                else
                {
                    Label label =(Label)e.Row.FindControl("lblItemStatus");
                    label.Text = "InActive";
                }









            }

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