using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Designation : System.Web.UI.Page
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
                BindDetail();
            }


        }
    }
    public void BindDetail()
    {

        try
        {
            dt = bll.getalldesignationfroadminBAL();


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
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bll.checkdesignationdata(txtName.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

               string result= bll.Savedesignationbll(txtName.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    ShowMessage("Record Inserted!!!", MessageType.Success);
                    BindDetail();
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
            ex.ToString();
        }
    }
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
          string result=  bll.tbl_designationupdate(lblid.Text, txtName.Text);
            if(result=="-1")
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                txtName.Focus();

            }
            else if(result=="1")
            {
                ShowMessage("Record Updated!!!", MessageType.Success);
                BindDetail();
                txtName.Text = "";
                txtName.Focus();
                BtnSave.Visible = true;
                BtnUpdate.Visible = false;
            }
            else
            {
                ShowMessage("Record Not Updated!!!", MessageType.Error);
            }
           
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    protected void Grddata_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                DataTable dtdata = bll.getdesignationdatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    txtName.Text = dtdata.Rows[0]["Designation"].ToString();
                    txtName.Focus();
                    BtnSave.Visible = false;
                    BtnUpdate.Visible = true;

                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bll.deletedesignationdata(lblid.Text);
                if(result=="1")
                {
                    ShowMessage("Record Deleted!!!", MessageType.Success);

                    BindDetail();

                    Reset();
                }
                else
                {
                    ShowMessage("Record Not Deleted!!!", MessageType.Error);
                }

                
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
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
        BtnSave.Visible = true;
        BtnUpdate.Visible = false;
        txtName.Focus();
    }


}