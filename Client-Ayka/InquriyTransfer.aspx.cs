using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.Data.Odbc;
using System.Net.Mail;
using System.Net;
using System.Threading;

public partial class InquiryRegistry : System.Web.UI.Page
{
    Getconnection c = new Getconnection();
    DataTable dt = new DataTable();
    public enum MessageType { Success, Error, Info, Warning };
    DataTable dt2 = new DataTable();
    public string Create = "";
    public string Edit = "";
    public string Update = "";
    public string View = "";
    public string Delete = "";
    public string Email = "";
    public string Print = "";
    public string ConvertData = "";
    BusinessLogicLayer bal = new BusinessLogicLayer();
    DataAccessLayer dal = new DataAccessLayer();
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
                
                string zoneId = "India Standard Time";
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
                DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
                
                bindEmployee();
               
            }
        }
    }
    protected void btncreate_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("InquiryEntry.aspx", false);
        }
        catch (Exception ex)
        {

        }
    }
    public void bindDetail()
    {
        List<InqModel> InqList = new List<InqModel>();

        try
        {
            
            if (lblrole.Text.Equals("SuperAdmin"))
            {
                dt = bal.getallInqiurydataforadminBAL();
            }
            else
            {

                dt = bal.GetInqbycreatedBAL(lblloginid.Text);
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                InqModel inq = new InqModel();

                inq.Noseries = dt.Rows[i]["Noseries"].ToString();
                inq.InqiuryNo = dt.Rows[i]["InqiuryNo"].ToString();
                inq.Inquirydate = dt.Rows[i]["Inquirydate"].ToString();
                inq.Name = dt.Rows[i]["Name"].ToString();
                inq.ContactEmail = dt.Rows[i]["ContactEmail"].ToString();
                inq.ContactMno1 = dt.Rows[i]["ContactMno1"].ToString();
                inq.Source = dt.Rows[i]["Source"].ToString();
                inq.Status = dt.Rows[i]["Status"].ToString();
                inq.CreateBy = dt.Rows[i]["CreateBy"].ToString();
                DateTime CreateFollow = Convert.ToDateTime(dt.Rows[i]["CreateDatetime"].ToString());
                DateTime Today = DateTime.UtcNow;
                TimeSpan t = Today.Subtract(CreateFollow);
                inq.Diff = t.Days.ToString();
                DataTable dtcontact = bal.getInqFollowupdatabal(Convert.ToInt32(inq.Noseries));
               
                if (dtcontact.Rows.Count > 0)
                {
                    
                    for (int j=0;j< dtcontact.Rows.Count; j++)
                    {
                       

                        DateTime NextFollow = Convert.ToDateTime(dtcontact.Rows[j]["Expr1"].ToString());
                       
                        //string sDate = CreateFollow.Day.ToString();
                        //string sMonth = CreateFollow.Month.ToString();
                        //string sYear = CreateFollow.Year.ToString();
                        //if (Convert.ToInt32(sDate) < 10)
                        //{
                        //    sDate = "0" + sDate + "";
                        //}
                        //if (Convert.ToInt32(sMonth) < 10)
                        //{
                        //    sMonth = "0" + sMonth + "";
                        //}
                        //string FinalStartDate = "" + sDate + "/" + sMonth + "/" + sYear;
                        //DateTime dateTime10 = Convert.ToDateTime(FinalStartDate);
                       
                        inq.FollowStatus = dtcontact.Rows[j]["Status"].ToString();
                        inq.NextFollowDate = NextFollow.ToString("dd/MM/yyyy");
                       
                    }
                }
                
                InqList.Add(inq);
            }

            if (dt.Rows.Count > 0)
            {
                grddata.DataSource = InqList;
                grddata.DataBind();
                grddata.UseAccessibleHeader = true;
                grddata.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grddata.DataSource = InqList;
                grddata.DataBind();
                  }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    

    public void bindEmployee()
    {
        try
        {
            DataTable dtbtype = new DataTable();

            dtbtype = bal.GetEmployeeDDLBAL();
            if (dtbtype.Rows.Count > 0)
            {
                ddlemployee.DataSource = dtbtype;
                ddlemployee.DataTextField = "Ename";
                ddlemployee.DataValueField = "No";
                ddlemployee.DataBind();
                ddlemployee.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----Select Employee----", "0"));
            }
            if (lblrole.Text.Equals("Employee"))
            {
                ddlemployee.SelectedValue = lblloginid.Text;
                ddlemployee.Enabled = false;

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
                Response.Redirect(String.Format("Updateinqiury.aspx?no={0}", lblid.Text), false);
            }
            else if (e.CommandName == "convertquotation")
            {
                Response.Redirect(String.Format("QuotationEntry.aspx?no={0}", lblid.Text), false);
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
            grddata.Columns[1].Visible = false;
        }
        if (ConvertData == "false")
        {
            grddata.Columns[2].Visible = false;
        }
       
        
    }

    protected void grddata_RowDataBound(object sender, GridViewRowEventArgs e)
    {


       

        if (e.Row.RowType == DataControlRowType.DataRow)
        {

           
            string customerId = grddata.DataKeys[e.Row.RowIndex].Value.ToString();
            //string custorId = e.Row.DataItem.ToString();
            DataTable dt = new DataTable();
            dt = bal.getInqiuryDetailsdataBAL(Convert.ToInt32(customerId)); 
            GridView BOMGrid = e.Row.FindControl("BOMGrid") as GridView;
            BOMGrid.DataSource = dt;
            BOMGrid.DataBind();


            Label Difference = (Label)e.Row.FindControl("lblDiff");
            Label lblCreate = (Label)e.Row.FindControl("lblCreate");
            ImageButton btnedit= (ImageButton)e.Row.FindControl("btnedit");
            ImageButton btnconvert = (ImageButton)e.Row.FindControl("btnconvert");

            if (Convert.ToInt32(Difference.Text) < 90 && lblCreate.Text != lblloginid.Text)
            {
                btnedit.Visible = false;
                btnconvert.Visible = false;
            }



        }
    }



    protected void btnfilter_Click(object sender, EventArgs e)
    {
        try
        {
            string id = ddlemployee.SelectedValue;
            if (id == "0")
            {
               ShowMessage("Please Select Any Employee", MessageType.Error);
            }
            else
            {
                int Count = 0;
                foreach (GridViewRow row in grddata.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {

                        CheckBox chkrow = (row.Cells[0].FindControl("btnchkbox") as CheckBox);
                        Label lblstatus = (row.Cells[0].FindControl("lblinq") as Label);

                        if (chkrow.Checked)
                        {
                            Count++;
                            bal.Inquiry_Transfer_BAL(id, Convert.ToInt32(lblstatus.Text));
                        }

                    }
                }
                if (Count == 0)
                {
                    ShowMessage("No Inquiry Was Selected", MessageType.Error);
                }
                else
                {
                    ShowMessage("Inquiry Transfer Successfully!!", MessageType.Success);
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
}