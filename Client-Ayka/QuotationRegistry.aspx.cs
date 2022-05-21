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
using System.Text.RegularExpressions;

public partial class QuotationRegistry : System.Web.UI.Page
{
  
    DataAccessLayer dal = new DataAccessLayer();
    BusinessLogicLayer bal = new BusinessLogicLayer();
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
                dt = bal.CheckUserRightsBAL(lblloginid.Text, "QuotationMaster");
                dt2 = bal.CheckUserRightsBAL(lblloginid.Text, "OrderMaster");
                Create = dt.Rows[0]["CreateStatus"].ToString();
                Edit = dt.Rows[0]["EditStatus"].ToString();
                View = dt.Rows[0]["ViewStatus"].ToString();
                Delete = dt.Rows[0]["DeleteStatus"].ToString();
                Email = dt.Rows[0]["EmailStatus"].ToString();
                Print = dt.Rows[0]["PrintStatus"].ToString();
                ConvertData = dt2.Rows[0]["CreateStatus"].ToString();
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
                
            }

        }
    }
    protected void btncreate_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("QuotationEntry.aspx", false);
        }
        catch (Exception ex)
        {

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
    public void bindDetail()
    {

        try
        {
            List<QuotationModel> InqList = new List<QuotationModel>();

            if (lblrole.Text.Equals("SuperAdmin"))
            {

                dt = bal.getallQuotationdataforadminBAL();
            }
            else
            {

                dt = bal.getallQuotationdataforEmployeeBAL(lblloginid.Text);
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                QuotationModel inq = new QuotationModel();

                inq.Noseries = dt.Rows[i]["Noseries"].ToString();
                inq.QuotationNo = dt.Rows[i]["QuotationNo"].ToString();
                inq.QuotationDate = dt.Rows[i]["QuotationDate"].ToString();
                inq.Name = dt.Rows[i]["Name"].ToString();
                inq.ContactEmail = dt.Rows[i]["ContactEmail"].ToString();
                inq.ContactMno1 = dt.Rows[i]["ContactMno1"].ToString();
                inq.Source = dt.Rows[i]["Source"].ToString();
                inq.Status = dt.Rows[i]["Status"].ToString();
                inq.ContactName= dt.Rows[i]["ContactName"].ToString();
                inq.CreateBy = dt.Rows[i]["CreateBy"].ToString();
                DateTime CreateFollow = Convert.ToDateTime(dt.Rows[i]["CreateDatetime"].ToString());
                DateTime Today = DateTime.UtcNow;
                TimeSpan t = Today.Subtract(CreateFollow);
                inq.Diff = t.Days.ToString();
                DataTable dtcontact = bal.getquotFollowupdatabal(Convert.ToInt32(inq.Noseries));

                if (dtcontact.Rows.Count > 0)
                {

                    for (int j = 0; j < dtcontact.Rows.Count; j++)
                    {

                        DateTime NextFollow = Convert.ToDateTime(dtcontact.Rows[j]["Expr1"].ToString());
                       
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
            List<QuotationModel> InqList = new List<QuotationModel>();
            DataTable dt = dal.getallquotationfilter(dpcust.SelectedValue.ToString(), txtfdate.Text, txttdate.Text,ddlemployee.SelectedValue);


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                QuotationModel inq = new QuotationModel();

                inq.Noseries = dt.Rows[i]["Noseries"].ToString();
                inq.QuotationNo = dt.Rows[i]["QuotationNo"].ToString();
                inq.QuotationDate = dt.Rows[i]["QuotationDate"].ToString();
                inq.Name = dt.Rows[i]["Name"].ToString();
                inq.ContactEmail = dt.Rows[i]["ContactEmail"].ToString();
                inq.ContactMno1 = dt.Rows[i]["ContactMno1"].ToString();
                inq.Source = dt.Rows[i]["Source"].ToString();
                inq.Status = dt.Rows[i]["Status"].ToString();
                inq.ContactName = dt.Rows[i]["ContactName"].ToString();
                inq.CreateBy = dt.Rows[i]["CreateBy"].ToString();
                DateTime CreateFollow = Convert.ToDateTime(dt.Rows[i]["CreateDatetime"].ToString());
                DateTime Today = DateTime.UtcNow;
                TimeSpan t = Today.Subtract(CreateFollow);
                inq.Diff = t.Days.ToString();
                DataTable dtcontact = bal.getquotFollowupdatabal(Convert.ToInt32(inq.Noseries));

                if (dtcontact.Rows.Count > 0)
                {

                    for (int j = 0; j < dtcontact.Rows.Count; j++)
                    {

                        DateTime NextFollow = Convert.ToDateTime(dtcontact.Rows[j]["Expr1"].ToString());

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
                grddata.UseAccessibleHeader = true;
                grddata.HeaderRow.TableSection = TableRowSection.TableHeader;
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
                Response.Redirect(String.Format("UpdateQuotation.aspx?no={0}", lblid.Text), false);
            }
            else if(e.CommandName == "revisedata")
                {
                Response.Redirect(String.Format("RevisedQuotation.aspx?no={0}", lblid.Text), false);
            }
            else if (e.CommandName == "wondata")
            {
                Response.Redirect(String.Format("OrderEntry.aspx?quoteno={0}", lblid.Text), false);
            }
            else if(e.CommandName == "lossdata")
            {
                
                
                    Response.Redirect(String.Format("OrderRegistry.aspx?no={0}", lblid.Text), false);
                
            }
            else if (e.CommandName == "printdata")
            {


                Response.Redirect(String.Format("QuotationReport.aspx?Id={0}", lblid.Text), false);

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
            DataTable dt = new DataTable();
            grddata.Columns[1].Visible = false;
            grddata.Columns[2].Visible = false;
            grddata.Columns[3].Visible = false;
            grddata.Columns[15].Visible = false;
            grddata.Columns[16].Visible = false;

            dt.Rows.Add(new DataColumn((grddata.Columns[0].ToString()), typeof(string)));
            Response.Clear();
            Response.Buffer = true;
            
            Response.AddHeader("content-disposition",
             "attachment;filename=QuotationRegister.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            grddata.AllowPaging = false;
            grddata.DataBind();

            //Change the Header Row back to white color
            grddata.HeaderRow.Style.Add("background-color", "#FFFFFF");

            //Apply style to Individual Cells
            
            grddata.HeaderRow.Cells[3].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[4].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[5].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[6].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[7].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[8].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[9].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[10].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[11].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[12].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[13].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[14].Style.Add("background-color", "green");

            //grdVisit.HeaderRow.Cells[17].Style.Add("background-color", "green");
            for (int i = 0; i < grddata.Rows.Count; i++)
            {
                GridViewRow row = grddata.Rows[i];
                //Change Color back to white
                row.BackColor = System.Drawing.Color.White;
                //Apply text style to each Row
                row.Attributes.Add("class", "textmode");
                //Apply style to Individual Cells of Alternating Row
                if (i % 2 != 0)
                {
                    row.Cells[3].Style.Add("background-color", "#C2D69B");
                    row.Cells[4].Style.Add("background-color", "#C2D69B");
                    row.Cells[5].Style.Add("background-color", "#C2D69B");
                    row.Cells[6].Style.Add("background-color", "#C2D69B");
                    row.Cells[7].Style.Add("background-color", "#C2D69B");
                    row.Cells[8].Style.Add("background-color", "#C2D69B");
                    row.Cells[9].Style.Add("background-color", "#C2D69B");
                    row.Cells[10].Style.Add("background-color", "#C2D69B");
                    row.Cells[11].Style.Add("background-color", "#C2D69B");
                    row.Cells[12].Style.Add("background-color", "#C2D69B");
                    row.Cells[13].Style.Add("background-color", "#C2D69B");
                    row.Cells[14].Style.Add("background-color", "#C2D69B");
                }
            }
            grddata.RenderControl(hw);
            //style to format numbers to string
            string test = hw.InnerWriter.ToString();
            string remove = @"<img alt='' style='cursor: pointer' src='images/plus.png' />";
                 string html2 = test.Replace(remove,"");
           
            html2 = @"<style> .textmode { mso-number-format:\@; } </style>";


            string test1 = sw.ToString();
            string remove1 = @"<img alt='' style='cursor: pointer' src='images/plus.png' />";
            string html3 = test.Replace(remove1, "");



            Response.Write(html2);
            Response.ContentType = "Application/vnd.ms-excel";
            Response.Output.Write(html3.ToString());
            Response.BufferOutput = true;
            Response.Flush();
            Response.End();
            Response.Close();
        }
        catch (ThreadAbortException ex)
        {

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
            grddata.Columns[1].Visible = false;
            grddata.Columns[2].Visible = false;
            grddata.Columns[3].Visible = false;
            grddata.Columns[15].Visible = false;
            grddata.Columns[16].Visible = false;
            

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=InquiryRegister.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            grddata.AllowPaging = false;
            grddata.DataBind();
            grddata.HeaderRow.Style.Add("background-color", "#FFFFFF");

            //Apply style to Individual Cells
            grddata.Columns[0].ItemStyle.Width =Unit.Pixel(100);
            grddata.HeaderRow.Cells[3].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[4].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[5].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[6].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[7].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[8].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[9].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[10].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[11].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[12].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[13].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[14].Style.Add("background-color", "green");
            
            //grdVisit.HeaderRow.Cells[17].Style.Add("background-color", "green");
            for (int i = 0; i < grddata.Rows.Count; i++)
            {
                GridViewRow row = grddata.Rows[i];
                //Change Color back to white
                row.BackColor = System.Drawing.Color.White;
                //Apply text style to each Row
                row.Attributes.Add("class", "textmode");
                //Apply style to Individual Cells of Alternating Row
                if (i % 2 != 0)
                {
                    row.Cells[3].Style.Add("background-color", "#C2D69B");
                    row.Cells[4].Style.Add("background-color", "#C2D69B");
                    row.Cells[5].Style.Add("background-color", "#C2D69B");
                    row.Cells[6].Style.Add("background-color", "#C2D69B");
                    row.Cells[7].Style.Add("background-color", "#C2D69B");
                    row.Cells[8].Style.Add("background-color", "#C2D69B");
                    row.Cells[9].Style.Add("background-color", "#C2D69B");
                    row.Cells[10].Style.Add("background-color", "#C2D69B");
                    row.Cells[11].Style.Add("background-color", "#C2D69B");
                    row.Cells[12].Style.Add("background-color", "#C2D69B");
                    row.Cells[13].Style.Add("background-color", "#C2D69B");
                    row.Cells[14].Style.Add("background-color", "#C2D69B");
                }
            }
            grddata.RenderControl(hw);
            string test1 = sw.ToString();
            string remove1 = @"<img alt='' style='cursor: pointer' src='images/plus.png' />";
            string html3 = test1.Replace(remove1, "");
            StringReader sr = new StringReader(html3.ToString());
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

            grddata.Columns[1].Visible = false;
            grddata.Columns[2].Visible = false;
            grddata.Columns[3].Visible = false;
            grddata.Columns[15].Visible = false;
            grddata.Columns[16].Visible = false;
            Response.Clear();
            Response.Buffer = true;

            Response.AddHeader("content-disposition",
             "attachment;filename=QuotationRegister.doc");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-word";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            grddata.AllowPaging = false;
            grddata.DataBind();

            //Change the Header Row back to white color
            grddata.HeaderRow.Style.Add("background-color", "#FFFFFF");

            //Apply style to Individual Cells

            grddata.HeaderRow.Cells[3].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[4].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[5].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[6].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[7].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[8].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[9].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[10].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[11].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[12].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[13].Style.Add("background-color", "green");
            grddata.HeaderRow.Cells[14].Style.Add("background-color", "green");

            //grdVisit.HeaderRow.Cells[17].Style.Add("background-color", "green");
            for (int i = 0; i < grddata.Rows.Count; i++)
            {
                GridViewRow row = grddata.Rows[i];
                //Change Color back to white
                row.BackColor = System.Drawing.Color.White;
                //Apply text style to each Row
                row.Attributes.Add("class", "textmode");
                //Apply style to Individual Cells of Alternating Row
                if (i % 2 != 0)
                {
                    row.Cells[3].Style.Add("background-color", "#C2D69B");
                    row.Cells[4].Style.Add("background-color", "#C2D69B");
                    row.Cells[5].Style.Add("background-color", "#C2D69B");
                    row.Cells[6].Style.Add("background-color", "#C2D69B");
                    row.Cells[7].Style.Add("background-color", "#C2D69B");
                    row.Cells[8].Style.Add("background-color", "#C2D69B");
                    row.Cells[9].Style.Add("background-color", "#C2D69B");
                    row.Cells[10].Style.Add("background-color", "#C2D69B");
                    row.Cells[11].Style.Add("background-color", "#C2D69B");
                    row.Cells[12].Style.Add("background-color", "#C2D69B");
                    row.Cells[13].Style.Add("background-color", "#C2D69B");
                    row.Cells[14].Style.Add("background-color", "#C2D69B");
                }
            }
            grddata.RenderControl(hw);
            //style to format numbers to string
            string test = hw.InnerWriter.ToString();
            string remove = @"<img alt='' style='cursor: pointer' src='images/plus.png' />";
            string html2 = test.Replace(remove, "");

            html2 = @"<style> .textmode { mso-number-format:\@; } </style>";


            string test1 = sw.ToString();
            string remove1 = @"<img alt='' style='cursor: pointer' src='images/plus.png' />";
            string html3 = test.Replace(remove1, "");



            Response.Write(html2);
            Response.ContentType = "Application/vnd.ms-word";
            Response.Output.Write(html3.ToString());
            Response.BufferOutput = true;
            Response.Flush();
            Response.End();
            Response.Close();
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
            grddata.Columns[1].Visible = false;
        }
        if (Print == "false")
        {
            grddata.Columns[3].Visible = false;
        }
        if (ConvertData == "false")
        {
            grddata.Columns[15].Visible = false;
            grddata.Columns[16].Visible = false;
        }
        
    }

    protected void grddata_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {


            string customerId = grddata.DataKeys[e.Row.RowIndex].Value.ToString();
            //string custorId = e.Row.DataItem.ToString();
            DataTable dt = new DataTable();
            dt = bal.getquotationDetailsdataBAL(Convert.ToInt32(customerId)); 
            GridView BOMGrid = e.Row.FindControl("BOMGrid") as GridView;
            BOMGrid.DataSource = dt;
            BOMGrid.DataBind();


            Label Difference = (Label)e.Row.FindControl("lblDiff");
            Label lblCreate = (Label)e.Row.FindControl("lblCreate");
            ImageButton btnedit = (ImageButton)e.Row.FindControl("btnedit");
            ImageButton btnwon = (ImageButton)e.Row.FindControl("btnwon");
            ImageButton btnloss = (ImageButton)e.Row.FindControl("btnloss");

            if (Convert.ToInt32(Difference.Text) < 90 && lblCreate.Text != lblloginid.Text)
            {
                btnedit.Visible = false;
                btnwon.Visible = false;
                btnloss.Visible = false;
            }



        }
    }
}