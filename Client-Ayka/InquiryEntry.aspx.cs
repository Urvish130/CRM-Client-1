using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class InquiryEntry : System.Web.UI.Page
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
                string zoneId = "India Standard Time";
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
                DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
                string date = now.Day.ToString();
                string month = now.Month.ToString();
                string year = now.Year.ToString();
                if(Convert.ToInt32(date) < 10)
                {

                    date = "0" + date;
                }
                if (Convert.ToInt32(month) < 10)
                {

                    month = "0" + month;
                }
                string fdate = date + "/"+ month +"/" + year;
                
                txtfdate.Text = fdate;
                txtdate.Text = fdate;
                lblloginid.Text = Session["id"].ToString();
                lblrole.Text = Session["role"].ToString();
                bindstatus();
                bindsource();
                bindfollowup();
                binditem();
                //binduom();
                //binddepartment();
                //binddesignation();
                getInquiryNo();
                getmaxcomno();
                bindcustomer();
                bindapplicationtype();
                bindmachinetype();
                bindcompressortype();
                binditemdata();
            }

        }

    }
    public string getmaxcomno()
    {
        string s = string.Empty, id = string.Empty;
        Getconnection c = new Getconnection();
        try
        {
            string s1 = "select Top (1) No from Inquiry_No_Series    order By  Id DESC";
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
            bal.tbl_Inquiry_No_Series_InsertBAL(s, "", "");
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
    public void RefreshItmdataGroup(object sender, EventArgs e)
    {
        binditem();
    }
    public void RefreshCustGroup(object sender, EventArgs e)
    {
        bindcustomer();
    }
    public string getInquiryNo()
    {
        string s = string.Empty, id = string.Empty;
        Getconnection c = new Getconnection();
        try
        {
            string s1 = "select Top (1) InqiuryNo from Inqiury_Master    order By  Id DESC";
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
            txtno.Text = s.ToString();
            //hfMaxEntryNo.Value = fid.ToString();

        }
        catch (Exception ex)
        {

            txtno.Text = "1";
        }
        finally
        {
            c.CloseConnection();
        }
        return s;
    }
    public void bindstatus()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getallstatusfroadminBAL();
            if (dtbtype.Rows.Count > 0)
            {
                dpstatus.DataSource = dtbtype;
                dpstatus.DataTextField = "Status";
                dpstatus.DataValueField = "id";
                dpstatus.DataBind();


                dpfollowstatus.DataSource = dtbtype;
                dpfollowstatus.DataTextField = "Status";
                dpfollowstatus.DataValueField = "id";
                dpfollowstatus.DataBind();
            }
            dpstatus.Items.Insert(0, new ListItem("----Select Status----", "0"));
            dpfollowstatus.Items.Insert(0, new ListItem("----Select Status----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void lbtnaddstatus2_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkstatusdata(txtcreatestatus2.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                ModalPopupExtender8.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
              string Result=  bal.Savestatusbll(txtcreatestatus2.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(Result=="1")
                {
                    bindstatus();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtcreatestatus2.Text = "";
                    txtcreatestatus2.Focus();
                    ModalPopupExtender8.Hide();
                }
                else
                {
                     txtcreatestatus2.Focus();
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    ModalPopupExtender8.Show();

                }
               
            }
        }
        catch (Exception ex)
        {            
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    //protected void lbtncreatedept_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        DataTable dt1 = new DataTable();
    //        dt1 = bal.checkdepartmentdata(txtdeptname.Text);
    //        if (dt1.Rows.Count > 0)
    //        {
    //            ShowMessage("Name Already Exist!!!", MessageType.Error);
    //            lbldepartment.Text = "Name Already Exist!!!";
    //            mpdept.Show();
    //        }
    //        else
    //        {
    //            DateTime utcTime = DateTime.UtcNow;
    //            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    //            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

    //            bal.Savedepartmentbll(txtdeptname.Text, lblloginid.Text, localTime, "", "", "", "", "");
    //            binddepartment();
    //            ShowMessage("Record Save!!!", MessageType.Success);
    //            txtdeptname.Text = "";
    //            txtdeptname.Focus();
    //            mpdept.Hide();
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        //  Getconnection.SiteErrorInsert(ex);
    //        ShowMessage(ex.ToString(), MessageType.Error);
    //    }
    //}
    //protected void lbtndesigncreate_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        DataTable dt1 = new DataTable();
    //        dt1 = bal.checkdesignationdata(txtdesign.Text);
    //        if (dt1.Rows.Count > 0)
    //        {
    //            lbldesignation.Text = "Name Already Exist!!!";
    //            ShowMessage("Name Already Exist!!!", MessageType.Error);
    //            mpdesign.Show();
    //        }
    //        else
    //        {
    //            DateTime utcTime = DateTime.UtcNow;
    //            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    //            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

    //            bal.Savedesignationbll(txtdesign.Text, lblloginid.Text, localTime, "", "", "", "", "");
    //            binddesignation();
    //            ShowMessage("Record Save!!!", MessageType.Success);
    //            txtdesign.Text = "";
    //            txtdesign.Focus();
    //            mpdesign.Hide();
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        //  Getconnection.SiteErrorInsert(ex);
    //        ShowMessage(ex.ToString(), MessageType.Error);
    //    }
    //}
    protected void lbtncreatestatus_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkstatusdata(txtcreatestatus.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                mpstatus.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

              string result = bal.Savestatusbll(txtcreatestatus.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    bindstatus();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtcreatestatus.Text = "";
                  
                    mpstatus.Hide();
                }
                else
                {
                   
                    ShowMessage("Record Not Save!!!", MessageType.Error);                   
                    txtcreatestatus.Focus();
                    mpstatus.Show();
                }
                
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
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
            dpcust.Items.Insert(0, new ListItem("----Select Customer----", "0"));
            //dpfollowstatus.Items.Insert(0, new ListItem("----Select Status----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    //ApplicationType
    public void bindapplicationtype()
    {
        try
        {
            DataTable dtdept = new DataTable();


            dtdept = bal.getallapplicationtypefroadminBAL();
            if (dtdept.Rows.Count > 0)
            {
                ddlapplicationtype.DataSource = dtdept;
                ddlapplicationtype.DataTextField = "ApplicationType";
                ddlapplicationtype.DataValueField = "id";
                ddlapplicationtype.DataBind();
            }
            ddlapplicationtype.Items.Insert(0, new ListItem("----Select Application Type----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void lbtncreateapplicationtype_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkapplicationtypedata(txtapplicationtype.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

               string result= bal.Saveapplicationtypebll(txtapplicationtype.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    bindapplicationtype();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtapplicationtype.Text = "";
                    txtapplicationtype.Focus();
                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Error);

                }
               
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    protected void lbtnresetapplicationtype_Click(object sender, EventArgs e)
    {

    }
    //ApplicationType END

    //MachineType
    public void bindmachinetype()
    {
        try
        {
            DataTable dtdept = new DataTable();


            dtdept = bal.getallmachinetypefroadminBAL();
            if (dtdept.Rows.Count > 0)
            {
                ddlmachinetype.DataSource = dtdept;
                ddlmachinetype.DataTextField = "MachineType";
                ddlmachinetype.DataValueField = "id";
                ddlmachinetype.DataBind();
            }
            ddlmachinetype.Items.Insert(0, new ListItem("----Select Machine Type----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void lbtncreatmachinetype_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkmachinetypedata(txtmachinetype.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                ModalPopupExtender4.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

              string result=  bal.Savemachinetypebll(txtmachinetype.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    bindmachinetype();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtmachinetype.Text = "";
                    txtmachinetype.Focus();
                    ModalPopupExtender4.Hide();
                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    ModalPopupExtender4.Show();

                }
               
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    //MachineType END

    //CompressorType
    public void bindcompressortype()
    {
        try
        {
            DataTable dtdept = new DataTable();


            dtdept = bal.getallcompressortypefroadminBAL();
            if (dtdept.Rows.Count > 0)
            {
                ddlcompressortype.DataSource = dtdept;
                ddlcompressortype.DataTextField = "CompressorType";
                ddlcompressortype.DataValueField = "id";
                ddlcompressortype.DataBind();
            }
            ddlcompressortype.Items.Insert(0, new ListItem("----Select Compressor Type----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void lbtncreatecompressortype_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkcompressortypedata(txtcompressortype.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                ModalPopupExtender5.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

             string result=   bal.Savecompressortypebll(txtcompressortype.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    bindcompressortype();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtcompressortype.Text = "";
                    txtcompressortype.Focus();
                    ModalPopupExtender5.Hide();
                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    ModalPopupExtender5.Show();
                }
               
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    //CompressorType END
    public void bindsource()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getallsourcefroadminBAL();
            if (dtbtype.Rows.Count > 0)
            {
                dpsource.DataSource = dtbtype;
                dpsource.DataTextField = "Source";
                dpsource.DataValueField = "id";
                dpsource.DataBind();
            }
            dpsource.Items.Insert(0, new ListItem("----Select Source----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void lbtncreatesource_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checksourcedata(txtsource.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                mpcustomer.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

              string result=  bal.Savesourcebll(txtsource.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    bindsource();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtsource.Text = "";
                    txtsource.Focus();
                    mpcustomer.Hide();
                }
                else
                {
                    mpcustomer.Show();
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                   

                }
              
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    protected void createuom_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkunitofmeasurementdata(txtcreateuom.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                ModalPopupExtender2.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

             string result=   bal.Saveunitofmeasurementbll(txtcreateuom.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    binduom();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtcreateuom.Text = "";
                    txtcreateuom.Focus();
                    ModalPopupExtender2.Hide();
                }
                else
                {
                    ShowMessage("Record Save!!!", MessageType.Success);
                    ModalPopupExtender2.Show();

                }
               
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    public void binduom()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getUnitByIteMBAL(Convert.ToInt32(dpitem.SelectedValue));
            if (dtbtype.Rows.Count > 0)
            {
                dpuom.DataSource = dtbtype;
                dpuom.DataTextField = "UnitofMeasurement";
                dpuom.DataValueField = "id";
                dpuom.DataBind();
                dpuom.Items.Insert(0, new ListItem("----Select UOM----", "0"));
            }
            else
            {
                dpuom.Items.Clear();
                dpuom.Items.Insert(0, new ListItem("----Select UOM----", "0"));
            }
            

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    public void binditem()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getallItemdataforadminBAL();
            if (dtbtype.Rows.Count > 0)
            {
                dpitem.DataSource = dtbtype;
                dpitem.DataTextField = "Itemname";
                dpitem.DataValueField = "id";
                dpitem.DataBind();
            }
            dpitem.Items.Insert(0, new ListItem("----Select Item----", "0"));
            ddlBOM.Items.Insert(0, new ListItem("----Select BOM----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    public void bindfollowup()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.getallfollowuptypefroadminBAL();
            if (dtbtype.Rows.Count > 0)
            {
                dpfollowuptype.DataSource = dtbtype;
                dpfollowuptype.DataTextField = "FollowUpType";
                dpfollowuptype.DataValueField = "id";
                dpfollowuptype.DataBind();
            }
            dpfollowuptype.Items.Insert(0, new ListItem("----Select Followup Type----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void lbtnaddfollowuptype_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkfollowuptypedata(txtfollowup.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                ModalPopupExtender7.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

             string result=   bal.Savefollowuptypebll(txtfollowup.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    bindfollowup();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtfollowup.Text = "";
                    txtfollowup.Focus();
                    ModalPopupExtender7.Hide();
                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    ModalPopupExtender7.Show();
                }
            
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    public void binddepartment()
    {
        try
        {
            DataTable dtdept = new DataTable();


            dtdept = bal.getalldepartmentbycontactBAL(Convert.ToInt32(dpcontactper.SelectedValue));
            if (dtdept.Rows.Count > 0)
            {
                ddlDept.DataSource = dtdept;
                ddlDept.DataTextField = "Department";
                ddlDept.DataValueField = "id";
                ddlDept.DataBind();
                ddlDept.Items.Insert(0, new ListItem("----Select Department----", "0"));
            }
            else
            {
                ddlDept.Items.Clear();
                ddlDept.Items.Insert(0, new ListItem("----Select Department----", "0"));
            }
           
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


            dtdesign = bal.getalldesignationByContactBAL(Convert.ToInt32(dpcontactper.SelectedValue));
            if (dtdesign.Rows.Count > 0)
            {
                ddldesign.DataSource = dtdesign;
                ddldesign.DataTextField = "Designation";
                ddldesign.DataValueField = "id";
                ddldesign.DataBind();
                ddldesign.Items.Insert(0, new ListItem("----Select Designation----", "0"));
            }
           
             else
            {
                ddldesign.Items.Clear();
                ddldesign.Items.Insert(0, new ListItem("----Select Designation----", "0"));
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    public void resetcontact()
    {
        try
        {
            dpitem.ClearSelection();
            dpuom.ClearSelection();
            txtqty.Text = string.Empty;
            ddlapplicationtype.ClearSelection();
            txtManufacturer.Text = string.Empty;
            txtEquipment.Text = string.Empty;
            txtSerialno.Text = string.Empty;
            txtManufacturedDate.Text = string.Empty;
            txtPowerunitconsuption.Text = string.Empty;
            txtCoolingcapacity.Text = string.Empty;
            ddlmachinetype.ClearSelection();
            ddlcompressortype.ClearSelection();
            txtNumberofcomposers.Text = string.Empty;
            txtNumberofcircuits.Text = string.Empty;
            txtHotgas.Text = string.Empty;
            txtRefrigeranttype.Text = string.Empty;
            txtAnualpusage.Text = string.Empty;
            txtAveragedhrs.Text = string.Empty;
            txtDayspyear.Text = string.Empty;
            txtEratepkwh.Text = string.Empty;
            txtPoophr.Text = string.Empty;
            txtEstdistance.Text = string.Empty;
            txtdescription.Text = string.Empty;
            ddlBOM.Enabled = false;
            ddlBOM.Items.Clear();
            dpitem.Focus();
        }
        catch (Exception ex)
        {

        }
    }
    public void binditemdata()
    {

        try
        {

            DataTable dtcontact = new DataTable();
            dtcontact = bal.getInqiuryDetailsdataBAL(Convert.ToInt32(lblcomno.Text));
            if (dtcontact.Rows.Count > 0)
            {
                grdproduct.DataSource = dtcontact;
                grdproduct.DataBind();
                grdproduct.UseAccessibleHeader = true;
                grdproduct.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grdproduct.DataSource = dtcontact;
                grdproduct.DataBind();
                grdproduct.UseAccessibleHeader = true;
                grdproduct.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
            lblerror.Text = ex.ToString();
        }
    }
    public void bindfollowupdata()
    {

        try
        {

            DataTable dtcontact = new DataTable();
            dtcontact = bal.getFollowupdatabal(Convert.ToInt32(lblcomno.Text));
            if (dtcontact.Rows.Count > 0)
            {
                grdfollowup.DataSource = dtcontact;
                grdfollowup.DataBind();
                grdfollowup.UseAccessibleHeader = true;
                grdfollowup.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grdfollowup.DataSource = dtcontact;
                grdfollowup.DataBind();
                grdfollowup.UseAccessibleHeader = true;
                grdfollowup.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void btnaddproduct_Click(object sender, EventArgs e)
    {
        try
        {

            DataTable dt1 = new DataTable();
            string BOM = "";
            dt1 = bal.checkProductNameBAL(lblcomno.Text, Convert.ToInt32(dpitem.SelectedValue));
            if (dt1.Rows.Count > 0)
            {
                string Name = dpitem.SelectedItem.Text;
                ShowMessage(""+Name+" Already Exist!!!", MessageType.Error);
                binditemdata();
            }
            else
            {
                string file = "";
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                if (fileitemlevel.HasFiles)
                {
                    foreach (HttpPostedFile uploadedFile in fileitemlevel.PostedFiles)
                    {
                        string chkfile = Server.MapPath("~/Upload/") + fileitemlevel.FileName;
                        if (!File.Exists(chkfile))
                        {
                            uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Upload/"), uploadedFile.FileName));
                            file = "~/Upload/" + uploadedFile.FileName;
                        }
                    }
                }
                else
                {
                    file = "";
                }
                if(Convert.ToInt32(ddlBOM.SelectedValue)>0)
                {
                    BOM = ddlBOM.SelectedItem.Value;
                }
                string result = bal.tbl_Inqiury_Details_InsertBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(dpitem.SelectedValue.ToString()), Convert.ToInt32(dpuom.SelectedValue.ToString()), Convert.ToDecimal(txtqty.Text), Convert.ToDecimal(0), Convert.ToDecimal(0), Convert.ToInt32(ddlapplicationtype.SelectedValue.ToString()), txtManufacturer.Text, txtEquipment.Text, txtSerialno.Text, txtManufacturedDate.Text, txtPowerunitconsuption.Text, txtCoolingcapacity.Text, Convert.ToInt32(ddlmachinetype.SelectedValue.ToString()), Convert.ToInt32(ddlcompressortype.SelectedValue.ToString()), txtNumberofcomposers.Text, txtNumberofcircuits.Text, txtHotgas.Text, txtRefrigeranttype.Text,
              txtAnualpusage.Text, txtAveragedhrs.Text, txtDayspyear.Text, txtEratepkwh.Text, txtPoophr.Text, txtEstdistance.Text, lblloginid.Text, localTime, txtdescription.Text, file, "", "", BOM);
                if (result == "1")
                {
                    ShowMessage("Product Created!!!", MessageType.Success);
                    resetcontact();
                    binditemdata();
                    binditem();
                }
                else
                {
                    ShowMessage("Product Not Created!!!", MessageType.Error);
                }
                
                //txtcontactname.Focus();
            }
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }

    }
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void grdproduct_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                DataTable dtdata = bal.getInqiuryDetailsdatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    dpitem.ClearSelection();
                    dpuom.ClearSelection();
                    dpitem.Items.FindByValue(dtdata.Rows[0]["Item"].ToString()).Selected = true;
                    dpuom.Items.FindByValue(dtdata.Rows[0]["UOM"].ToString()).Selected = true;
                    txtqty.Text = dtdata.Rows[0]["Qty"].ToString();
                    ddlapplicationtype.ClearSelection();
                    ddlapplicationtype.Items.FindByValue(dtdata.Rows[0]["Inqiuryapplicationtype"].ToString()).Selected = true;
                    txtManufacturer.Text = dtdata.Rows[0]["Inqiurymanufacturename"].ToString();
                    txtEquipment.Text = dtdata.Rows[0]["Inqiuryequipmenttype"].ToString();
                    txtSerialno.Text = dtdata.Rows[0]["Inqiuryserialno"].ToString();
                    txtManufacturedDate.Text = dtdata.Rows[0]["Inqiurymanufactureddate"].ToString();
                    txtPowerunitconsuption.Text = dtdata.Rows[0]["Inqiurypowerunitconsuption"].ToString();
                    txtCoolingcapacity.Text = dtdata.Rows[0]["Inqiurycoolingcapacity"].ToString();
                    ddlmachinetype.ClearSelection();
                    ddlmachinetype.Items.FindByValue(dtdata.Rows[0]["Inqiurymachinetype"].ToString()).Selected = true;
                    ddlcompressortype.ClearSelection();
                    ddlcompressortype.Items.FindByValue(dtdata.Rows[0]["Inqiurycompressortype"].ToString()).Selected = true;
                    txtNumberofcomposers.Text = dtdata.Rows[0]["Inqiurycompressorinonecircuit"].ToString();
                    txtNumberofcircuits.Text = dtdata.Rows[0]["Inqiurynumberofcircuits"].ToString();
                    txtHotgas.Text = dtdata.Rows[0]["Inqiuryhotgasdischarge"].ToString();
                    txtRefrigeranttype.Text = dtdata.Rows[0]["Inqiurytypeofrefrigerant"].ToString();
                    txtAnualpusage.Text = dtdata.Rows[0]["Inqiuryannualpowerusage"].ToString();
                    txtAveragedhrs.Text = dtdata.Rows[0]["Inqiuryavergedailyhours"].ToString();
                    txtDayspyear.Text = dtdata.Rows[0]["Inqiurydaysrunperyear"].ToString();
                    txtEratepkwh.Text = dtdata.Rows[0]["InqiuryelectricityrateperKWH"].ToString();
                    txtPoophr.Text = dtdata.Rows[0]["Inqiurypercentageofoperationperhour"].ToString();
                    txtEstdistance.Text = dtdata.Rows[0]["Inqiuryestimatedistance"].ToString();
                    txtdescription.Text = dtdata.Rows[0]["Extra1"].ToString();
                    hffileitemlevel.Value = dtdata.Rows[0]["Extra2"].ToString();
                    lblstatus.Text= dtdata.Rows[0]["BOMStatus"].ToString();
                    if(lblstatus.Text=="Yes")
                    {
                        BindBOM(Convert.ToInt32(dpitem.SelectedValue));
                        ddlBOM.Enabled = true;
                        if(dtdata.Rows[0]["Extra5"].ToString()!="")
                        {
                            ddlBOM.SelectedValue = dtdata.Rows[0]["Extra5"].ToString();
                        }
                      
                    }
                   
                    dpitem.Focus();
                    btnaddproduct.Visible = false;
                    lbtnupdatecontact.Visible = true;
                    //  bindDetail();
                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bal.deleteinquirydetailsdatabyidBAL(lblid.Text);

                ShowMessage("Record Deleted!!!", MessageType.Success);

                binditemdata();


            }

        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }
    }
    protected void lbtnupdatecontact_Click(object sender, EventArgs e)
    {
        try
        {

            string file = "";
            string BOM = "";
            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
            if (fileitemlevel.HasFiles)
            {
                foreach (HttpPostedFile uploadedFile in fileitemlevel.PostedFiles)
                {
                    string chkfile = Server.MapPath("~/Upload/") + fileitemlevel.FileName;
                    if (!File.Exists(chkfile))
                    {
                        uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Upload/"), uploadedFile.FileName));
                        file = "~/Upload/" + uploadedFile.FileName;
                    }
                }
            }
            else
            {
                file = hffileitemlevel.Value;
            }
            if (Convert.ToInt32(ddlBOM.SelectedValue) > 0)
            {
                BOM = ddlBOM.SelectedItem.Value;
            }
            // bal.tbl_Inqiury_Details_updateBAL(Convert.ToInt32(lblid.Text), Convert.ToInt32(dpitem.SelectedValue.ToString()), Convert.ToInt32(dpuom.SelectedValue.ToString()), Convert.ToDecimal(txtqty.Text), lblloginid.Text, localTime, "", "", "", "", "");
            string result= bal.tbl_Inqiury_Details_updateBAL(Convert.ToInt32(lblid.Text), Convert.ToInt32(lblcomno.Text), Convert.ToInt32(dpitem.SelectedValue.ToString()), Convert.ToInt32(dpuom.SelectedValue.ToString()), Convert.ToDecimal(txtqty.Text), Convert.ToDecimal(0), Convert.ToDecimal(0), Convert.ToInt32(ddlapplicationtype.SelectedValue.ToString()), txtManufacturer.Text, txtEquipment.Text, txtSerialno.Text, txtManufacturedDate.Text, txtPowerunitconsuption.Text, txtCoolingcapacity.Text, Convert.ToInt32(ddlmachinetype.SelectedValue.ToString()), Convert.ToInt32(ddlcompressortype.SelectedValue.ToString()), txtNumberofcomposers.Text, txtNumberofcircuits.Text, txtHotgas.Text, txtRefrigeranttype.Text,
             
               txtAnualpusage.Text, txtAveragedhrs.Text, txtDayspyear.Text, txtEratepkwh.Text, txtPoophr.Text, txtEstdistance.Text, lblloginid.Text, localTime, txtdescription.Text, file, "", "", BOM);
            if(result=="-1")
            {
                ShowMessage("Item Already Exist!!!", MessageType.Error);
            }
            else if(result!="0")
            {
                resetcontact();
                binditemdata();
                binditem();
                ShowMessage("Record Save!!!", MessageType.Success);
                btnaddproduct.Visible = true;
                lbtnupdatecontact.Visible = false;
            }
            else
            {
                ShowMessage("Record Not Save!!!", MessageType.Error);
            }
          

        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }
    }
    protected void lbtnaddfollowup_Click(object sender, EventArgs e)
    {
        try
        {

            DataTable dt1 = new DataTable();
            dt1 = bal.checkFollowupBAL(lblcomno.Text, txtfdate.Text, Convert.ToInt32(dpfollowuptype.SelectedValue.ToString()));
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Followup Already Exist On " + txtfdate.Text + "!!!", MessageType.Error);
                bindfollowupdata();
            }
            else
            {

                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

             string result=   bal.tbl_Inqiury_Followup_InsertBAL(Convert.ToInt32(lblcomno.Text), txtfdate.Text, Convert.ToInt32(dpfollowuptype.SelectedValue.ToString()), 0, Convert.ToInt32(dpfollowstatus.SelectedValue.ToString()), txtfremarks.Text, "", "", lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    ShowMessage("Followup Inserted", MessageType.Success);

                    resetfollowup();
                    bindfollowupdata();
                }
                else
                {
                    ShowMessage("Followup Not Inserted", MessageType.Error);

                }
              
                //txtcontactname.Focus();
            }
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }

    }
    public void resetfollowup()
    {
        try
        {
            string zoneId = "India Standard Time";
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
            DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
            txtfdate.Text = now.ToString("dd/MM/yyyy");
            dpfollowuptype.ClearSelection();
            dpfollowstatus.ClearSelection();
            txtfremarks.Text = "";

        }
        catch (Exception ex)
        {

        }
    }
    protected void lbtnupdatefollowup_Click(object sender, EventArgs e)
    {
        try
        {


            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

           string result= bal.tbl_Inqiury_Followup_updateBAL(Convert.ToInt32(lblid.Text), Convert.ToInt32(lblcomno.Text), txtfdate.Text, Convert.ToInt32(dpfollowuptype.SelectedValue.ToString()), 0, Convert.ToInt32(dpfollowstatus.SelectedValue.ToString()), txtfremarks.Text, "", "", lblloginid.Text, localTime, "", "", "", "", "");

            if(result=="-1")
            {
                ShowMessage("Follow Up Already Exist On "+ txtfdate.Text + "!!!", MessageType.Error);
                bindfollowupdata();
            }
            else if(result=="1")
            {
                resetfollowup();
                bindfollowupdata();
                ShowMessage("Record Updated!!!", MessageType.Success);
                lbtnaddfollowup.Visible = true;
                lbtnupdatefollowup.Visible = false;
            }
            else
            {
                ShowMessage("Record Not Updated!!!", MessageType.Error);
            }
            

        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Button12.Text == "Add")
            {
                int count = 0;
                if (fupload.HasFiles)
                {
                    foreach (HttpPostedFile uploadedFile in fupload.PostedFiles)
                    {
                        DateTime utcTime = DateTime.UtcNow;
                        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                        DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                        uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Upload/"), uploadedFile.FileName));
                        string filepath = "~/Upload/" + uploadedFile.FileName;
                       string result= bal.Saveinquiryfiles(Convert.ToInt32(lblcomno.Text), uploadedFile.FileName, filepath, localTime, lblloginid.Text);
                        if(result=="1")
                        {
                            ShowMessage("Record Save!!!", MessageType.Success);
                        }
                        else
                        {
                            ShowMessage("Record Not Save!!!", MessageType.Error);
                        }
                    }
                }
            }
            else
            {
                string file = "";
                if (fupload.HasFiles)
                {
                    foreach (HttpPostedFile uploadedFile in fupload.PostedFiles)
                    {
                        DateTime utcTime = DateTime.UtcNow;
                        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                        DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                        uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Upload/"), uploadedFile.FileName));
                        string filepath = "~/Upload/" + uploadedFile.FileName;
                        string result=bal.updateinquiryfiles(Convert.ToInt32(hffileno.Value), Convert.ToInt32(lblcomno.Text), uploadedFile.FileName, filepath, localTime, lblloginid.Text);
                        if (result == "1")
                        {
                            ShowMessage("Record Updated!!!", MessageType.Success);
                        }
                        else
                        {
                            ShowMessage("Record Not Updated!!!", MessageType.Error);
                        }
                    }
                }
                else
                {
                    hffileno.Value = "";
                    filename.Text = "";
                }
            }
            hffileno.Value = "";
            filename.Text = "";
            Button12.Text = "Add";
            bindfiledata();
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }


        //string filepath = Server.MapPath("\\Upload");
        //HttpFileCollection uploadedFiles = Request.Files;
        //Span1.Text = string.Empty;

        //for (int i = 0; i < uploadedFiles.Count; i++)
        //{
        //    HttpPostedFile userPostedFile = uploadedFiles[i];

        //    try
        //    {
        //        if (userPostedFile.ContentLength > 0)
        //        {
        //            Span1.Text += "<u>File #" + (i + 1) + "</u><br>";
        //            Span1.Text += "File Content Type: " + userPostedFile.ContentType + "<br>";
        //            Span1.Text += "File Size: " + userPostedFile.ContentLength + "kb<br>";
        //            Span1.Text += "File Name: " + userPostedFile.FileName + "<br>";

        //        }
        //    }
        //    catch (Exception Ex)
        //    {
        //        Span1.Text += "Error: <br>" + Ex.Message;
        //    }
        //}
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string filepath = Server.MapPath("\\Upload");
        HttpFileCollection uploadedFiles = Request.Files;
        Span1.Text = string.Empty;

        for (int i = 0; i < uploadedFiles.Count; i++)
        {
            HttpPostedFile userPostedFile = uploadedFiles[i];

            try
            {
                if (userPostedFile.ContentLength > 0)
                {
                    Span1.Text += "<u>File #" + (i + 1) + "</u><br>";
                    Span1.Text += "File Content Type: " + userPostedFile.ContentType + "<br>";
                    Span1.Text += "File Size: " + userPostedFile.ContentLength + "kb<br>";
                    Span1.Text += "File Name: " + userPostedFile.FileName + "<br>";

                }
            }
            catch (Exception Ex)
            {
                Span1.Text += "Error: <br>" + Ex.Message;
            }
        }
    }
    protected void lbtnresetfollowup_Click(object sender, EventArgs e)
    {
        resetfollowup();
    }
    protected void grdfollowup_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                DataTable dtdata = bal.getFollowupDetailsdatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    dpfollowuptype.SelectedValue = dtdata.Rows[0]["Follotype"].ToString();
                    dpfollowstatus.SelectedValue = dtdata.Rows[0]["FolloStatus"].ToString();
                    txtfremarks.Text = dtdata.Rows[0]["Remarks"].ToString();
                    txtfdate.Text = dtdata.Rows[0]["NextFolldate"].ToString();
                    lbtnaddfollowup.Visible = false;
                    lbtnupdatefollowup.Visible = true;
                    //  bindDetail();
                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bal.deleteinquiryfollowupdatabyidBAL(lblid.Text);

                ShowMessage("Record Deleted!!!", MessageType.Success);

                bindfollowupdata();


            }

        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
          
           
           
           


            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            dt1 = bal.checkInqiuryalreadyBAL(txtno.Text, txtdate.Text, Convert.ToInt32(dpcust.SelectedValue.ToString()));
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Inquiry Already Exist On "+ txtdate.Text + "!!!", MessageType.Error);
            }
            dt2 = bal.checkInqiuryStatusBAL(lblloginid.Text, Convert.ToInt32(dpcust.SelectedValue.ToString()));
            if (dt2.Rows.Count > 0)
            {
                DateTime CreateDate = Convert.ToDateTime(dt2.Rows[0]["CreateDatetime"]);
                string CreateBy = dt2.Rows[0]["CreateBy"].ToString();
                DateTime Today = DateTime.UtcNow;
                TimeSpan t = Today.Subtract(CreateDate);
                int Diff = Convert.ToInt32(t.Days.ToString());
                if (Diff < 90)
                {
                    ShowMessage("Inquiry Already Assign To Other Employee!!!", MessageType.Error);
                }
            }

            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
               string result= bal.tbl_Inqiury_Master_InsertBAL(Convert.ToInt32(txtno.Text), Convert.ToInt32(lblcomno.Text), txtdate.Text, Convert.ToInt32(dpcust.SelectedValue.ToString()), Convert.ToInt32(dpcontactper.SelectedValue.ToString()), txtcontactno.Text, Convert.ToInt32(ddlDept.SelectedValue.ToString()), Convert.ToInt32(ddldesign.SelectedValue.ToString()), txtemail.Text, txtmobileno.Text, txtmobileno2.Text, Convert.ToInt32(dpstatus.SelectedValue.ToString()), Convert.ToInt32(dpsource.SelectedValue.ToString()), txtremarks.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    Response.Redirect("InquiryRegistry.aspx", false);
                }
                else
                {
                    ShowMessage("Inquiry Not Created!!!", MessageType.Error);
                }
               
            }
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }

    }
    protected void dpcust_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            dpcontactper.Items.Clear();
            txtcontactno.Text = string.Empty;
            ddlDept.ClearSelection();
            ddldesign.ClearSelection();
            if (dpcust.SelectedIndex > 0)
            {
                DataTable dtbtype = new DataTable();
                dtbtype = bal.getCustomerConatctPersonBAL(Convert.ToInt32(dpcust.SelectedValue.ToString()));
                if (dtbtype.Rows.Count > 0)
                {
                    dpcontactper.DataSource = dtbtype;
                    dpcontactper.DataTextField = "ContactName";
                    dpcontactper.DataValueField = "Id";
                    dpcontactper.DataBind();
                }
                dpcontactper.Items.Insert(0, new ListItem("----Select Contact----", "0"));
            }
            //  dpfollowstatus.Items.Insert(0, new ListItem("----Select Status----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void dpitem_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            binduom();
            DataTable dtdata = bal.getallitemBAL(Convert.ToInt32(dpitem.SelectedValue));
            if (dtdata.Rows.Count > 0)
            {
                //  txtrate.Text = dtdata.Rows[0]["Itemrate"].ToString();
                dpuom.ClearSelection();
                dpuom.Items.FindByValue(dtdata.Rows[0]["ItemUOM"].ToString()).Selected = true;
                int uomvaluye = Convert.ToInt32(dpuom.SelectedValue.ToString());
                txtqty.Focus();
                if(dtdata.Rows[0]["Extra1"].ToString()=="Yes")
                {
                   
                    BindBOM(Convert.ToInt32(dpitem.SelectedValue));
                }
                else
                {
                    ddlBOM.Enabled = false;
                    ddlBOM.Items.Clear();
                    ddlBOM.Items.Insert(0, new ListItem("----Select BOM----", "0"));
                }
            }
        }
        catch (Exception ex)
        {


        }
    }
    protected void dpcontactper_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (dpcontactper.SelectedIndex > 0)
            {
                binddepartment();
                binddesignation();
                DataTable dtdata = bal.getCustomercontactdatabyidBAL(dpcontactper.SelectedValue.ToString());
                if (dtdata.Rows.Count > 0)
                {
                    ddlDept.ClearSelection();
                    ddldesign.ClearSelection();
                    txtcontactno.Text = dtdata.Rows[0]["ContactPhone"].ToString();
                    txtemail.Text = dtdata.Rows[0]["ContactEmail"].ToString();
                    txtmobileno.Text = dtdata.Rows[0]["ContactMobileno1"].ToString();
                    txtmobileno2.Text = dtdata.Rows[0]["ContactMobileno2"].ToString();
                    ddlDept.Items.FindByValue(dtdata.Rows[0]["Dept"].ToString()).Selected = true;
                    ddldesign.Items.FindByValue(dtdata.Rows[0]["Design"].ToString()).Selected = true;
                }
            }
            else
            {
                txtcontactno.Text = string.Empty;
                ddlDept.ClearSelection();
                ddldesign.ClearSelection();
            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void lbtnresetcontact_Click(object sender, EventArgs e)
    {
        resetcontact();
    }
    protected void btnresetfile_Click(object sender, EventArgs e)
    {
        filename.Text = string.Empty;
        Button12.Text = "Add";
    }
    protected void btnresetinq_Click(object sender, EventArgs e)
    {
        resetcontact();
        resetfollowup();
        resetinq();
    }
    protected void resetinq()
    {
        string zoneId = "India Standard Time";
        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
        DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
        txtfdate.Text = now.ToString("dd/MM/yyyy");
        txtdate.Text = now.ToString("dd/MM/yyyy");
        getInquiryNo();
        getmaxcomno();
        dpcust.ClearSelection();
        dpstatus.ClearSelection();
        dpcontactper.ClearSelection();
        txtcontactno.Text = string.Empty;
        ddlDept.ClearSelection();
        ddldesign.ClearSelection();
        txtemail.Text = string.Empty;
        dpsource.ClearSelection();
        txtmobileno.Text = string.Empty;
        txtmobileno2.Text = string.Empty;
        txtremarks.Text = string.Empty;
        dpcust.Focus();
        binditemdata();
        bindfollowupdata();
        bindfiledata();
    }
    protected void grdfiles_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            hffileno.Value = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                DataTable dtdata = bal.getinquiryfiledatabyidBAL(Convert.ToInt32(lblid.Text));
                if (dtdata.Rows.Count > 0)
                {
                    filename.Text = dtdata.Rows[0]["FileName"].ToString();
                    Button12.Text = "Update";
                    //  bindDetail();
                }
            }
            else if (e.CommandName == "deletedata")
            {
                result = bal.deleteinquiryfiledatabyidBAL(Convert.ToInt32(lblid.Text));
                ShowMessage("Record Deleted!!!", MessageType.Success);
                bindfiledata();
            }
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }
    }

    public void bindfiledata()
    {
        try
        {
            DataTable dtcontact = new DataTable();
            dtcontact = bal.getinquiryfiledatabynoBAL(Convert.ToInt32(lblcomno.Text));
            if (dtcontact.Rows.Count > 0)
            {
                grdfiles.DataSource = dtcontact;
                grdfiles.DataBind();
                grdfiles.UseAccessibleHeader = true;
                grdfiles.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grdfiles.DataSource = dtcontact;
                grdfiles.DataBind();
                grdfiles.UseAccessibleHeader = true;
                grdfiles.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        txtcreatestatus.Text = "";
        mpstatus.Show();
    }

    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        txtsource.Text = "";
        mpcustomer.Show();
    }

    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        txtcreateuom.Text = "";
        ModalPopupExtender2.Show();
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        txtapplicationtype.Text = "";
        ModalPopupExtender3.Show();
    }

    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        txtmachinetype.Text = "";
        ModalPopupExtender4.Show();
    }

    protected void LinkButton16_Click(object sender, EventArgs e)
    {
        txtcompressortype.Text = "";
        ModalPopupExtender5.Show();
    }

    protected void LinkButton20_Click(object sender, EventArgs e)
    {
        txtfollowup.Text = "";
        ModalPopupExtender7.Show();
    }

    protected void LinkButton21_Click(object sender, EventArgs e)
    {
        txtcreatestatus2.Text = "";
        ModalPopupExtender8.Show();
    }

    protected void lbtncontactperson_Click(object sender, EventArgs e)
    {
        if(Convert.ToInt32(dpcust.SelectedValue)>0)
        {
            int CustID = Convert.ToInt32(dpcust.SelectedValue);
            string URL = "UpdateCustomerMaster.aspx?no="+ CustID + "";
            Response.Write("<script type='text/javascript'>window.open('" + URL + "');</script>");
            //Response.Redirect(String.Format("UpdateCustomerMaster.aspx?no={0}", CustID), false);
        }
        else
        {
            ShowMessage("Please Select Customer First", MessageType.Error);
        }
    }

    public void BindBOM(int ItemID)
    {

        try
        {

            DataTable dtcontact = new DataTable();
            dtcontact = bal.GetBomdetailsByItemBAL(Convert.ToInt32(ItemID));
            if (dtcontact.Rows.Count > 0)
            {
                ddlBOM.DataSource = dtcontact;
                ddlBOM.DataTextField = "Name";
                ddlBOM.DataValueField = "BOMID";
                ddlBOM.DataBind();
                ddlBOM.Items.Insert(0, new ListItem("----Select BOM----", "0"));
            }
            else
            {
                ddlBOM.Enabled = false;
                ddlBOM.Items.Clear();
                ddlBOM.Items.Insert(0, new ListItem("----Select BOM----", "0"));
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void grdproduct_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string customerId = grdproduct.DataKeys[e.Row.RowIndex].Value.ToString();
            //string custorId = e.Row.DataItem.ToString();
            DataTable dt = new DataTable();
            dt = bal.GetBOMTable(customerId);
            GridView BOMGrid = e.Row.FindControl("BOMGrid") as GridView;
            BOMGrid.DataSource = dt;
            BOMGrid.DataBind();
        }

    }

    protected void ddlBOM_SelectedIndexChanged(object sender, EventArgs e)
    {
        string result = ddlBOM.SelectedItem.Text.ToString();
    }
}


