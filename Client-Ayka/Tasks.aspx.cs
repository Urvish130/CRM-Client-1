using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tasks : System.Web.UI.Page
{
    BusinessLogicLayer bal = new BusinessLogicLayer();
    public enum MessageType { Success, Error, Info, Warning };
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("login.aspx", false);
                }
                else
                {
                    string zoneId = "India Standard Time";
                    TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
                    DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
                    // txtfdate.Text = now.ToString("dd/MM/yyyy");
                    lblloginid.Text = Session["id"].ToString();
                    lblrole.Text = Session["role"].ToString();

                    if (Request.QueryString["no"] != null)
                    {
                        lblcomno.Text = Request.QueryString["no"].ToString();
                        bindassignto();
                        bindstatus();
                        FillData();
                        BindDocument();
                        btnsave.Visible = false;
                        btnUpdate.Visible = true;
                    }
                   else if (Request.QueryString["Emp"] != null && Request.QueryString["nos"] != null)
                    {
                        lblemp.Text = Request.QueryString["Emp"].ToString();
                        lblcomno.Text = Request.QueryString["nos"].ToString();
                        bindassignto();
                        bindstatus();
                        FillEmpData();
                        btnsave.Visible = false;
                        btnUpdate.Visible = false;
                        btnEmp.Visible = true;
                        ddlassignto.Enabled = false;
                        BindDocument();
                    }

                    else if (Request.QueryString["EmpID"] != null && Request.QueryString["noseries"] != null)
                    {
                        lblemp.Text = Request.QueryString["EmpID"].ToString();
                        lblcomno.Text = Request.QueryString["noseries"].ToString();
                        bindassignto();
                        bindstatus();
                        FillEmpData();
                        btnsave.Visible = false;
                        btnUpdate.Visible = false;
                        btnEmp.Visible = true;
                        ddlassignto.Enabled = false;
                        abstatus.Enabled = false;
                        txttaskdate.ReadOnly = true;
                        txtduedate.ReadOnly = true;
                        BindDocument();
                    }
                    else
                    {
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

                      
                        txtDate.Text = fdate;
                        bindassignto();
                        bindstatus();
                        getmaxcomno();
                        getInquiryNo();
                       

                    }


                }
            }
            catch (Exception ex)
            {

            }




        }


    }

   
    public void bindassignto()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getallemployenameforadminBAL();
            if (dtbtype.Rows.Count > 0)
            {
                ddlassignto.DataSource = dtbtype;
                ddlassignto.DataTextField = "Ename";
                ddlassignto.DataValueField = "Id";
                ddlassignto.DataBind();
            }
            ddlassignto.Items.Insert(0, new ListItem("----Select Employe Name----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void bindstatus()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getallstatusfroadminBAL();
            if (dtbtype.Rows.Count > 0)
            {
                abstatus.DataSource = dtbtype;
                abstatus.DataTextField = "Status";
                abstatus.DataValueField = "Id";
                abstatus.DataBind();


                atstatus.DataSource = dtbtype;
                atstatus.DataTextField = "Status";
                atstatus.DataValueField = "Id";
                atstatus.DataBind();
            }
            abstatus.Items.Insert(0, new ListItem("----Select Status----", "0"));
            atstatus.Items.Insert(0, new ListItem("----Select Status----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }


    public string getmaxcomno()
    {
        string s = string.Empty, id = string.Empty;
        Getconnection c = new Getconnection();
        try
        {
            string s1 = "select Top (1) No from tbl_Task_No_Series    order By  Id DESC";
            SqlCommand cmd11 = new SqlCommand(s1, c.getconnection());
            if (cmd11.ExecuteScalar() != null)
                id = cmd11.ExecuteScalar().ToString();
            c.CloseConnection();
            int fid = 0;
            if (id.Equals(""))
            {
                id = "1";
                fid = Convert.ToInt32(id);
            }
            else
            {
                fid = Convert.ToInt32(id);
                fid = fid + 1;
            }
            s = fid.ToString();
            lblcomno.Text = s.ToString();
            //hfMaxEntryNo.Value = fid.ToString();
            bal.tbl_Task_No_Series_InsertBAL(s, "", "");
        }
        catch (Exception ex)
        {

            //txtinqno.Text = "1";
        }
        finally
        {
            c.CloseConnection();
        }
        return s;
    }
    public string getInquiryNo()
    {
        string s = string.Empty, id = string.Empty;
        Getconnection c = new Getconnection();
        try
        {
            string s1 = "select Top (1) TaskNo from tbl_Task_Master    order By  Id DESC";
            SqlCommand cmd11 = new SqlCommand(s1, c.getconnection());
            if (cmd11.ExecuteScalar() != null)
                id = cmd11.ExecuteScalar().ToString();
            c.CloseConnection();
            int fid = 0;
            if (id.Equals(""))
            {
                id = "1";
                fid = Convert.ToInt32(id);
            }
            else
            {
                fid = Convert.ToInt32(id);
                fid = fid + 1;
            }
            s = fid.ToString();
            txtNo.Text = s.ToString();
            //hfMaxEntryNo.Value = fid.ToString();

        }
        catch (Exception ex)
        {

            txtNo.Text = "1";
        }
        finally
        {
            c.CloseConnection();
        }
        return s;
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            
            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
        
           
            foreach (ListItem div in ddlassignto.Items)
            {
                if (div.Selected==true)
                {
                    string Emp = div.Value;
                    bal.tbl_Task_Master_InsertBAL(Convert.ToInt32(txtNo.Text), Convert.ToInt32(lblcomno.Text), txtDate.Text, txttaskdate.Text, txtduedate.Text, Convert.ToInt32(Emp), Convert.ToInt32(abstatus.SelectedValue.ToString()), Convert.ToInt32(atstatus.SelectedValue.ToString()), txtWkDetails.Text, lblloginid.Text, localTime, "", "", "", "", "");
                }
            }

            
            Response.Redirect("TaskRegister.aspx", false);
        }
        catch(Exception ex)
        {

        }
       
    }

    public void FillData()
    {
        try
        {
            DataTable dtdata = bal.GetAllTaskDataBynoBAL(lblcomno.Text);
            if (dtdata.Rows.Count > 0)
            {
                txtNo.Text = dtdata.Rows[0]["TaskNo"].ToString();
                txtDate.Text = dtdata.Rows[0]["TaskCreatedDate"].ToString();
                txttaskdate.Text = dtdata.Rows[0]["TaskDate"].ToString();
                txtduedate.Text = dtdata.Rows[0]["DueDate"].ToString();               
                abstatus.SelectedValue = dtdata.Rows[0]["ABStatus"].ToString();
                atstatus.SelectedValue = dtdata.Rows[0]["ATStatus"].ToString();
                txtWkDetails.Text = dtdata.Rows[0]["TaskDetails"].ToString();
                ddlassignto.ClearSelection();
                for(int i=0;i< dtdata.Rows.Count; i++)
                {
                   string Emp= dtdata.Rows[i]["EmployeeID"].ToString();
                    ddlassignto.Items.FindByValue(Emp).Selected = true;
                }
                abstatus.Enabled = false;
                atstatus.Enabled = false;

            }
        }
        catch (Exception ex)
        {

        }
    }

    public void FillEmpData()
    {
        try
        {
            DataTable dtdata = bal.GetTaskByEmpBAL(lblcomno.Text,lblemp.Text);
            if (dtdata.Rows.Count > 0)
            {
                txtNo.Text = dtdata.Rows[0]["TaskNo"].ToString();
                txtDate.Text = dtdata.Rows[0]["TaskCreatedDate"].ToString();
                txttaskdate.Text = dtdata.Rows[0]["TaskDate"].ToString();
                txtduedate.Text = dtdata.Rows[0]["DueDate"].ToString();
                abstatus.SelectedValue = dtdata.Rows[0]["ABStatus"].ToString();
                atstatus.SelectedValue = dtdata.Rows[0]["ATStatus"].ToString();
                txtWkDetails.Text = dtdata.Rows[0]["TaskDetails"].ToString();
                ddlassignto.SelectedValue= dtdata.Rows[0]["EmployeeID"].ToString();
                txtemp.Text = ddlassignto.SelectedItem.Text;
                ddlassignto.Visible = false;
                txtemp.Visible = true;
            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {

            if (fileAttach.HasFile)
            {
                string randomfilename = RandomString(10);

                string fileName = Path.GetFileName(fileAttach.FileName);
                string extention = Path.GetExtension(fileAttach.FileName);
               
                string filepath = "~/TaskDocument/" + randomfilename + extention;
                //File.WriteAllBytes(filepath, imageBytes);
                fileAttach.SaveAs(Server.MapPath("~/TaskDocument/") + randomfilename + extention);

                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

                bal.tbl_Task_Document_InsertBAL(lblcomno.Text, "", randomfilename + extention, filepath, lblloginid.Text, localTime, txtDescrip.Text, "", "", "", "");
                txtDescrip.Text = "";
                BindDocument();
            }
            else
            {
                ShowMessage("Please Select Document!!!", MessageType.Error);
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
    protected void BindDocument()
    {
        try
        {
            DataTable dtdata = bal.GetTaskDocumentbyno(lblcomno.Text);
            grdDoc.DataSource = dtdata;
            grdDoc.DataBind();
            grdDoc.UseAccessibleHeader = true;
            grdDoc.HeaderRow.TableSection = TableRowSection.TableHeader;

        }
        catch (Exception ex)
        {
            
        }

    }
    public static Random random = new Random();
    public static string RandomString(int length)
    {
        const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        return new string(Enumerable.Repeat(chars, length)
            .Select(s => s[random.Next(s.Length)]).ToArray());
    }

    protected void grdDoc_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/TaskDocument/") + e.CommandArgument);
            ShowMessage("Attachment Sucessfully Downloaded !!!", MessageType.Success);
            Response.End();

        }
        else if (e.CommandName == "deletedata")
        {

            string result = bal.DeleteTaskdatabyidBAL(e.CommandArgument.ToString());

            ShowMessage("Record Deleted!!!", MessageType.Success);

            BindDocument();


        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        bal.DeleteTaskEMPidBAL(lblcomno.Text);
        DateTime utcTime = DateTime.UtcNow;
        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
        DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);


        foreach (ListItem div in ddlassignto.Items)
        {
            if (div.Selected == true)
            {
                string Emp = div.Value;
                bal.tbl_Task_Master_InsertBAL(Convert.ToInt32(txtNo.Text), Convert.ToInt32(lblcomno.Text), txtDate.Text, txttaskdate.Text, txtduedate.Text, Convert.ToInt32(Emp), Convert.ToInt32(abstatus.SelectedValue.ToString()), Convert.ToInt32(atstatus.SelectedValue.ToString()), txtWkDetails.Text, lblloginid.Text, localTime, "", "", "", "", "");
            }
        }
        Response.Redirect("TaskRegister.aspx", false);

    }

    protected void btnEmp_Click(object sender, EventArgs e)
    {
        bal.DeleteTaskEMPByidBAL(lblemp.Text);
        DateTime utcTime = DateTime.UtcNow;
        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
        DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);


        bal.tbl_Task_Master_InsertBAL(Convert.ToInt32(txtNo.Text), Convert.ToInt32(lblcomno.Text), txtDate.Text, txttaskdate.Text, txtduedate.Text, Convert.ToInt32(lblemp.Text), Convert.ToInt32(abstatus.SelectedValue.ToString()), Convert.ToInt32(atstatus.SelectedValue.ToString()), txtWkDetails.Text, lblloginid.Text, localTime, "", "", "", "", "");
        Response.Redirect("TaskRegister.aspx", false);

    }
}