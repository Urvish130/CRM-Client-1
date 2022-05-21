using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class OrderEntry : System.Web.UI.Page
{
    BusinessLogicLayer bal = new BusinessLogicLayer();
    DataAccessLayer dal = new DataAccessLayer();

    public bool flag = true;
    public int Count = 0;
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
                    if (Request.QueryString["quoteno"] == null)
                    {
                        ddlDept.Enabled = false;
                        ddldesign.Enabled = false;
                        txtamount.Attributes.Add("readonly", "readonly");
                        txtItemFinal.Attributes.Add("readonly", "readonly");
                        txtItemBenefit.Attributes.Add("readonly", "readonly");
                        txtItemGST.Attributes.Add("readonly", "readonly");
                        txtItemNetValue.Attributes.Add("readonly", "readonly");
                        txtItemTotalValue.Attributes.Add("readonly", "readonly");
                        txtfinalprice.Attributes.Add("readonly", "readonly");
                        txttotalcost.Attributes.Add("readonly", "readonly");
                        txtTotalBenefit.Attributes.Add("readonly", "readonly");
                        txtFinalpriceGST.Attributes.Add("readonly", "readonly");
                        string zoneId = "India Standard Time";
                        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
                        DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
                        //txtfdate.Text = now.ToString("dd/MM/yyyy");
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

                        
                        txtdate.Text = fdate;
                        bindstatus();
                        bindsource();
                        //bindfollowup();
                        binditem();
                        binduom();
                        binddepartment();
                        binddesignation();
                        getInquiryNo();
                        getmaxcomno();
                        bindcustomer();
                        //BindDetail();
                        bincustcontact();
                        bindcoverletter();
                        //btnUpdate.Visible = true;
                    }
                    else
                    {
                        ddlDept.Enabled = false;
                        ddldesign.Enabled = false;
                        txtamount.Attributes.Add("readonly", "readonly");
                        txtItemFinal.Attributes.Add("readonly", "readonly");
                        txtItemBenefit.Attributes.Add("readonly", "readonly");
                        txtItemGST.Attributes.Add("readonly", "readonly");
                        txtItemNetValue.Attributes.Add("readonly", "readonly");
                        txtItemTotalValue.Attributes.Add("readonly", "readonly");
                        txtfinalprice.Attributes.Add("readonly", "readonly");
                        txttotalcost.Attributes.Add("readonly", "readonly");
                        txtTotalBenefit.Attributes.Add("readonly", "readonly");
                        txtFinalpriceGST.Attributes.Add("readonly", "readonly");
                        lblqno.Text = Request.QueryString["quoteno"].ToString();
                        string zoneId = "India Standard Time";
                        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
                        DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
                        //txtfdate.Text = now.ToString("dd/MM/yyyy");
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

                       
                        txtdate.Text = fdate;
                        lblloginid.Text = Session["id"].ToString();
                        lblrole.Text = Session["role"].ToString();
                        bindstatus();
                        bindsource();
                        //bindfollowup();
                        binditem();
                        bindcustomer();
                        getInquiryNo();
                        getmaxcomno();
                        filldata();
                        fillitemdata();
                        //fillfollowupdata();
                        binditemdata();
                        //bindfollowupdata();
                        //      getInquiryNo();
                        //      getmaxcomno();

                          BindDetail();
                        //BindQuoteDetail();

                        //bindcoverletter();
                        
                    }
                }
                
               
            }
            catch (Exception ex)
            {
               
            }

        }
    }
    public void fillitemdata()
    {
        try
        {
            DataTable dtdata = bal.getquotationDetailsdataBAL(Convert.ToInt32(lblqno.Text));
            if (dtdata.Rows.Count > 0)
            {

                for (int i = 0; i < dtdata.Rows.Count; i++)
                {
                    string item = dtdata.Rows[i]["Item"].ToString();
                    string UOM = dtdata.Rows[i]["UOM"].ToString();
                    string Qty = dtdata.Rows[i]["Qty"].ToString();
                    string Rate = dtdata.Rows[i]["Rate"].ToString();
                    decimal Amount = Convert.ToDecimal(dtdata.Rows[i]["Amount"].ToString());
                    string ItemRate = dtdata.Rows[i]["Rate"].ToString();
                    string result = dtdata.Rows[i]["Extra2"].ToString();
                    string GST = dtdata.Rows[i]["Extra5"].ToString();
                    string HSN= dtdata.Rows[i]["Extra4"].ToString(); 
                    decimal Discount = 0;
                    double FinalBasePrice = Convert.ToDouble(dtdata.Rows[i]["FinalbasePrice"].ToString());
                    double Benefit = Convert.ToDouble(dtdata.Rows[i]["ADBenefit"].ToString()); 
                    double NetValue = Convert.ToDouble(dtdata.Rows[i]["NetValue"].ToString()); 
                    decimal GSTTotal = Convert.ToDecimal(dtdata.Rows[i]["GST"].ToString());
                    decimal TotalValue = Convert.ToDecimal(dtdata.Rows[i]["TotalValue"].ToString());

                    if (result == "Yes")
                    {
                        DataTable dtdata2 = bal.CheckBOMforquotquotBAL(Convert.ToInt32(lblqno.Text));
                        DataTable dt2 = new DataTable();
                        if (dtdata2.Rows.Count > 0)
                        {
                            for (int j = 0; j < dtdata2.Rows.Count; j++)
                            {
                                string SubItem = dtdata2.Rows[j]["SubItemName"].ToString();
                                string SubRate = dtdata2.Rows[j]["SubRate"].ToString();
                                string BOM = dtdata2.Rows[j]["QuotationBOM"].ToString();
                                string SubQty = dtdata2.Rows[j]["Qty"].ToString();
                                string ItemNO = dtdata2.Rows[j]["ItemNo"].ToString();
                                DateTime utcTime = DateTime.UtcNow;
                                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                              
                                string result1 = bal.tbl_Order_BOM_InsertBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(ItemNO), Convert.ToInt32(BOM), Convert.ToDecimal(SubQty), Convert.ToDecimal(SubRate), Convert.ToInt32(SubItem), lblloginid.Text, localTime, lblqno.Text, "", "", "", "");


                            }
                        }
                    }
                    DataTable dt1 = new DataTable();
                    dt1 = bal.checkOrderProductNameBAL(lblcomno.Text, Convert.ToInt32(item));
                    if (dt1.Rows.Count > 0)
                    {
                        ShowMessage("Name Already Exist!!!", MessageType.Error);
                    }
                    else
                    {

                        DateTime utcTime = DateTime.UtcNow;
                        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                        DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                        //  txtrate.Text = "2000";
                        bal.tbl_Order_Details_InsertBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(item),
                            Convert.ToInt32(UOM), Convert.ToDecimal(Qty), Convert.ToDecimal(ItemRate),
                            Convert.ToDecimal(Amount.ToString("0.00")), lblloginid.Text, localTime,
                            "0", result, "", HSN, GST, Convert.ToDecimal(Discount.ToString("0.00")), Convert.ToDecimal(FinalBasePrice.ToString("0.00")),
                              Convert.ToDecimal(GSTTotal.ToString("0.00")), Convert.ToDecimal(Benefit.ToString("0.00")), Convert.ToDecimal(NetValue.ToString("0.00")),
                           Convert.ToDecimal(TotalValue.ToString("0.00")));

                    }

                }
                binditemdata();
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    public void bindcoverletter()
    {
        try
        {
            DataTable dtdesign = new DataTable();


            dtdesign = dal.getallcoverletterDAL();
            if (dtdesign.Rows.Count > 0)
            {
                dpcoverletter.DataSource = dtdesign;
                dpcoverletter.DataTextField = "Title";
                dpcoverletter.DataValueField = "id";
                dpcoverletter.DataBind();
            }
            dpcoverletter.Items.Insert(0, new ListItem("----Select Cover Letter----", "0"));
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
            DataTable dtdata = bal.getallitemBAL(Convert.ToInt32(dpitem.SelectedValue));
            if (dtdata.Rows.Count > 0)
            {
                txthsncode.Text = "";
                txtqty.Text = "";
                txtamount.Text = "";
                binduom();
                txtrate.Text = dtdata.Rows[0]["Itemrate"].ToString();
                dpuom.SelectedValue = dtdata.Rows[0]["ItemUOM"].ToString();
                txthsncode.Text = dtdata.Rows[0]["ItemHsn"].ToString();
                txtItemGST.Text = dtdata.Rows[0]["Itemgst"].ToString();
                int uomvaluye = Convert.ToInt32(dpuom.SelectedValue.ToString());
                txtqty.Focus();
                if (dtdata.Rows[0]["Extra1"].ToString() == "Yes")
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
    //public void fillfollowupdata()
    //{
    //    try
    //    {// chage here
    //        DataTable dtdata = bal.getquotationDetailsdatabyidDAL(Convert.ToInt32(lblqno.Text));
    //        if (dtdata.Rows.Count > 0)
    //        {
    //            for (int i = 0; i < dtdata.Rows.Count; i++)
    //            {
    //                string NextFolldate = dtdata.Rows[i]["NextFolldate"].ToString();
    //                string Follotype = dtdata.Rows[i]["Follotype"].ToString();
    //                string Assignto = dtdata.Rows[i]["Assignto"].ToString();
    //                string FolloStatus = dtdata.Rows[i]["FolloStatus"].ToString();
    //                string Remarks = dtdata.Rows[i]["Remarks"].ToString();
    //                string Comdate = dtdata.Rows[i]["Comdate"].ToString();
    //                string Comremarks = dtdata.Rows[i]["Comremarks"].ToString();
    //                DataTable dt1 = new DataTable();
    //                dt1 = bal.checkQuotationFollowupBAL(lblcomno.Text, NextFolldate, Convert.ToInt32(Follotype));
    //                if (dt1.Rows.Count > 0)
    //                {
    //                    ShowMessage("Name Already Exist !!!", MessageType.Error);
    //                }
    //                else
    //                {
    //                    DateTime utcTime = DateTime.UtcNow;
    //                    TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    //                    DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
    //                    bal.tbl_Order_Followup_InsertBAL(Convert.ToInt32(lblcomno.Text), NextFolldate, Convert.ToInt32(Follotype), Convert.ToInt32(Assignto), Convert.ToInt32(FolloStatus), Remarks, Comdate, Comremarks, "", localTime, "", "", "", "", "");
    //                }
    //                bindfollowupdata();
    //            }
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        ex.ToString();
    //    }
    //}
    public string getmaxcomno()
    {
        string s = string.Empty, id = string.Empty;
        Getconnection c = new Getconnection();
        try
        {
            string s1 = "select Top (1) No from Order_No_Series    order By  Id DESC";
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
            bal.tbl_Order_No_Series_InsertBAL(s, "", "");
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
            string s1 = "select Top (1) OrderNo from Order_Master    order By  Id DESC";
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
    public void binditemdata()
    {

        try
        {
            decimal total = 0;
            decimal TotalBenifit = 0;
            decimal NetValue = 0;
            decimal TotalValue = 0;
            txttotalcost.Text = "0";
           
           
            DataTable dtcontact = new DataTable();
            dtcontact = bal.getallorderitemdatabal(lblcomno.Text);
            gridcount.Text = dtcontact.Rows.Count.ToString();
            if (dtcontact.Rows.Count > 0)
            {
                for (int i = 0; i < dtcontact.Rows.Count; i++)
                {
                    total = Convert.ToDecimal(total) + Convert.ToDecimal(dtcontact.Rows[i]["FinalbasePrice"].ToString());
                    TotalBenifit = Convert.ToDecimal(TotalBenifit) + Convert.ToDecimal(dtcontact.Rows[i]["ADBenefit"].ToString());
                    NetValue = Convert.ToDecimal(NetValue) + Convert.ToDecimal(dtcontact.Rows[i]["NetValue"].ToString());
                    TotalValue = Convert.ToDecimal(TotalValue) + Convert.ToDecimal(dtcontact.Rows[i]["TotalValue"].ToString());

                }
                txttotalcost.Text = total.ToString();
                txtTotalBenefit.Text = TotalBenifit.ToString();
                txtfinalprice.Text = NetValue.ToString();
                txtFinalpriceGST.Text = TotalValue.ToString();
                gridcount.Text = dtcontact.Rows.Count.ToString();
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
            else
            {
                txttotalcost.Text = total.ToString();
                txtTotalBenefit.Text = TotalBenifit.ToString();
                txtfinalprice.Text = NetValue.ToString();
                txtFinalpriceGST.Text = TotalValue.ToString();
                gridcount.Text = dtcontact.Rows.Count.ToString();
            }

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    public void filldata()
    {
        try
        {
            DataTable dtdata = bal.getallQuotationdatabynoBAL(lblqno.Text);
            if (dtdata.Rows.Count > 0)
            {
                txtno.Text = dtdata.Rows[0]["QuotationNo"].ToString();
                txtdate.Text = dtdata.Rows[0]["Quotationdate"].ToString();
                txtemail.Text = dtdata.Rows[0]["ContactEmail"].ToString();
                txtcontactno.Text = dtdata.Rows[0]["Custcontactno"].ToString();
                txtmobileno.Text = dtdata.Rows[0]["ContactMno1"].ToString();
                txtmobileno2.Text = dtdata.Rows[0]["ContactMno2"].ToString();             
                dpcust.SelectedValue = dtdata.Rows[0]["Custname"].ToString();
                bincustcontact();
                dpcontactper.SelectedValue = dtdata.Rows[0]["Custcontact"].ToString();
                dpsource.SelectedValue = dtdata.Rows[0]["InqiurySource"].ToString();
                dpstatus.SelectedValue = dtdata.Rows[0]["InqiuryStatus"].ToString();
                txtremarks.Text = dtdata.Rows[0]["Remarks"].ToString();
                binddepartment();
                binddesignation();
                ddlDept.SelectedValue = dtdata.Rows[0]["Dept"].ToString();
                ddldesign.SelectedValue = dtdata.Rows[0]["Design"].ToString();               
                txttotalcost.Text = dtdata.Rows[0]["TotalCost"].ToString();
                txtTotalDiscount.Text = dtdata.Rows[0]["Discount"].ToString();
                txtTotalBenefit.Text = dtdata.Rows[0]["Benifit"].ToString();
                txtfinalprice.Text = dtdata.Rows[0]["FinalPrice"].ToString();
                txtGST.Text = dtdata.Rows[0]["GST"].ToString();
                txtFinalpriceGST.Text = dtdata.Rows[0]["FinalPriceGST"].ToString();
                //txtquotfor.Text = dtdata.Rows[0]["Extra2"].ToString();

            }
        }
        catch (Exception ex)
        {

        }
    }
    public void bincustcontact()
    {
        try
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
            //  dpfollowstatus.Items.Insert(0, new ListItem("----Select Status----", "0"));

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
                dpstatus.DataSource = dtbtype;
                dpstatus.DataTextField = "Status";
                dpstatus.DataValueField = "id";
                dpstatus.DataBind();


               
            }
            dpstatus.Items.Insert(0, new ListItem("----Select Status----", "0"));
          

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
            dpcust.Items.Insert(0, new ListItem("----Select Customer----", "0"));
            //dpfollowstatus.Items.Insert(0, new ListItem("----Select Status----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
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
            }
            dpuom.Items.Insert(0, new ListItem("----Select UOM----", "0"));

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

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    //public void bindfollowup()
    //{
    //    try
    //    {
    //        DataTable dtbtype = new DataTable();


    //        dtbtype = bal.getallfollowuptypefroadminBAL();
    //        if (dtbtype.Rows.Count > 0)
    //        {
    //            dpfollowuptype.DataSource = dtbtype;
    //            dpfollowuptype.DataTextField = "FollowUpType";
    //            dpfollowuptype.DataValueField = "id";
    //            dpfollowuptype.DataBind();
    //        }
    //        dpfollowuptype.Items.Insert(0, new ListItem("----Select Followup Type----", "0"));

    //    }
    //    catch (Exception ex)
    //    {
    //        Getconnection.SiteErrorInsert(ex);
    //    }
    //}

    public void resetcontact()
    {
        try
        {

            //dp.ClearSelection();
            //ddldesign.ClearSelection();
            //txtdob.Text = "";
            //txtdoani.Text = "";
            //   dpprincipal.ClearSelection();
            dpitem.ClearSelection();
            dpuom.ClearSelection();
            //   dpsuppliers.ClearSelection();
            txtqty.Text = "";
            txtrate.Text = "";
            txtamount.Text = "";
            //Txtdiscount.Text = "";
        }
        catch (Exception ex)
        {

        }
    }

    //public void binditemdata()
    //{

    //    try
    //    {

    //        DataTable dtcontact = new DataTable();
    //        dtcontact = bal.getquotationDetailsdataBAL(Convert.ToInt32(lblcomno.Text));
    //        if (dtcontact.Rows.Count > 0)
    //        {
    //            grdproduct.DataSource = dtcontact;
    //            grdproduct.DataBind();
    //            grdproduct.UseAccessibleHeader = true;
    //            grdproduct.HeaderRow.TableSection = TableRowSection.TableHeader;
    //        }
    //        else
    //        {
    //            grdproduct.DataSource = dtcontact;
    //            grdproduct.DataBind();
    //            grdproduct.UseAccessibleHeader = true;
    //            grdproduct.HeaderRow.TableSection = TableRowSection.TableHeader;
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        Getconnection.SiteErrorInsert(ex);
    //    }
    //}

    //public void bindfollowupdata()
    //{

    //    try
    //    {

    //        DataTable dtcontact = new DataTable();
    //        dtcontact = bal.getOrderFollowupdataDAL(Convert.ToInt32(lblcomno.Text));
    //        if (dtcontact.Rows.Count > 0)
    //        {
    //            grdfollowup.DataSource = dtcontact;
    //            grdfollowup.DataBind();
    //            grdfollowup.UseAccessibleHeader = true;
    //            grdfollowup.HeaderRow.TableSection = TableRowSection.TableHeader;
    //        }
    //        else
    //        {
    //            grdfollowup.DataSource = dtcontact;
    //            grdfollowup.DataBind();
    //            grdfollowup.UseAccessibleHeader = true;
    //            grdfollowup.HeaderRow.TableSection = TableRowSection.TableHeader;
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        Getconnection.SiteErrorInsert(ex);
    //    }
    //}
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }

    public void ResetItemData()
    {
        txtamount.Text = "";
        ddlBOM.Items.Clear();
        dpuom.Items.Clear();
        txthsncode.Text = "";
        dpitem.ClearSelection();
        txtqty.Text = "";
        txtrate.Text = "";
        txtItemBenefit.Text = "";
        txtItemDiscount.Text = "";
        txtItemGST.Text = "";
        txtItemGSTTotal.Text = "";
        txtItemNetValue.Text = "";
        txtItemTotalValue.Text = "";
        txtItemFinal.Text = "";
    }
    protected void grdproduct_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                DataTable dtdata = bal.getOrderDetailsdatabyidDAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    dpitem.SelectedValue = dtdata.Rows[0]["Item"].ToString();
                    dpitem.SelectedValue = dtdata.Rows[0]["Item"].ToString();
                    binduom();
                    dpuom.SelectedValue = dtdata.Rows[0]["UOM"].ToString();
                    txtqty.Text = dtdata.Rows[0]["Qty"].ToString();
                    txtrate.Text = dtdata.Rows[0]["Rate"].ToString();
                    txtamount.Text = dtdata.Rows[0]["Amount"].ToString();
                    txthsncode.Text = dtdata.Rows[0]["Extra4"].ToString();
                    txtItemDiscount.Text = dtdata.Rows[0]["Discount"].ToString();
                    txtItemFinal.Text = dtdata.Rows[0]["FinalbasePrice"].ToString();
                    txtItemGST.Text = dtdata.Rows[0]["Extra5"].ToString();
                    txtItemBenefit.Text = dtdata.Rows[0]["ADBenefit"].ToString();
                    txtItemNetValue.Text = dtdata.Rows[0]["NetValue"].ToString();
                    txtItemTotalValue.Text = dtdata.Rows[0]["TotalValue"].ToString();
                    txtItemGSTTotal.Text = dtdata.Rows[0]["GST"].ToString();
                    dpitem.Focus();
                    btnaddproduct.Visible = false;
                    lbtnupdatecontact.Visible = true;
                    //  bindDetail();
                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bal.deleteorderdetailsdatabyidBAL(lblid.Text);

                ShowMessage("Record Deleted!!!", MessageType.Success);

                binditemdata();


            }

        }
        catch (Exception ex)
        {

        }
    }
    //protected void grdfollowup_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    try
    //    {
    //        string result;
    //        lblid.Text = e.CommandArgument.ToString();
    //        if (e.CommandName == "editdata")
    //        {
    //            DataTable dtdata = bal.getorderFollowupDetailsdatabyidBAL(lblid.Text);
    //            if (dtdata.Rows.Count > 0)
    //            {
    //                dpfollowuptype.SelectedValue = dtdata.Rows[0]["Follotype"].ToString();
    //                dpfollowstatus.SelectedValue = dtdata.Rows[0]["FolloStatus"].ToString();


    //                txtfremarks.Text = dtdata.Rows[0]["Remarks"].ToString();
    //                txtfdate.Text = dtdata.Rows[0]["NextFolldate"].ToString();



    //                lbtnaddfollowup.Visible = false;
    //                lbtnupdatefollowup.Visible = true;
    //                //  bindDetail();
    //            }
    //        }
    //        else if (e.CommandName == "deletedata")
    //        {

    //            result = bal.deleteorderfollowupdatabyidBAL(lblid.Text);

    //            ShowMessage("Record Deleted!!!", MessageType.Success);

    //            bindfollowupdata();


    //        }

    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //}
   
   
    //protected void lbtnaddfollowup_Click(object sender, EventArgs e)
    //{
    //    try
    //    {

    //        DataTable dt1 = new DataTable();
    //        dt1 = bal.checkOrderFollowupBAL(lblcomno.Text, txtfdate.Text, Convert.ToInt32(dpfollowuptype.SelectedValue.ToString()));
    //        if (dt1.Rows.Count > 0)
    //        {
    //            ShowMessage("Name Already Exist!!!", MessageType.Error);
    //        }
    //        else
    //        {

    //            DateTime utcTime = DateTime.UtcNow;
    //            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    //            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

    //            bal.tbl_Order_Followup_InsertBAL(Convert.ToInt32(lblcomno.Text), txtfdate.Text, Convert.ToInt32(dpfollowuptype.SelectedValue.ToString()), 0, Convert.ToInt32(dpfollowstatus.SelectedValue.ToString()), txtfremarks.Text, "", "", lblloginid.Text, localTime, "", "", "", "", "");
    //            resetfollowup();
    //            bindfollowupdata();
    //            //txtcontactname.Focus();
    //        }
    //    }
    //    catch (Exception ex)
    //    {

    //    }

    //}
    //public void resetfollowup()
    //{
    //    try
    //    {
    //        string zoneId = "India Standard Time";
    //        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
    //        DateTime now = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tzi);
    //        txtfdate.Text = now.ToString("dd/MM/yyyy");


    //        dpfollowuptype.ClearSelection();


    //        dpfollowstatus.ClearSelection();

    //        txtfremarks.Text = "";

    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //}
    //protected void lbtnupdatefollowup_Click(object sender, EventArgs e)
    //{
    //    try
    //    {


    //        DateTime utcTime = DateTime.UtcNow;
    //        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    //        DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

    //        bal.tbl_Order_Followup_updateBAL(Convert.ToInt32(lblid.Text), Convert.ToInt32(lblqno.Text), txtfdate.Text, Convert.ToInt32(dpfollowuptype.SelectedValue.ToString()), 0, Convert.ToInt32(dpfollowstatus.SelectedValue.ToString()), txtfremarks.Text, "", "", lblloginid.Text, localTime, "", "", "", "", "");
    //        resetfollowup();
    //        bindfollowupdata();
    //        ShowMessage("Record Save!!!", MessageType.Success);


    //        lbtnaddfollowup.Visible = true;
    //        lbtnupdatefollowup.Visible = false;

    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //}
    //protected void lbtnresetfollowup_Click(object sender, EventArgs e)
    //{

    //}
    public void BindDetail()
    {

        try
        {
            DataTable dt = bal.getallquotatationtermsandconditionsfroadminBAL(Convert.ToInt32(lblqno.Text));
            if (dt.Rows.Count > 0)
            {
                for(int i=0;i< dt.Rows.Count; i++)
                {
                    DateTime utcTime = DateTime.UtcNow;
                    TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                    DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                    string Noseries = dt.Rows[i]["Noseries"].ToString();
                    string Termstitle = dt.Rows[i]["Termstitle"].ToString();
                    string TermsId = dt.Rows[i]["TermsId"].ToString();
                    string TermsDescription = dt.Rows[i]["TermsDescription"].ToString();
                    string Status = dt.Rows[i]["Status"].ToString();
                    string result = bal.tbl_Order_tandc_InsertBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(TermsId), Termstitle, TermsDescription, Status, lblloginid.Text, localTime, "", "", "", "", "");
                }

               
            }
            DataTable dt1 = bal.getallOrderTermsBAL(Convert.ToInt32(lblcomno.Text));
            if (dt1.Rows.Count > 0)
            {
                grddata1.DataSource = dt1;
                grddata1.DataBind();
                grddata1.UseAccessibleHeader = true;
                grddata1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grddata1.DataSource = dt1;
                grddata1.DataBind();
                grddata1.UseAccessibleHeader = true;
                grddata1.HeaderRow.TableSection = TableRowSection.TableHeader;
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

            string resultdata = "";


            DataTable dt1 = new DataTable();
            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

            try
            {

                DataTable dt2 = new DataTable();
                dt2 = bal.checkOrderStatusBAL(lblloginid.Text, Convert.ToInt32(dpcust.SelectedValue.ToString()));
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
                    string inqno = lblqno.Text;

                    if (inqno != "")
                    {
                        resultdata = bal.tbl_Order_Master_InsertBAL(Convert.ToInt32(txtno.Text), Convert.ToInt32(lblcomno.Text), txtdate.Text,
                           Convert.ToInt32(dpcust.SelectedValue.ToString()), Convert.ToInt32(dpcontactper.SelectedValue.ToString()),
                           txtcontactno.Text, Convert.ToInt32(ddlDept.SelectedValue.ToString()), Convert.ToInt32(ddldesign.SelectedValue.ToString()),
                           txtemail.Text, txtmobileno.Text, txtmobileno2.Text, 0,
                           Convert.ToDecimal(txttotalcost.Text), 0,
                           Convert.ToDecimal(txtTotalBenefit.Text), Convert.ToDecimal(txtfinalprice.Text), 0, Convert.ToDecimal(txtFinalpriceGST.Text), Convert.ToInt32(dpstatus.SelectedValue.ToString()),
                           Convert.ToInt32(dpsource.SelectedValue.ToString()), Convert.ToInt32(lblqno.Text), txtremarks.Text, lblloginid.Text, localTime, "QuottoOrder"
                           , "", "", "", "");

                    }
                    if (resultdata == "1")
                    {
                        foreach (GridViewRow row in grddata1.Rows)
                        {
                            if (row.RowType == DataControlRowType.DataRow)
                            {

                                CheckBox chkrow = (row.Cells[0].FindControl("btnchkbox") as CheckBox);

                                string id = ((Label)row.FindControl("lblid")).Text;
                                string title = ((Label)row.FindControl("lblname")).Text;
                                string descp = ((Label)row.FindControl("lbltandc")).Text;
                                if (chkrow.Checked)
                                {
                                    bal.OrderTermsupdate2(id, title, descp, Convert.ToInt32(lblcomno.Text), "True");
                                    //bal.tbl_Order_tandc_InsertBAL(Convert.ToInt32(txtno.Text), id, title, descp, "True", lblloginid.Text, localTime, "", "", "", "", "");
                                }
                                else
                                {
                                    bal.OrderTermsupdate2(TermsID.Text, txtName.Text, Txttandc.Text, Convert.ToInt32(lblcomno.Text), "False");
                                    //bal.tbl_Order_tandc_InsertBAL(Convert.ToInt32(txtno.Text), id, title, descp, "False", lblloginid.Text, localTime, "", "", "", "", "");
                                }
                            }
                        }
                        Response.Redirect("OrderRegistry.aspx", false);
                    }
                    else if (resultdata == "-1")
                    {
                        string Name = dpcust.SelectedItem.Text;
                        ShowMessage("" + Name + "  Already Exist!!!", MessageType.Error);
                    }
                    else
                    {
                        ShowMessage("Record Not Saved!!!", MessageType.Error);
                    }

                }
              
                //else
                //{
                //    bal.tbl_Order_Master_InsertBAL(Convert.ToInt32(txtno.Text), Convert.ToInt32(lblqno.Text), txtdate.Text, Convert.ToInt32(dpcust.SelectedValue.ToString()), Convert.ToInt32(dpcontactper.SelectedValue.ToString()), txtcontactno.Text, Convert.ToInt32(ddlDept.SelectedValue.ToString()), Convert.ToInt32(ddldesign.SelectedValue.ToString()), txtemail.Text, txtmobileno.Text, txtmobileno2.Text, Convert.ToInt32(dpstatus.SelectedValue.ToString()), Convert.ToInt32(dpsource.SelectedValue.ToString()), txtremarks.Text, lblloginid.Text, localTime, "", "", "", "", "");

                //}


            }
            catch (Exception ex)
            {

            }
            //  bal.deleteordertermsandconditionsdata(Convert.ToInt32(txtno.Text));
            




            


        }
        catch (Exception ex)
        {

        }


    }


    protected void closebtn_Click(object sender, EventArgs e)
    {
        myModal.Visible = false;
    }

    protected void btnBOMUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
            string result = bal.tbl_Order_BOM_updateBAL(Convert.ToInt32(lblbomid.Text), Convert.ToString(txtmodelqty.Text), Convert.ToDecimal(txtmodelrate.Text), lblloginid.Text, localTime);
            if (result == "1")
            {
                flag = true;
                ShowMessage("Record Updated!!!", MessageType.Success);
                myModal.Visible = false;
                resetbom();
                binditemdata();
            }
            else
            {
                ShowMessage("Record Not Updated!!!", MessageType.Success);
                myModal.Visible = true;
            }
        }
        catch (Exception ex)
        {

        }

    }

    protected void bomreset_Click(object sender, EventArgs e)
    {
        myModal.Visible = true;
        txtmodelrate.Text = "";
        txtmodelqty.Text = "";
    }

    public void resetbom()
    {

        txtmodelrate.Text = "";
        txtmodelqty.Text = "";
    }


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
                if (result == "1")
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

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        txtcreatestatus.Text = "";
        mpstatus.Show();
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

                string result = bal.Saveunitofmeasurementbll(txtcreateuom.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if (result == "1")
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

    //protected void lbtnaddfollowuptype_Click(object sender, EventArgs e)
    //{


    //    try
    //    {
    //        DataTable dt1 = new DataTable();
    //        dt1 = bal.checkfollowuptypedata(txtfollowup.Text);
    //        if (dt1.Rows.Count > 0)
    //        {
    //            ShowMessage("Name Already Exist!!!", MessageType.Error);
    //            ModalPopupExtender7.Show();
    //        }
    //        else
    //        {
    //            DateTime utcTime = DateTime.UtcNow;
    //            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    //            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

    //            string result = bal.Savefollowuptypebll(txtfollowup.Text, lblloginid.Text, localTime, "", "", "", "", "");
    //            if (result == "1")
    //            {
    //                bindfollowup();
    //                ShowMessage("Record Save!!!", MessageType.Success);
    //                txtfollowup.Text = "";
    //                txtfollowup.Focus();
    //                ModalPopupExtender7.Hide();
    //            }
    //            else
    //            {
    //                ShowMessage("Record Not Save!!!", MessageType.Error);
    //                ModalPopupExtender7.Show();
    //            }

    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        //  Getconnection.SiteErrorInsert(ex);
    //        ShowMessage(ex.ToString(), MessageType.Error);
    //    }
    //}
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

                string result = bal.Savesourcebll(txtsource.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if (result == "1")
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
    //protected void LinkButton20_Click(object sender, EventArgs e)
    //{
    //    txtfollowup.Text = "";
    //    ModalPopupExtender7.Show();
    //}
    protected void RefreshTermsdata(object sender, EventArgs e)
    {
        DataTable dt1 = bal.getallOrderTermsBAL(Convert.ToInt32(lblcomno.Text));
        if (dt1.Rows.Count > 0)
        {
            grddata1.DataSource = dt1;
            grddata1.DataBind();
            grddata1.UseAccessibleHeader = true;
            grddata1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        else
        {
            grddata1.DataSource = dt1;
            grddata1.DataBind();
            grddata1.UseAccessibleHeader = true;
            grddata1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }

    public void ResetTerms()
    {
        DataTable dt1 = bal.getallOrderTermsBAL(Convert.ToInt32(lblcomno.Text));
        if (dt1.Rows.Count > 0)
        {
            grddata1.DataSource = dt1;
            grddata1.DataBind();
            grddata1.UseAccessibleHeader = true;
            grddata1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        else
        {
            grddata1.DataSource = dt1;
            grddata1.DataBind();
            grddata1.UseAccessibleHeader = true;
            grddata1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }

    protected void HyperLink1_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(dpitem.SelectedValue) > 0)
        {
            string URL = "UpdateItem.aspx?no=" + dpitem.SelectedValue + "";
            Response.Write("<script type='text/javascript'>window.open('" + URL + "');</script>");
            //Response.Redirect(String.Format("UpdateItem.aspx?no={0}", dpitem.SelectedValue), false);
        }
        else
        {
            ShowMessage("Please Select Item First!!!", MessageType.Error);
        }

    }

    protected void grddata1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "editdata")
            {
                TermsModel.Visible = true;
                string Id = e.CommandArgument.ToString();
                DataTable dtdata = bal.GetOrderTermsByIDBAL(Id);
                if (dtdata.Rows.Count > 0)
                {
                    TermsID.Text = dtdata.Rows[0]["Id"].ToString();
                    txtName.Text = dtdata.Rows[0]["Termstitle"].ToString();
                    Txttandc.Text = dtdata.Rows[0]["TermsDescription"].ToString();
                    txtName.Focus();


                }
                //string Id = e.CommandArgument.ToString();
                //string URL = "TermsandCondtitions.aspx?no=" + Id + "";
                //Response.Write("<script type='text/javascript'>window.open('" + URL + "');</script>");
            }
        }
        catch(Exception ex)
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
                    ddlDept.Items.FindByValue(dtdata.Rows[0]["Dept"].ToString()).Selected = true;
                    ddldesign.Items.FindByValue(dtdata.Rows[0]["Design"].ToString()).Selected = true;
                    txtemail.Text = dtdata.Rows[0]["ContactEmail"].ToString();
                    txtmobileno.Text = dtdata.Rows[0]["ContactMobileno1"].ToString();
                    txtmobileno2.Text = dtdata.Rows[0]["ContactMobileno2"].ToString();
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
    protected void dpcust_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            dpcontactper.Items.Clear();
            txtcontactno.Text = string.Empty;

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
                ddlBOM.Enabled = true;
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

    public void RefreshItem(object sender, EventArgs e)
    {
        binditem();

    }

    public void RefreshCustGroup(object sender, EventArgs e)
    {
        bindcustomer();
    }
    public void RefreshCustCOntactGroup(object sender, EventArgs e)
    {
        dpcust.ClearSelection();
        dpcontactper.ClearSelection();
        bindcustomer();

    }

    protected void BOMGrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string result;
        lblbomid.Text = e.CommandArgument.ToString();
        if (e.CommandName == "editbom")
        {
            myModal.Visible = true;
            DataTable dtdata = bal.getOrderDetailsBOMbyidDAL(lblbomid.Text);
            if (dtdata.Rows.Count > 0)
            {
                txtmodelqty.Text = dtdata.Rows[0]["Qty"].ToString();
                txtmodelrate.Text = dtdata.Rows[0]["SubRate"].ToString();

            }
        }
        else if (e.CommandName == "deletebom")
        {
            string ID = e.CommandArgument.ToString();
            string[] Data = ID.Split(',');
            string Count = bal.GetOrderBOMCountBAL(Data[1], lblcomno.Text);
            if (Count == "1")
            {
                ShowMessage("Atleast 1 Item Required In BOM!!!", MessageType.Error);

            }
            else
            {
                result = bal.deleteOrderdetailsBOMbyidBAL(Data[0]);
                if (result == "1")
                {
                    flag = true;
                    ShowMessage("Record Deleted!!!", MessageType.Success);
                    binditemdata();
                }

            }



        }
        

    }

    protected void grdproduct_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {

            decimal Total = 0;

            int Gridcount = 0;



            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                Gridcount = Convert.ToInt32(gridcount.Text);
                Count++;
                string customerId = grdproduct.DataKeys[e.Row.RowIndex].Value.ToString();
                //string custorId = e.Row.DataItem.ToString();
                DataTable dt = new DataTable();
                dt = bal.GetOrderBOMTable(customerId, lblcomno.Text);
                GridView BOMGrid = e.Row.FindControl("BOMGrid") as GridView;
                BOMGrid.DataSource = dt;
                BOMGrid.DataBind();
                if (flag == true)
                {
                    if (dt.Rows.Count > 0)
                    {
                        for (int i = 0; i < BOMGrid.Rows.Count; i++)
                        {


                            decimal Qty = Convert.ToDecimal(BOMGrid.Rows[i].Cells[2].Text);
                            decimal Rate = Convert.ToDecimal(BOMGrid.Rows[i].Cells[3].Text);
                            Total = Total + (Qty * Rate);

                        }
                        lblSubGridTotal.Text = Total.ToString();

                        dt = bal.GetOrderDetailTable(customerId, lblcomno.Text);
                        if (dt.Rows.Count > 0)
                        {
                            for (int i = 0; i < dt.Rows.Count; i++)
                            {

                                decimal qty = Convert.ToDecimal(dt.Rows[i]["Qty"].ToString());
                                int Id = Convert.ToInt32(dt.Rows[i]["Id"].ToString());
                                decimal Discount = Convert.ToDecimal(dt.Rows[i]["Discount"].ToString());
                                decimal Amount = qty * Convert.ToDecimal(lblSubGridTotal.Text);
                                decimal GST = Convert.ToDecimal(dt.Rows[i]["Itemgst"].ToString());
                                decimal ItemFinal = 0;
                                decimal ItemBenefit = 0;
                                decimal ItemNetValue = 0;
                                decimal ItemTotalValue = 0;
                                decimal ItemGSTTotal = 0;
                                if ((Discount > 0 && Discount < 100) || Discount == 0)
                                {
                                    var DiscountPrice = (Amount * Discount) / 100;
                                    var AmountU = Amount - DiscountPrice;
                                    ItemFinal = Math.Round(AmountU, 2);
                                    double Benifitu = (Convert.ToDouble(AmountU) * 0.4) * 0.25;
                                    double fix = Math.Round(Benifitu, 2);
                                    ItemBenefit = Convert.ToDecimal(fix);
                                    var NetValue = Convert.ToDouble(AmountU) - fix;
                                    ItemNetValue = Math.Round(Convert.ToDecimal(NetValue), 2);
                                    var GSTPrice = (AmountU * GST) / 100;
                                    var TotalValue = +AmountU + +GSTPrice;
                                    ItemTotalValue = Math.Round(TotalValue, 2);
                                    ItemGSTTotal = Math.Round(GSTPrice, 2);
                                }
                                else
                                {
                                    var Difference = Discount - 100;
                                    var Margin = (Amount * Difference) / 100;
                                    var AmountU = +Amount + +Margin;

                                    ItemFinal = Math.Round(AmountU, 2);
                                    double Benifitu = (Convert.ToDouble(AmountU) * 0.4) * 0.25;
                                    double fix = Math.Round(Benifitu, 2);
                                    ItemBenefit = Convert.ToDecimal(fix);
                                    var NetValue = Convert.ToDouble(AmountU) - fix;
                                    ItemNetValue = Math.Round(Convert.ToDecimal(NetValue), 2);
                                    var GSTPrice = (AmountU * GST) / 100;
                                    var TotalValue = +AmountU + +GSTPrice;
                                    ItemTotalValue = Math.Round(TotalValue, 2);
                                    ItemGSTTotal = Math.Round(GSTPrice, 2);
                                }

                                string result = bal.tbl_OrderBOM_updateBAL(Convert.ToInt32(customerId), Convert.ToInt32(lblcomno.Text),
                                    Convert.ToDecimal(lblSubGridTotal.Text), lblloginid.Text, Amount, Discount, Id, ItemFinal, ItemBenefit,
                                   ItemNetValue, ItemTotalValue, ItemGSTTotal);
                            }

                        }


                    }

                    if (Count == Gridcount)
                    {
                        flag = false;
                        binditemdata();
                    }
                }


            }
        }




        catch (Exception ex)
        {

        }

    }

    protected void grddata1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            CheckBox chk = (CheckBox)e.Row.FindControl("btnchkbox");
            Label lblSatatus = (Label)e.Row.FindControl("lblstatus");

            if (lblSatatus.Text.ToString() == "True")
            {
                chk.Checked = true;
            }
            else
            {
                chk.Checked = false;
            }

        }

    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            string result = bal.OrderTermsupdate(TermsID.Text, txtName.Text, Txttandc.Text,Convert.ToInt32(lblcomno.Text));
            if (result == "1")
            {
                ShowMessage("Record  Updated!!!", MessageType.Success);
                TermsModel.Visible = false;
                txtName.Text = "";
                Txttandc.Text = "";
                txtName.Focus();
                ResetTerms();
                //BtnSave.Visible = true;
                //BtnUpdate.Visible = false;
            }
            else if (result == "-1")
            {
                ShowMessage("Record  Already Exist!!!", MessageType.Error);
                ResetTerms();
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
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TermsModel.Visible = false;
    }

    protected void btnaddproduct_Click(object sender, EventArgs e)
    {
        try
        {
            //DataTable dt1 = new DataTable();
            //dt1 = bal.checkOrderProductNameBAL(lblcomno.Text, Convert.ToInt32(item));
            //if (dt1.Rows.Count > 0)
            //{
            //    ShowMessage("Name Already Exist!!!", MessageType.Error);
            //}
            //else
            //{

            //    DateTime utcTime = DateTime.UtcNow;
            //    TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            //    DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
            //    //  txtrate.Text = "2000";
            //    bal.tbl_Order_Details_InsertBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(item), Convert.ToInt32(UOM), Convert.ToDecimal(Qty), Convert.ToDecimal(Rate), Convert.ToDecimal(Amount), lblloginid.Text, localTime, "", "", "", "", "");

            //}
            string state = "No";
            DataTable dt1 = new DataTable();
            dt1 = bal.checkOrderProductNameBAL(lblcomno.Text, Convert.ToInt32(dpitem.SelectedValue));

            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                DataTable dtdata2 = bal.CheckItemBOMBAL(Convert.ToInt32(dpitem.SelectedValue));
                DataTable dt2 = new DataTable();
                if (dtdata2.Rows.Count > 0)
                {
                    for (int j = 0; j < dtdata2.Rows.Count; j++)
                    {
                        string SubItem = dtdata2.Rows[j]["SubItemName"].ToString();
                        string SubRate = dtdata2.Rows[j]["SubRate"].ToString();
                        string BOM = dtdata2.Rows[j]["Exrta5"].ToString();
                        string SubQty = dtdata2.Rows[j]["Exrta2"].ToString();
                        string ItemNO = dtdata2.Rows[j]["ItemNo"].ToString();


                        //  txtrate.Text = "2000";
                        string result1 = bal.tbl_Order_BOM_InsertBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(ItemNO), Convert.ToInt32(BOM), Convert.ToDecimal(SubQty), Convert.ToDecimal(SubRate), Convert.ToInt32(SubItem), lblloginid.Text, localTime, lblqno.Text, "", "", "", "");
                        state = "Yes";

                    }
                }

                decimal test = Convert.ToDecimal(txtamount.Text);
               string result= bal.tbl_Order_Details_InsertBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(dpitem.SelectedValue.ToString()),
                    Convert.ToInt32(dpuom.SelectedValue.ToString()), Convert.ToDecimal(txtqty.Text), Convert.ToDecimal(txtrate.Text),
                    Convert.ToDecimal(txtamount.Text), lblloginid.Text, localTime, "", state, "",txthsncode.Text, txtItemGST.Text, Convert.ToDecimal(txtItemDiscount.Text),
                    Convert.ToDecimal(txtItemFinal.Text), Convert.ToDecimal(txtItemGSTTotal.Text), Convert.ToDecimal(txtItemBenefit.Text), Convert.ToDecimal(txtItemNetValue.Text),
                     Convert.ToDecimal(txtItemTotalValue.Text));
                if (result == "1")
                {
                    ShowMessage("Product Inserted!!!", MessageType.Success);
                    flag = true;
                    ResetItemData();
                    binditemdata();
                }
                else
                {
                    ShowMessage("Product Not Inserted!!!", MessageType.Error);
                }

                //txtcontactname.Focus();
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

            string stat = "No";
            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);



            DataTable dtdata2 = bal.CheckItemBOMBAL(Convert.ToInt32(dpitem.SelectedValue));
            DataTable dt2 = new DataTable();
            if (dtdata2.Rows.Count > 0)
            {
                for (int j = 0; j < dtdata2.Rows.Count; j++)
                {
                    string SubItem = dtdata2.Rows[j]["SubItemName"].ToString();
                    string SubRate = dtdata2.Rows[j]["SubRate"].ToString();
                    string BOM = dtdata2.Rows[j]["Exrta5"].ToString();
                    string SubQty = dtdata2.Rows[j]["Exrta2"].ToString();
                    string ItemNO = dtdata2.Rows[j]["ItemNo"].ToString();


                    //  txtrate.Text = "2000";
                    string result1 = bal.tbl_Order_BOM_InsertBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(ItemNO), Convert.ToInt32(BOM), Convert.ToDecimal(SubQty), Convert.ToDecimal(SubRate), Convert.ToInt32(SubItem), lblloginid.Text, localTime, lblqno.Text, "", "", "", "");
                    stat = "Yes";

                }
            }


            string result = bal.tbl_Order_Details_updateBAL(Convert.ToInt32(lblid.Text), Convert.ToInt32(dpitem.SelectedValue.ToString()),
                      Convert.ToInt32(dpuom.SelectedValue.ToString()), Convert.ToDecimal(txtqty.Text), Convert.ToDecimal(txtrate.Text),
                      Convert.ToDecimal(txtamount.Text), lblloginid.Text, localTime, "", stat, txthsncode.Text, txthsncode.Text, txtItemGST.Text, Convert.ToDecimal(txtItemDiscount.Text),
                      Convert.ToDecimal(txtItemFinal.Text), Convert.ToDecimal(txtItemGSTTotal.Text), Convert.ToDecimal(txtItemBenefit.Text), Convert.ToDecimal(txtItemNetValue.Text),
                       Convert.ToDecimal(txtItemTotalValue.Text));
            if (result == "1")
            {
                flag = true;
                ShowMessage("Record Uodated!!!", MessageType.Success);
                ResetItemData();
                binditemdata();
                btnaddproduct.Visible = true;
                lbtnupdatecontact.Visible = false;
            }
            else if (result == "-1")
            {
                flag = true;
                ShowMessage("Already Existed!!!", MessageType.Error);

                binditemdata();
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
}