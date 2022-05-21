using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuotationReport : System.Web.UI.Page
{
    BusinessLogicLayer bal = new BusinessLogicLayer();
    Getconnection c = new Getconnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["Id"] != null)
            {
                bindreport();
            }
            else
            {
                bindempty();
            }
        }
    }

    public void bindreport()
    {
        try
        {
            DataTable dt1 = new DataTable();
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand("QuotationByQuotNo", c.getconnection());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Request.QueryString["Id"].ToString();
            dt1.Load(cmd.ExecuteReader());

            DataTable dt2 = new DataTable();
            SqlCommand cmd1 = new SqlCommand();
            cmd1 = new SqlCommand("getallCustomerdatabynoForreport", c.getconnection());
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@No", SqlDbType.VarChar).Value = Request.QueryString["Id"].ToString();
            dt2.Load(cmd1.ExecuteReader());

            DataTable dt3 = new DataTable();
            SqlCommand cmd3 = new SqlCommand();
            cmd3 = new SqlCommand("GetCoverLatterData", c.getconnection());
            cmd3.CommandType = CommandType.StoredProcedure;
            cmd3.Parameters.Add("@QuotationNo", SqlDbType.VarChar).Value = Request.QueryString["Id"].ToString();
            dt3.Load(cmd3.ExecuteReader());

            DataTable dt4 = new DataTable();
            SqlCommand cmd4 = new SqlCommand();
            cmd4 = new SqlCommand("quotationtermsandconditionsdisp", c.getconnection());
            cmd4.CommandType = CommandType.StoredProcedure;
            cmd4.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Request.QueryString["Id"].ToString();
            dt4.Load(cmd4.ExecuteReader());

            DataTable dt5 = new DataTable();
            SqlCommand cmd5 = new SqlCommand();
            cmd5 = new SqlCommand("getquotationetailsdata", c.getconnection());
            cmd5.CommandType = CommandType.StoredProcedure;
            cmd5.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Request.QueryString["Id"].ToString();
            dt5.Load(cmd5.ExecuteReader());

            if (dt1.Rows.Count > 0)
            {
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt1));
                ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt2));
                ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet3", dt3));
                ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet4", dt4));
                ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet5", dt5));
                ReportViewer1.LocalReport.ReportPath = HttpContext.Current.Server.MapPath("Report/QuotationReport.rdlc");
                ReportViewer1.LocalReport.Refresh();
                ReportViewer1.Visible = true;
            }
            else
            {
                ReportViewer1.Visible = false;
            }
        }
        catch (Exception ex)
        {

        }
    }

    public void bindempty()
    {
        try
        {


            ReportViewer1.LocalReport.ReportPath = HttpContext.Current.Server.MapPath("Report/InvoiceReport.rdlc");
            ReportViewer1.LocalReport.Refresh();
            ReportViewer1.Visible = true;
        }
        catch (Exception ex)
        {

        }
    }
    protected void btnsendmail_Click(object sender, EventArgs e)
    {
        string FileName = "File_" + DateTime.Now.ToString("ddMMyyyyhhmmss") + ".pdf";
        string extension;
        string encoding;
        string mimeType;
        string[] streams;
        Warning[] warnings;
        string contentType = "application/pdf";
        Byte[] mybytes = ReportViewer1.LocalReport.Render("PDF", null,
                        out extension, out encoding,
                        out mimeType, out streams, out warnings); //for exporting to PDF  
        using (FileStream fs = File.Create(Server.MapPath("~/Report/") + FileName))
        {
            fs.Write(mybytes, 0, mybytes.Length);
        }
        try
        {
            DataTable dt = new DataTable();
            
            string from = "aykka.service@gmail.com"; //From address     
            string BulkURL = "smtp.gmail.com";
            MailMessage mail = new MailMessage();
            SmtpClient smtp = new SmtpClient();
            mail.From = new MailAddress(from, "Aykka Technovision");
            string cust = txtmail.Text;
            //mail.To.Add(new MailAddress("aaku898shah@gmail.com"));
            string[] Custm = cust.Split(',');
            foreach (string custmr in Custm)
            {
                mail.To.Add(new MailAddress(custmr));
            }
            //mail.Bcc.Add("mikir281989@gmail.com");
            mail.Subject = "Quotation";
            mail.Body = "This is Computer Generated Quotation";
            MemoryStream memoryStream = new MemoryStream(mybytes);
            memoryStream.Seek(0, SeekOrigin.Begin);
            Attachment attachment = new Attachment(memoryStream, "~/Reports/" + FileName);
            mail.Attachments.Add(attachment);
            mail.IsBodyHtml = true;
            smtp.Port = 587;
            smtp.Host = BulkURL; //for gmail host  
            smtp.EnableSsl = true;
            ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("aykka.service@gmail.com", "Aykka@2021");
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            mail.Subject = "Quotation";
            smtp.Send(mail);
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Mail Sent on  " + "" + cust + "');", true);
        }
        catch (Exception ex)
        {

        }
    }
    protected void btnExport_Click(object sender, EventArgs e)
    {
        mpmail.Show();
    }
    protected void lbtncancel_Click(object sender, EventArgs e)
    {
        mpmail.Hide();
    }
}