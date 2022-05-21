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

public partial class OrderRegistry : System.Web.UI.Page
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
                btncreate.Visible = false;
                bindDetail();
                bindcustomer();
                string zoneId = "India Standard Time";
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
                DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
                string date = now.Day.ToString();
                string month = now.Month.ToString();
                string year = now.Year.ToString();
                if (Convert.ToInt32(date) < 10)
                {

                    date = "0" + date;
                }
                if (Convert.ToInt32(month) < 10)
                {

                    month = "0" + month;
                }
                string fdate = date + "/" + month + "/" + year;

                txtfdate.Text = fdate;
                txttdate.Text = fdate;
                bindEmployee();
                dt = bal.CheckUserRightsBAL(lblloginid.Text, "OrderMaster");
                Create = dt.Rows[0]["CreateStatus"].ToString();
                Edit = dt.Rows[0]["EditStatus"].ToString();
                View = dt.Rows[0]["ViewStatus"].ToString();
                Delete = dt.Rows[0]["DeleteStatus"].ToString();
                Email = dt.Rows[0]["EmailStatus"].ToString();
                Print = dt.Rows[0]["PrintStatus"].ToString();
                
            }

        }
    }

    public void bindEmployee()
    {
        try
        {
            if (Create == "false")
            {
                btncreate.Visible = false;
            }
            DataTable dtbtype = new DataTable();
            dtbtype = bal.GetRepotedEmpBAL(lblloginid.Text, lblrole.Text);
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
    protected void btncreate_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("OrderEntry.aspx", false);
        }
        catch (Exception ex)
        {

        }

    }
    public void bindDetail()
    {

        try
        {

            if (lblrole.Text.Equals("SuperAdmin"))
            {
                dt = bal.getallOrderdataforadminBAL();
            }
            else
            {

                dt = bal.getallOrderdataforEmpBAL(lblloginid.Text);
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
    public void bindcustomer()
    {
        try
        {
            DataTable dtbtype = new DataTable();
            dtbtype = bal.getallCustomerMasterataforadminBAL();
            if (dtbtype.Rows.Count > 0)
            {
                dpcust.DataSource = dtbtype;
                dpcust.DataTextField = "Name";
                dpcust.DataValueField = "No";
                dpcust.DataBind();
            }
            dpcust.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----Select Customer----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void btnfilter_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = dal.getallorderfilter(dpcust.SelectedValue.ToString(), txtfdate.Text, txttdate.Text,ddlemployee.SelectedValue);


            if (dt.Rows.Count > 0)
            {
                grddata.DataSource = dt;
                grddata.DataBind();
            }
            else
            {
                grddata.DataSource = dt;
                grddata.DataBind();
            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        try
        {
            string zoneId = "India Standard Time";
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
            DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
            string date = now.Day.ToString();
            string month = now.Month.ToString();
            string year = now.Year.ToString();
            if (Convert.ToInt32(date) < 10)
            {

                date = "0" + date;
            }
            if (Convert.ToInt32(month) < 10)
            {

                month = "0" + month;
            }
            string fdate = date + "/" + month + "/" + year;

            txtfdate.Text = fdate;
            txttdate.Text = fdate;
            dpcust.ClearSelection();
            txtfdate.Focus();
            bindDetail();
            txttdate.Text = "";
        }
        catch (Exception ex)
        {

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
                Response.Redirect(String.Format("UpdateOrder.aspx?no={0}", lblid.Text), false);
            }
            else if (e.CommandName == "printdata")
            {


                Response.Redirect(String.Format("InvoiceReport.aspx?Id={0}", lblid.Text), false);

            }

        }
        catch (Exception ex)
        {

        }
    }
    protected void btnExportExcel_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            bindDetail();
            grddata.Columns[0].Visible = false;
            grddata.Columns[1].Visible = false;
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "OrderRegister.xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            grddata.GridLines = GridLines.Both;
            grddata.HeaderStyle.Font.Bold = true;
            grddata.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
            // Response.Clear();
            // Response.Buffer = true;

            // Response.AddHeader("content-disposition",
            //  "attachment;filename=OrderRegister.xls");
            // Response.Charset = "";
            // Response.ContentType = "application/vnd.ms-excel";
            // StringWriter sw = new StringWriter();
            // HtmlTextWriter hw = new HtmlTextWriter(sw);

            // grddata.AllowPaging = false;
            // grddata.DataBind();

            // //Change the Header Row back to white color
            // grddata.HeaderRow.Style.Add("background-color", "#FFFFFF");

            // //Apply style to Individual Cells
            // grddata.HeaderRow.Cells[2].Style.Add("background-color", "green");
            // grddata.HeaderRow.Cells[3].Style.Add("background-color", "green");
            // grddata.HeaderRow.Cells[4].Style.Add("background-color", "green");
            // grddata.HeaderRow.Cells[5].Style.Add("background-color", "green");
            // grddata.HeaderRow.Cells[6].Style.Add("background-color", "green");
            // grddata.HeaderRow.Cells[7].Style.Add("background-color", "green");
            // grddata.HeaderRow.Cells[8].Style.Add("background-color", "green");
            //// grddata.HeaderRow.Cells[9].Style.Add("background-color", "green");
            // //grdVisit.HeaderRow.Cells[17].Style.Add("background-color", "green");
            // for (int i = 0; i < grddata.Rows.Count; i++)
            // {
            //     GridViewRow row = grddata.Rows[i];
            //     //Change Color back to white
            //     row.BackColor = System.Drawing.Color.White;
            //     //Apply text style to each Row
            //     row.Attributes.Add("class", "textmode");
            //     //Apply style to Individual Cells of Alternating Row
            //     if (i % 2 != 0)
            //     {
            //         row.Cells[2].Style.Add("background-color", "#C2D69B");
            //         row.Cells[3].Style.Add("background-color", "#C2D69B");
            //         row.Cells[4].Style.Add("background-color", "#C2D69B");
            //         row.Cells[5].Style.Add("background-color", "#C2D69B");
            //         row.Cells[6].Style.Add("background-color", "#C2D69B");
            //         row.Cells[7].Style.Add("background-color", "#C2D69B");
            //         row.Cells[8].Style.Add("background-color", "#C2D69B");
            //         row.Cells[9].Style.Add("background-color", "#C2D69B");
            //     }
            // }
            // grddata.RenderControl(hw);
            // //style to format numbers to string
            // string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            // Response.Write(style);
            // Response.Output.Write(sw.ToString());
            // Response.Flush();
            // Response.End();
        }
        catch (Exception ex)
        {

        }
    }

    protected void btnExportPDF_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            bindDetail();
            grddata.Columns[0].Visible = false;
            grddata.Columns[1].Visible = false;
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderRegister.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            grddata.AllowPaging = false;
            grddata.DataBind();
            grddata.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4.Rotate(), 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        catch (Exception ex)
        { }
    }

    protected void btnExportWord_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            bindDetail();
            grddata.Columns[0].Visible = false;
            grddata.Columns[1].Visible = false;
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=OrderRegister.doc");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-word ";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            grddata.AllowPaging = false;
            grddata.DataBind();
            grddata.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
        catch (Exception ex)
        {

        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }


    protected void grddata_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (Edit == "false")
        {
            grddata.Columns[0].Visible = false;
        }
        if (Print == "false")
        {
            grddata.Columns[1].Visible = false;
        }
    }
}