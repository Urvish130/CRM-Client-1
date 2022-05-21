using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class TermsandCondtitions : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    BusinessLogicLayer bll = new BusinessLogicLayer();
    public enum MessageType { Success, Error, Info, Warning };
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

                    BindDetail();
                    if (Request.QueryString["no"] != null)
                    {
                        lblid.Text = Request.QueryString["no"].ToString();
                        lblloginid.Text = Session["id"].ToString();
                        Editdata(lblid.Text);
                    }
                }
            }


        }

        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    public void BindDetail()
    {

        try
        {
            dt = bll.getalltermsandconditionsfroadminBAL();


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
            dt1 = bll.checktermsandconditionsdata(txtName.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

               string result= bll.Savetermsandconditionsbll(txtName.Text,Txttandc.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if (result == "1")
                {
                    ShowMessage("Record Inserted!!!", MessageType.Success);
                    BindDetail();
                    txtName.Text = "";
                    Txttandc.Text = "";
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
    protected void Grddata_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                DataTable dtdata = bll.gettermsandconditionsdatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    txtName.Text = dtdata.Rows[0]["Title"].ToString();
                    Txttandc.Text = dtdata.Rows[0]["TermsandConditions"].ToString();
                    txtName.Focus();
                    BtnSave.Visible = false;
                    BtnUpdate.Visible = true;

                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bll.deletetermsandconditionsdata(lblid.Text);

                ShowMessage("Record Deleted!!!", MessageType.Success);

                BindDetail();

                BtnSave.Visible = true;
                BtnUpdate.Visible = false;
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
          string result=  bll.tbl_termsandconditionsupdate(lblid.Text, txtName.Text,Txttandc.Text);
            if (result == "1")
            {
                ShowMessage("Record  Updated!!!", MessageType.Success);
                BindDetail();
                txtName.Text = "";
                Txttandc.Text = "";
                txtName.Focus();
                BtnSave.Visible = true;
                BtnUpdate.Visible = false;
            }
            else if(result=="-1")
            {
                ShowMessage("Record  Already Exist!!!", MessageType.Error);
                BindDetail();
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

    public void Editdata(string id)
    {
        lblid.Text = id;
        DataTable dtdata = bll.gettermsandconditionsdatabyidBAL(lblid.Text);
        if (dtdata.Rows.Count > 0)
        {
            txtName.Text = dtdata.Rows[0]["Title"].ToString();
            Txttandc.Text = dtdata.Rows[0]["TermsandConditions"].ToString();
            txtName.Focus();
            BtnSave.Visible = false;
            BtnUpdate.Visible = true;

        }
    }
}