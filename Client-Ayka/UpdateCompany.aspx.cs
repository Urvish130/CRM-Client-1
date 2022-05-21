using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UpdateCompany : System.Web.UI.Page
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
                lblcomno.Text = Request.QueryString["no"].ToString();
                bindbusstype();
                bindIndustry();
                binddepartment();
                binddesignation();
                txtName.Focus();
                bindcontactdata();
                bindcountry();
                filldata();                                
                bindcontactdata();
            }

        }
    }
    public void filldata()
    {
        try
        {
            DataTable dtdata = bal.getallcompanydatabycomnoBAL(lblcomno.Text);
            if (dtdata.Rows.Count > 0)
            {
                txtName.Text = dtdata.Rows[0]["Name"].ToString();
                txtaddress.Text = dtdata.Rows[0]["Address"].ToString();
                dpcity.SelectedValue = dtdata.Rows[0]["City"].ToString();
                dpstate.SelectedValue = dtdata.Rows[0]["State"].ToString();
                txtdistrict.Text = dtdata.Rows[0]["District"].ToString();
                dpcountry.SelectedValue = dtdata.Rows[0]["Country"].ToString();
                txtpincode.Text = dtdata.Rows[0]["Pincode"].ToString();
                txtphno.Text = dtdata.Rows[0]["PhoneNo"].ToString();
                txtemail.Text = dtdata.Rows[0]["Email"].ToString();
                dpbusstype.SelectedValue = dtdata.Rows[0]["BusinessType"].ToString();
                dpindustry.SelectedValue = dtdata.Rows[0]["Industrygroup"].ToString();
                txturl.Text = dtdata.Rows[0]["URL"].ToString();
                rbtnstatus.SelectedItem.Text = dtdata.Rows[0]["Status"].ToString();
                txtgstno.Text = dtdata.Rows[0]["GSTno"].ToString();
                txtbankname.Text = dtdata.Rows[0]["Bankname"].ToString();
                txtaccno.Text = dtdata.Rows[0]["Accountno"].ToString();
                txtifsccode.Text = dtdata.Rows[0]["IFSCcode"].ToString();
                bindstate();
                bindcity();

            }
        }
        catch (Exception ex)
        {

        }
    }
    public void bindbusstype()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getallbusinesstypefroadminBAL();
            if (dtbtype.Rows.Count > 0)
            {
                dpbusstype.DataSource = dtbtype;
                dpbusstype.DataTextField = "BusinessTypeName";
                dpbusstype.DataValueField = "id";
                dpbusstype.DataBind();
            }
            dpbusstype.Items.Insert(0, new ListItem("----Select BussinessType----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
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
                dpstate.Items.Insert(0, new ListItem("----Select State----", "0"));
            }
            else
            {
                dpstate.Items.Insert(0, new ListItem("----Select State----", "0"));
            }
            

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
                dpcity.Items.Insert(0, new ListItem("----Select City----", "0"));
            }
            else
            {
                dpcity.Items.Insert(0, new ListItem("----Select City----", "0"));
            }
         

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void bindIndustry()
    {
        try
        {
            DataTable dtindustry = new DataTable();


            dtindustry = bal.getallIndustrygroupfroadminBAL();
            if (dtindustry.Rows.Count > 0)
            {
                dpindustry.DataSource = dtindustry;
                dpindustry.DataTextField = "IndustryName";
                dpindustry.DataValueField = "id";
                dpindustry.DataBind();
            }
            dpindustry.Items.Insert(0, new ListItem("----Select Industrytype----", "0"));

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
                ddlDept.DataValueField = "id";
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
                ddldesign.DataSource = dtdesign;
                ddldesign.DataTextField = "Designation";
                ddldesign.DataValueField = "id";
                ddldesign.DataBind();
            }
            ddldesign.Items.Insert(0, new ListItem("----Select Designation----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void lbtnaddcontact_Click(object sender, EventArgs e)
    {
        try
        {

            DataTable dt1 = new DataTable();
            dt1 = bal.checkcompanycontactnameBAL(lblcomno.Text, txtcontactname.Text, txtcontactemail.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else
            {

                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                bal.tbl_Company_Contact_Master_InsertBAL(lblcomno.Text, txtcontactname.Text, txtcontactemail.Text, txtcontactphno.Text, txtcontactmno1.Text, txtcontactmno2.Text, Convert.ToInt32(ddlDept.SelectedValue.ToString()), Convert.ToInt32(ddldesign.SelectedValue.ToString()), lblloginid.Text, localTime, txtdob.Text, txtdoani.Text, "", "", "");
                resetcontact();
                bindcontactdata();
                txtcontactname.Focus();
            }
        }
        catch (Exception ex)
        {

        }

    }
    public void resetcontact()
    {
        try
        {
            txtcontactname.Text = "";
            txtcontactemail.Text = "";
            txtcontactphno.Text = "";
            txtcontactmno1.Text = "";
            txtcontactmno2.Text = "";
            ddlDept.ClearSelection();
            ddldesign.ClearSelection();
            txtdob.Text = "";
            txtdoani.Text = "";
            lbtnaddcontact.Visible = true;
            lbtnupdatecontact.Visible = false;

        }
        catch (Exception ex)
        {

        }
    }

    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }

    protected void grdcontact_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                DataTable dtdata = bal.getcompanycontactdatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    txtcontactname.Text = dtdata.Rows[0]["ContactName"].ToString();
                    txtcontactemail.Text = dtdata.Rows[0]["ContactEmail"].ToString();
                    txtcontactphno.Text = dtdata.Rows[0]["ContactPhone"].ToString();
                    txtcontactmno1.Text = dtdata.Rows[0]["ContactMobileno1"].ToString();
                    txtcontactmno2.Text = dtdata.Rows[0]["ContactMobileno2"].ToString();
                    txtdob.Text = dtdata.Rows[0]["Extra1"].ToString();
                    txtdoani.Text = dtdata.Rows[0]["Extra2"].ToString();
                    string deptvalule = dtdata.Rows[0]["Dept"].ToString();
                    ddlDept.SelectedValue = dtdata.Rows[0]["Dept"].ToString();
                    ddldesign.SelectedValue = dtdata.Rows[0]["Design"].ToString();
                    txtcontactname.Focus();
                    lbtnaddcontact.Visible = false;
                    lbtnupdatecontact.Visible = true;
                    //  bindDetail();
                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bal.deletecompanycontactdatabyidBAL(lblid.Text);

                ShowMessage("Record Deleted!!!", MessageType.Success);

                bindcontactdata();
                lbtnaddcontact.Visible = true;
                lbtnupdatecontact.Visible = false;

            }

        }
        catch (Exception ex)
        {

        }
    }

    protected void lbtnupdatecontact_Click(object sender, EventArgs e)
    {
        try
        {


            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

           string result= bal.tbl_Company_Contact_Master_updateBAL(Convert.ToInt32(lblid.Text), txtcontactname.Text, txtcontactemail.Text, txtcontactphno.Text, txtcontactmno1.Text, txtcontactmno2.Text, Convert.ToInt32(ddlDept.SelectedValue.ToString()), Convert.ToInt32(ddldesign.SelectedValue.ToString()), lblloginid.Text, localTime, txtdob.Text, txtdoani.Text, "", "", "");
            if(result=="-1")
            {
                ShowMessage("Contact Name Already Exist!!!", MessageType.Error);

            }
            else if(result=="1")
            {
                resetcontact();
                bindcontactdata();
                ShowMessage("Record Save!!!", MessageType.Success);
                txtcontactname.Focus();
                lbtnaddcontact.Visible = true;
                lbtnupdatecontact.Visible = false;
            }
            else
            {
                ShowMessage("Record Not Save!!!", MessageType.Error);
                txtcontactname.Focus();
                
            }
          

        }
        catch (Exception ex)
        {

        }
    }

    public void bindcontactdata()
    {

        try
        {

            DataTable dtcontact = new DataTable();
            dtcontact = bal.getcompanycontactdataBAL(lblloginid.Text, Convert.ToInt32(lblcomno.Text));
            if (dtcontact.Rows.Count > 0)
            {
                grdcontact.DataSource = dtcontact;
                grdcontact.DataBind();
                grdcontact.UseAccessibleHeader = true;
                grdcontact.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grdcontact.DataSource = dtcontact;
                grdcontact.DataBind();
                grdcontact.UseAccessibleHeader = true;
                grdcontact.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void lbtnresetcontact_Click(object sender, EventArgs e)
    {
        try
        {
            resetcontact();
        }
        catch (Exception ex)
        {

        }

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {

            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);


          string result=  bal.tbl_Company_Master_updateBAL(lblcomno.Text, txtName.Text, "", txtaddress.Text, dpcity.SelectedValue.ToString(), dpstate.SelectedValue.ToString(), txtdistrict.Text, dpcountry.SelectedValue.ToString(), txtpincode.Text, txtphno.Text, txtemail.Text, Convert.ToInt32(dpbusstype.SelectedValue.ToString()), Convert.ToInt32(dpindustry.SelectedValue.ToString()), txturl.Text, rbtnstatus.SelectedItem.Text, txtgstno.Text, txtbankname.Text, txtaccno.Text, txtifsccode.Text, lblloginid.Text, localTime, "", "", "", "", "");
            if(result=="-1")
            {
                ShowMessage("Company Is Already Created!!!", MessageType.Error);
            }
            else if(result == "1")
            {
                Response.Redirect("CompanyRegister.aspx", false);
            }
            else
            {
                ShowMessage("Record Not Uodated!!!", MessageType.Error);
               
            }
            
        }
        catch (Exception ex)
        {

        }
    }

    protected void lbtncbytype_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkbusinesstypedata(txtbtypename.Text);
            if (dt1.Rows.Count > 0)
            {
                mpbtype.Show();

                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

              string result=  bal.Savebusinesstypebll(txtbtypename.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    ShowMessage("Record Inserted", MessageType.Success);
                    bindbusstype();
                    txtbtypename.Text = "";                   
                    mpbtype.Hide();
                }
                else
                {
                    ShowMessage("Record Not Inserted", MessageType.Error);
                    txtbtypename.Focus();
                    mpbtype.Show();
                }
              
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    protected void lbtncreateindugroup_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkdata(txtgroupname.Text);
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

               string result= bal.SaveMyTablebll(txtgroupname.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    bindIndustry();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtgroupname.Text = "";
                    txtgroupname.Focus();
                    mpindutype.Hide();
                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    txtgroupname.Focus();
                    mpindutype.Show();

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
                    txtdeptname.Focus();
                    mpdept.Hide();
                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    txtdeptname.Focus();
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

               string result= bal.Savedesignationbll(txtdesign.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    binddesignation();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtdesign.Text = "";
                    txtdesign.Focus();
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
            if(txtSelectSate.Text=="")
            {
                ShowMessage("Please Select Any State", MessageType.Error);
                mpcity.Hide();
                dpstate.Focus();
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

                   string result= bal.tbl_city_Master_InsertBAL(Txtcity.Text, Convert.ToInt32(dpstate.SelectedValue.ToString()), lblloginid.Text, localTime, "", "", "", "", "");
                    if(result=="1")
                    {
                        bindcity();
                        bindstate();
                        ShowMessage("Record Save!!!", MessageType.Success);
                        Txtcity.Text = "";                        
                        mpcity.Hide();
                    }
                    else
                    {
                       
                        ShowMessage("Record Not Save!!!", MessageType.Error);                       
                        mpcity.Show();
                    }
                   
                }

            }
          
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    protected void lbtncreatestate_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtSelectCountry.Text == "")
            {
                ShowMessage("Please Select Any Country", MessageType.Error);
                mpstate.Hide();
                dpcountry.Focus();
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

                  string result=  bal.tbl_state_Master_InsertBAL(Txtstate.Text, Convert.ToInt32(dpcountry.SelectedValue.ToString()), lblloginid.Text, localTime, "", "", "", "", "");
                    if(result=="1")
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
                        Txtstate.Focus();
                        mpstate.Show();
                    }
                  
                }
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }

    protected void lbtncreatecountry_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkcountrydata(Txtcity.Text);
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

               string result= bal.Savecountrybll(Txtcountry.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    bindcountry();
                    ShowMessage("Record Save!!!", MessageType.Success);

                    Txtcountry.Focus();
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
            txtSelectCountry.Text = dpcountry.SelectedItem.ToString();
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

    protected void CheckName(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkName(txtName.Text, txtemail.Text);
            if (dt1.Rows.Count > 0)
            {
                lblmsg.Text = "Name Is Already Registered";
                txtName.Text = "";
            }

        }
        catch (Exception ex)
        {

        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
       string result = bal.deleteCompany(lblcomno.Text);

        ShowMessage("Record Deleted!!!", MessageType.Success);

        Response.Redirect("CompanyRegister.aspx", false);
    }

    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Txtcountry.Text = "";
        mpcountry.Show();
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        txtbtypename.Text = "";
        mpbtype.Show();
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        txtgroupname.Text = "";
        mpindutype.Show();
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