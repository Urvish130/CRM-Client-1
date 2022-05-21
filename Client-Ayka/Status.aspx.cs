using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Status : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    BusinessLogicLayer bll = new BusinessLogicLayer();
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
                bindDetail();
            }


        }
    }
    public void bindDetail()
    {

        try
        {
            dt = bll.getallstatusfroadminBAL();


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
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bll.checkstatusdata(txtName.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
               
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

               string result= bll.Savestatusbll(txtName.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    ShowMessage("Record Inserted", MessageType.Success);
                    bindDetail();
                    Reset();

                    txtName.Focus();
                }
                else
                {
                    txtName.Focus();
                    ShowMessage("Record Not Inserted", MessageType.Error);

                }
              
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
    protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                DataTable dtdata = bll.getstatusdatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    txtName.Text = dtdata.Rows[0]["status"].ToString();
                    txtName.Focus();
                    btnSave.Visible = false;
                    btnUpdate.Visible = true;

                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bll.deletestatusdata(lblid.Text);
                if (result == "1")
                {
                    ShowMessage("Record Deleted!!!", MessageType.Success);
                    bindDetail();
                    btnSave.Visible = true;
                    btnUpdate.Visible = false;

                }
                else
                {
                    ShowMessage("Record Not Deleted!!!", MessageType.Error);


                }
               
            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {

            string result=bll.tbl_statusupdate(lblid.Text, txtName.Text);
            if(result=="-1")
            {
               
                txtName.Focus();
                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else if (result == "1")
            {
                ShowMessage("Record Updated!!!", MessageType.Success);
                bindDetail();
                Reset();
                txtName.Focus();
                btnSave.Visible = true;
                btnUpdate.Visible = false;
            }
            else
            {
                ShowMessage("Record Not Updated!!!", MessageType.Error);
                txtName.Focus();
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
        btnSave.Visible = true;
        btnUpdate.Visible = false;
    }
}