using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class City : System.Web.UI.Page
{
    DataTable dt = new DataTable();
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
                lblmsg.Text = "";
                bindState();
                bindDetail();
            }


        }
    }
    public void bindState()
    {
        try
        {
            DataTable dtdept = new DataTable();

            dtdept = bal.getallstateforadminBAL();

            if (dtdept.Rows.Count > 0)
            {
                ddlgroup.DataSource = dtdept;
                ddlgroup.DataTextField = "State";
                ddlgroup.DataValueField = "id";
                ddlgroup.DataBind();
            }
            ddlgroup.Items.Insert(0, new ListItem("----Select State----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    public void bindDetail()
    {

        try
        {

            //  dt = bal.getallItemsubgroupBAL(lblloginid.Text);
            dt = bal.getallcityforadminBAL();
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
                DataTable dtdata = bal.getcitydatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    txtName.Text = dtdata.Rows[0]["City"].ToString();
                    ddlgroup.SelectedValue = dtdata.Rows[0]["Statename"].ToString();
                    txtName.Focus();
                    btnSave.Visible = false;
                    btnUpdate.Visible = true;

                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bal.deletecitydatabyidBAL(lblid.Text);

                ShowMessage("Record Deleted!!!", MessageType.Success);

                bindDetail();
                btnSave.Visible = true;
                btnUpdate.Visible = false;

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

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkcitynameBAL(txtName.Text,Convert.ToInt32(ddlgroup.SelectedValue));
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
               
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

              string result= bal.tbl_city_Master_InsertBAL(txtName.Text, Convert.ToInt32(ddlgroup.SelectedValue.ToString()), lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    bindDetail();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    Reset();

                    txtName.Focus();
                }
                else
                {
                    ShowMessage("Record Not Inserted!!!", MessageType.Error);
                }
                

            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
           string result= bal.tbl_city_Master_UpdateBAL(lblid.Text, Convert.ToInt32(ddlgroup.SelectedValue.ToString()), txtName.Text);
            if(result=="-1")
            {
               
                ShowMessage("Name Already Exist!!!", MessageType.Error);
               

            }
            else if(result == "1")
            {
                bindDetail();
                ShowMessage("Record Save!!!", MessageType.Success);
                Reset();
                txtName.Focus();
                btnSave.Visible = true;
                btnUpdate.Visible = false;
            }
            else
            {
                ShowMessage("Record Not Save!!!", MessageType.Error);
            }
            
        }
        catch (Exception ex)
        {
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Reset();
    }

    public void Reset()
    {
        txtName.Text = "";
        lblmsg.Text = "";
        ddlgroup.ClearSelection();
        btnSave.Visible = true;
        btnUpdate.Visible = false;
    }


}