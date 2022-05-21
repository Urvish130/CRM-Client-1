using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Country : System.Web.UI.Page
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
            dt = bll.getallcountryfroadminBAL();


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
    } //done
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bll.checkcountrydata(txtName.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                //lblmsg.Text = "Name Already Exist!!!";
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

               string result= bll.Savecountrybll(txtName.Text,lblloginid.Text, localTime, "", "", "", "", "");
                if (result == "1")
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
    }  //done
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    } // done
    protected void Grddata_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                DataTable dtdata = bll.getcountrydatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    txtName.Text = dtdata.Rows[0]["Country"].ToString();
                    txtName.Focus();
                    btnSave.Visible = false;
                    btnUpdate.Visible = true;

                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bll.deletecountrydata(lblid.Text);

                if (result == "1")
                {
                    ShowMessage("Record Deleted!!!", MessageType.Success);

                    BindDetail();

                    btnSave.Visible = true;
                    btnUpdate.Visible = false;

                }
                else
                {
                    ShowMessage("Record Not Deleted!!!", MessageType.Error);
                    btnSave.Visible = true;
                    btnUpdate.Visible = false;
                }
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    } //done
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            
               string result= bll.tbl_countryupdate(lblid.Text, txtName.Text);
            if(result=="-1")
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else if(result == "1")
            {
                ShowMessage("Record Updated!!!", MessageType.Success);
                BindDetail();
                Reset();
                txtName.Focus();
               
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
    } //done

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