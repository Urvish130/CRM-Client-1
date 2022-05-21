using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class EmployeeMaster : System.Web.UI.Page
{
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
                getmaxcomno();
                binddepartment();
                binddesignation();
                txtName.Focus();
                bindcountry();
                bindrole();
                
            }
        }

    }


    public void bindcountry()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getallcountryfroadminBAL();
            if (dtbtype.Rows.Count > 0)
            {
                dpcountry.DataSource = dtbtype;
                dpcountry.DataTextField = "Country";
                dpcountry.DataValueField = "id";
                dpcountry.DataBind();
            }
            dpcountry.Items.Insert(0, new ListItem("----Select Country----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void bindstate()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getstatedataBAL(Convert.ToInt32(dpcountry.SelectedValue.ToString()));
            if (dtbtype.Rows.Count > 0)
            {
                dpstate.DataSource = dtbtype;
                dpstate.DataTextField = "State";
                dpstate.DataValueField = "id";
                dpstate.DataBind();
            }
            dpstate.Items.Insert(0, new ListItem("----Select State----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void bindcity()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getcitydataBAL(Convert.ToInt32(dpstate.SelectedValue.ToString()));
            if (dtbtype.Rows.Count > 0)
            {
                dpcity.DataSource = dtbtype;
                dpcity.DataTextField = "City";
                dpcity.DataValueField = "id";
                dpcity.DataBind();
            }
            dpcity.Items.Insert(0, new ListItem("----Select City----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void bindrole()
    {
        try
        {
            DataTable dtdept = new DataTable();


            dtdept = bal.getallrolefroadminBAL();
            if (dtdept.Rows.Count > 0)
            {
                ddlRole.DataSource = dtdept;
                ddlRole.DataTextField = "Role";
                ddlRole.DataValueField = "Id";
                ddlRole.DataBind();
            }
            ddlRole.Items.Insert(0, new ListItem("----Select Role----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    public void binddepartment()
    {
        try
        {
            DataTable dtdept = new DataTable();


            dtdept = bal.getalldepartmentfroadminBAL();
            if (dtdept.Rows.Count > 0)
            {
                ddlDept.DataSource = dtdept;
                ddlDept.DataTextField = "Department";
                ddlDept.DataValueField = "Id";
                ddlDept.DataBind();
            }
            ddlDept.Items.Insert(0, new ListItem("----Select Department----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    public void binddesignation()
    {
        try
        {
            DataTable dtdesign = new DataTable();


            dtdesign = bal.getalldesignationfroadminBAL();
            if (dtdesign.Rows.Count > 0)
            {
                ddldesignation.DataSource = dtdesign;
                ddldesignation.DataTextField = "Designation";
                ddldesignation.DataValueField = "Id";
                ddldesignation.DataBind();
            }
            ddldesignation.Items.Insert(0, new ListItem("----Select Designation----", "0"));
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
            string s1 = "select Top (1) No from tbl_Employee_NoSeries    order By  Id DESC";
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
            bal.tbl_Employee_NoSeries_InsertBAL(s, "", "");
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

    protected void grddocument_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/Documents/") + e.CommandArgument);
            ShowMessage("Attachment Sucessfully Downloaded !!!", MessageType.Success);
            Response.End();

        }
        else if (e.CommandName == "deletedata")
        {

            string result = bal.deleteemployeedocumentdatabyidBAL(e.CommandArgument.ToString());

            ShowMessage("Record Deleted!!!", MessageType.Success);

            binddocument();


        }
    }
    protected void lbtnadddocument_Click(object sender, EventArgs e)
    {
        try
        {


            if (FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/Documents/") + fileName);
                string filepath = "~/Documents/" + fileName;
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                bal.tbl_Employee_Document_Master_InsertBAL(lblcomno.Text, txtdocument.Text, fileName, filepath, lblloginid.Text, localTime, "", "", "", "", "");
                txtdocument.Text = "";
                binddocument();
                txtdocument.Focus();
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

    public void binddocument()
    {

        try
        {

            DataTable dtcontact = new DataTable();
            dtcontact = bal.getdocumentadataBAL(lblloginid.Text, Convert.ToInt32(lblcomno.Text));
            if (dtcontact.Rows.Count > 0)
            {
                grddocument.DataSource = dtcontact;
                grddocument.DataBind();
                grddocument.UseAccessibleHeader = true;
                grddocument.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grddocument.DataSource = dtcontact;
                grddocument.DataBind();
                grddocument.UseAccessibleHeader = true;
                grddocument.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {

            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);


          string Result=  bal.tbl_Employee_master_InsertBAL(lblcomno.Text, txtName.Text, txtfhname.Text, txtsurname.Text, ddlgen.SelectedValue.ToString(), txtpaddress.Text,"", dpcity.SelectedValue.ToString(),dpstate.SelectedValue.ToString(), txtdistrict.Text, dpcountry.SelectedValue.ToString(), txtpincode.Text, txtphno.Text, txtpmobileno.Text, txtmobileoffice.Text, txtmobilenowhatsup.Text, ddlRole.SelectedValue.ToString(), txtpfno.Text, txtdoa.Text, txtdoj.Text, txtdol.Text, Convert.ToInt32(ddlDept.SelectedValue.ToString()), Convert.ToInt32(ddldesignation.SelectedValue.ToString()), txtEmail.Text, txtPwd.Text, txtecontatname.Text, txtecontactno.Text, txtcontactrelation.Text, rdbStatus.SelectedItem.Text, txtbankname.Text, txtaccno.Text, txtifsccode.Text, lblloginid.Text, localTime, txtdob.Text, txtdoani.Text, dptype.SelectedItem.Text, "", "");
            if(Result=="-1")
            {
               
                ShowMessage("Employee Name And Email Already Created", MessageType.Error);
                
            }
            else
            {
                Response.Redirect("EmployeeRegister.aspx", false);
            }
           
        }
        catch (Exception ex)
        {

        }
    }

    protected void CheckEmployee(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.CheckEmployee(txtName.Text, txtEmail.Text);
            if (dt1.Rows.Count > 0)
            {
                lblmsg.Text = "Name Is Already Registered";
                txtName.Text = " ";
                txtEmail.Text = " ";
            }

        }
        catch (Exception ex)
        {

        }
    }
    protected void lbtncrole_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkroledata(txtrolename.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                mpindutype.Show();
              
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

               string result=  bal.Saverolebll(txtrolename.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                   
                    ShowMessage("Record Save!!!", MessageType.Success);
                    bindrole();
                }
                else
                {
                    ShowMessage("Record Not Saved", MessageType.Error);
                }
               
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }



    protected void lbtncreatedept_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkdepartmentdata(txtdeptname.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                mpdept.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

                string result = bal.Savedepartmentbll(txtdeptname.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if (result == "1")
                {
                    binddepartment();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtdeptname.Text = "";
                    mpdept.Hide();
                }
                else
                {
                    txtdeptname.Focus();
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    mpdept.Show();

                }

            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }

    protected void lbtndesigncreate_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkdesignationdata(txtdesign.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                mpdesign.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

                string result = bal.Savedesignationbll(txtdesign.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if (result == "1")
                {
                    binddesignation();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtdesign.Text = "";
                    mpdesign.Hide();

                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    txtdesign.Focus();
                    mpdesign.Show();

                }

            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }

    protected void lbtncreatecity_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtSelectSate.Text == "")
            {
                ShowMessage("Please Select Any State", MessageType.Error);
                mpstate.Hide();
            }
            else
            {
                DataTable dt1 = new DataTable();
                dt1 = bal.checkcitynameBAL(Txtcity.Text, Convert.ToInt32(dpstate.SelectedValue));
                if (dt1.Rows.Count > 0)
                {
                    ShowMessage("Name Already Exist!!!", MessageType.Error);
                    mpcity.Show();
                }
                else
                {
                    DateTime utcTime = DateTime.UtcNow;
                    TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                    DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

                    string result = bal.tbl_city_Master_InsertBAL(Txtcity.Text, Convert.ToInt32(dpstate.SelectedValue.ToString()), lblloginid.Text, localTime, "", "", "", "", "");
                    if (result == "1")
                    {
                        
                        dpstate.ClearSelection();
                        bindcity();
                        ShowMessage("Record Save!!!", MessageType.Success);
                        Txtcity.Text = "";
                        mpcity.Hide();
                    }
                    else
                    {
                        ShowMessage("Record Not Save!!!", MessageType.Error);
                        Txtcity.Focus();
                        mpcity.Show();
                    }

                }
            }

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
            //ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    protected void lbtncreatestate_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtSelectCountry.Text == "")
            {
                ShowMessage("Please Select Any Country!!!", MessageType.Error);
                mpstate.Hide();
            }
            else
            {
                DataTable dt1 = new DataTable();
                dt1 = bal.checkstatenameBAL(Txtstate.Text, Convert.ToInt32(dpcountry.SelectedValue));
                if (dt1.Rows.Count > 0)
                {
                    ShowMessage("Name Already Exist!!!", MessageType.Error);
                    mpstate.Show();
                }
                else
                {
                    DateTime utcTime = DateTime.UtcNow;
                    TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                    DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

                    string result = bal.tbl_state_Master_InsertBAL(Txtstate.Text, Convert.ToInt32(dpcountry.SelectedValue.ToString()), lblloginid.Text, localTime, "", "", "", "", "");
                    if (result == "1")
                    {
                        bindstate();
                        bindcountry();
                        ShowMessage("Record Save!!!", MessageType.Success);
                        Txtstate.Text = "";
                        mpstate.Hide();
                        Txtcountry.Text = "";
                    }
                    else
                    {
                        ShowMessage("Record Not Save!!!", MessageType.Error);
                        mpstate.Show();
                        Txtstate.Focus();
                    }

                }
            }

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
            //ShowMessage(ex.ToString(), MessageType.Error);
        }
    }

    protected void lbtncreatecountry_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkcountrydata(Txtcountry.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);

                mpcountry.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                string result = bal.Savecountrybll(Txtcountry.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if (result == "1")
                {
                    bindcountry();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    mpcountry.Hide();
                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    Txtcountry.Focus();
                    mpcountry.Show();
                }

            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }


    protected void dpcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataTable dtbtype = new DataTable();

            dpcity.ClearSelection();
            txtSelectCountry.Text = dpcountry.SelectedItem.Text.ToString();
            dtbtype = bal.getstatedataBAL(Convert.ToInt32(dpcountry.SelectedValue.ToString()));
            if (dtbtype.Rows.Count > 0)
            {
                dpstate.DataSource = dtbtype;
                dpstate.DataTextField = "State";
                dpstate.DataValueField = "id";
                dpstate.DataBind();
                dpstate.Items.Insert(0, new ListItem("----Select State----", "0"));
            }
            else
            {
                dpstate.ClearSelection();
                dpstate.Items.Clear();
                dpstate.Items.Insert(0, new ListItem("----Select State----", "0"));
            }


        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void dpstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataTable dtbtype = new DataTable();
            dpcity.ClearSelection();
            txtSelectSate.Text = dpstate.SelectedItem.ToString();

            dtbtype = bal.getcitydataBAL(Convert.ToInt32(dpstate.SelectedValue.ToString()));
            if (dtbtype.Rows.Count > 0)
            {
                dpcity.DataSource = dtbtype;
                dpcity.DataTextField = "City";
                dpcity.DataValueField = "id";
                dpcity.DataBind();
                dpcity.Items.Insert(0, new ListItem("----Select City----", "0"));
            }
            else
            {
                dpcity.Items.Clear();
                dpcity.Items.Insert(0, new ListItem("----Select City----", "0"));

            }


        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }



    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        txtdesign.Text = "";
        mpdesign.Show();
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        txtdeptname.Text = "";
        mpdept.Show();
    }
}