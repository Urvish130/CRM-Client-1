using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Text;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;

public partial class Forgotpassword : System.Web.UI.Page
{
    int r = 0;
    public enum MessageType { Success, Error, Info, Warning };
    DataTable dt = new DataTable();
    BusinessLogicLayer bll = new BusinessLogicLayer();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
               
                
                    tempotp.Text = "";
               
               

            }
            catch (Exception ex)
            {

            }
        }
    }
  
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }

    protected void generateotp_Click(object sender, EventArgs e)
    {
        DataTable dt1 = new DataTable();
        



        dt1 = bll.checkloginemail(txtuname.Text);
        if (dt1.Rows.Count == 0)
        {
            ShowMessage("Invaid User-Id", MessageType.Error);
        }
        else
        {
            uid.Visible = false;
            otp.Visible = true;
            Random generator = new Random();
            int r = generator.Next(100000, 1000000);
            tempotp.Text = r.ToString();
            temploginid.Text = dt1.Rows[0]["Eemailid"].ToString();
            string to = dt1.Rows[0]["Eemailid"].ToString(); //To address    
            string from = "aykka.service@gmail.com";
            MailMessage message = new MailMessage(from, to);
            string str = "Your One Time Password Is: <b>" + r +"</b>";
            message.Body = str;
            message.Subject = "OTP for Reset Password";
            message.IsBodyHtml = true;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            client.UseDefaultCredentials = false;
            System.Net.NetworkCredential basicCredential1 = new
            //("webmail.tarainstruments.com", 587)("smtp.gmail.com", 587)

            System.Net.NetworkCredential("aykka.service@gmail.com", "Aykka@2021");
            client.EnableSsl = true;
            ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };

            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                ShowMessage("OTP sent to Registered E-Mail", MessageType.Success);
                otp.Visible = true;
            }

            catch (Exception ex)
            {
                ShowMessage("No Authenticated Mail Found", MessageType.Error);
            }
        }
    }

    protected void Verify_Click(object sender, EventArgs e)
    {
        if (tempotp.Text != txtotp.Text)
        {
            ShowMessage("Invalid OTP", MessageType.Error);
            
        }
        else
        {
            tempotp.Text = "";
            uid.Visible = false;
            otp.Visible = false;
            Resetpassword.Visible = true;

        }

    }

    protected void btnResetpassword_Click(object sender, EventArgs e)
    {
        if(txtconfirmpass.Text != txtpassword.Text)
        {
            ShowMessage("Password did not matched", MessageType.Error);
        }
        else
        {
            bll.UpdatePasswordBAL(temploginid.Text, txtconfirmpass.Text);
            ShowMessage("Password Reset Successful", MessageType.Success);
            Response.Redirect("login.aspx");
        }
    }

    protected void btnredirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}