using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ItemSubgroup : System.Web.UI.Page
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
                bindDetail();
                binditemgroup();
            }


        }
    }

    public void binditemgroup()
    {
        try
        {
            DataTable dtdept = new DataTable();

            dtdept = bal.getallitemgroupfroadminBAL();

            if (dtdept.Rows.Count > 0)
            {
                ddlgroup.DataSource = dtdept;
                ddlgroup.DataTextField = "ItemGroup";
                ddlgroup.DataValueField = "id";
                ddlgroup.DataBind();
            }
            ddlgroup.Items.Insert(0, new ListItem("----Select ItemGroup----", "0"));
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
            dt = bal.getallItemsubgroupforBAL();
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
                DataTable dtdata = bal.getItemsubgroupdatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    txtName.Text = dtdata.Rows[0]["SubgroupName"].ToString();
                    ddlgroup.SelectedValue = dtdata.Rows[0]["itemgroupid"].ToString();
                    txtName.Focus();
                    btnSave.Visible = false;
                    btnUpdate.Visible = true;

                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bal.deleteItemsubgroupdatabyidBAL(lblid.Text);

                if(result=="1")
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

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkItemsubgroupnameBAL(txtName.Text,ddlgroup.SelectedValue.ToString());
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
               
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

              string result=  bal.tbl_Itemsubgroup_Master_InsertBAL(txtName.Text, Convert.ToInt32(ddlgroup.SelectedValue.ToString()), lblloginid.Text, localTime, "", "", "", "", "");
                if (result == "1")
                {
                    bindDetail();
                    ShowMessage("Record Inserted!!!", MessageType.Success);
                    Reset();
                    txtName.Focus();
                }
                else
                {
                    txtName.Focus();
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

    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
           string result= bal.tbl_Itemsubgroup_Master_UpdateBAL(lblid.Text, Convert.ToInt32(ddlgroup.SelectedValue.ToString()), txtName.Text);
            if(result=="-1")
            {
               
                ShowMessage("Name Already Exist!!!", MessageType.Error);
               
            }
            else if(result=="1")
            {
                bindDetail();
                ShowMessage("Record Updated!!!", MessageType.Success);
                Reset();
                txtName.Focus();
            }
            else
            {
                txtName.Focus();
                ShowMessage("Record Not Updated!!!", MessageType.Error);

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
        ddlgroup.ClearSelection();
    }
}