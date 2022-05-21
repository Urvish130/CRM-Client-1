using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;

public partial class Item : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    BusinessLogicLayer bal = new BusinessLogicLayer();
    public enum MessageType { Success, Error, Info, Warning };

    public decimal  TotalRate = 0;
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
                binditemgroup();
                getmaxcomno();
                binduom();
                BindBOM();
                BindSub();
            }
            
        }
        
    }
    public void BindSub()
    {

        try
        {

            dt = bal.GetItemSubddlBAL();
            if (dt.Rows.Count > 0)
            {
                ddlsubItem.DataSource = dt;
                ddlsubItem.DataTextField = "Itemname";
                ddlsubItem.DataValueField = "id";
                ddlsubItem.DataBind();
                ddlsubItem.Items.Insert(0, new ListItem("----Select Sub-Item----", "0"));
            }
            else
            {
                ddlsubItem.Items.Clear();
                ddlsubItem.Items.Insert(0, new ListItem("----Select Sub-Item----", "0"));
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    public void binditemgroup()
    {
        try
        {
            DataTable dtdept = new DataTable();


            dtdept = bal.getallitemgroupfroadminBAL();
            if (dtdept.Rows.Count > 0)
            {
                ddlgroup.DataSource = dtdept;
                ddlgroup.DataTextField = "ItemGroup";
                ddlgroup.DataValueField = "id";
                ddlgroup.DataBind();


                dlgroupnamemp.DataSource = dtdept;
                dlgroupnamemp.DataTextField = "ItemGroup";
                dlgroupnamemp.DataValueField = "id";
                dlgroupnamemp.DataBind();
                ddlgroup.Items.Insert(0, new ListItem("----Select ItemGroup----", "0"));

            }
            else
            {

            }
           
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void binditemsubgroup()
    {
        try
        {
            DataTable dtdept = new DataTable();

            dlgroupnamemp.SelectedValue = ddlgroup.SelectedValue;
            dtdept = bal.getallItemsubgroupforadminBAL(Convert.ToInt32(ddlgroup.SelectedValue));
            if (dtdept.Rows.Count > 0)
            {
                ddlsubgroup.DataSource = dtdept;
                ddlsubgroup.DataTextField = "SubgroupName";
                ddlsubgroup.DataValueField = "id";
                ddlsubgroup.DataBind();
                ddlsubgroup.Items.Insert(0, new ListItem("----Select Item SubGroup----", "0"));
            }
            else
            {
                ddlsubgroup.ClearSelection();
                ddlsubgroup.Items.Clear();
                ddlsubgroup.Items.Insert(0, new ListItem("----Select Item SubGroup----", "0"));
            }
            
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
            string s1 = "select Top (1) No from tbl_Item_NoSeries    order By  Id DESC";
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
            bal.tbl_Item_NoSeries_InsertBAL(s, "", "");
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

    public void binduom()
    {
        try
        {
            DataTable dtdept = new DataTable();


            dtdept = bal.getallunitofmeasurementfroadminBAL();
            if (dtdept.Rows.Count > 0)
            {
                ddluom.DataSource = dtdept;
                ddluom.DataTextField = "UnitofMeasurement";
                ddluom.DataValueField = "id";
                ddluom.DataBind();
            }
            ddluom.Items.Insert(0, new ListItem("----Select UOM----", "0"));
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }

    protected void lbtncreategroup_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkitemgroupdata(txtgroupname.Text);
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

              string result=  bal.Saveitemgroupbll(txtgroupname.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    binditemgroup();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtgroupname.Text = "";
                    mpdesign.Hide();
                }
                else
                {
                   
                    ShowMessage("Record Not Save!!!", MessageType.Error);                    
                    txtgroupname.Focus();
                }
               
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }


    protected void lbtnresetgroup_Click(object sender, EventArgs e)
    {

    }
    protected void GroupReset(object sender, EventArgs e)
    {
        txtgroupname.Text = "";
        mpdesign.Show();
    }
    protected void lbtcreatesubgroup_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkItemsubgroupnameBAL(txtsubgroupnamemp.Text, dlgroupnamemp.SelectedValue.ToString());
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
                ModalPopupExtender1.Show();
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

              string result=  bal.tbl_Itemsubgroup_Master_InsertBAL(txtsubgroupnamemp.Text, Convert.ToInt32(dlgroupnamemp.SelectedValue.ToString()), lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                   
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtsubgroupnamemp.Text = "";
                    ddlgroup.ClearSelection();
                    ModalPopupExtender1.Hide();
                }
                else
                {
                    
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    ModalPopupExtender1.Show();
                    txtsubgroupnamemp.Focus();

                }
               
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    protected void resetsubgroup(object sender, EventArgs e)
    {
        txtsubgroupnamemp.Text = "";
        ModalPopupExtender1.Show();
    }
    protected void ResetUOM(object sender, EventArgs e)
    {
        txtuom.Text = "";
        ModalPopupExtender2.Show();
    }
    protected void lbtncreateuom_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkunitofmeasurementdata(txtuom.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

               string result= bal.Saveunitofmeasurementbll(txtuom.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    binduom();
                    ShowMessage("Record Saved!!!", MessageType.Success);
                    txtuom.Text = "";                    
                    ModalPopupExtender2.Hide();
                }
                else
                {
                    ShowMessage("Record Not Saved!!!", MessageType.Error);
                    txtuom.Focus();
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

    protected void grditem_RowCommand(object sender, GridViewCommandEventArgs e)
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

            string result = bal.deletitemimgdatabyidBAL(e.CommandArgument.ToString());

            ShowMessage("Record Deleted!!!", MessageType.Success);

            bindimg();


        }
    }

    protected void grditembro_RowCommand(object sender, GridViewCommandEventArgs e)
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

            string result = bal.deletitemdocumentdatabyidBAL(e.CommandArgument.ToString());

            ShowMessage("Record Deleted!!!", MessageType.Success);

            binddocument();


        }

    }

    protected void btnitemimg_Click(object sender, EventArgs e)
    {
        try
        {


            if (fuItemPic.HasFile)
            {
                string fileName = Path.GetFileName(fuItemPic.FileName);
                fuItemPic.SaveAs(Server.MapPath("~/Documents/") + fileName);
                string filepath = "~/Documents/" + fileName;



                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                bal.tbl_ItemImage_Master_InsertBAL(lblcomno.Text, "", fileName, filepath, lblloginid.Text, localTime, "", "", "", "", "");

                bindimg();
                // txtdocument.Focus();
            }

        }
        catch (Exception ex)
        {

        }
    }

    public void binddocument()
    {

        try
        {

            DataTable dtcontact = new DataTable();
            dtcontact = bal.getItemdocumentadataBAL(lblloginid.Text, Convert.ToInt32(lblcomno.Text));
            if (dtcontact.Rows.Count > 0)
            {
                grditembro.DataSource = dtcontact;
                grditembro.DataBind();
                grditembro.UseAccessibleHeader = true;
                grditembro.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grditembro.DataSource = dtcontact;
                grditembro.DataBind();
                grditembro.UseAccessibleHeader = true;
                grditembro.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void bindimg()
    {

        try
        {

            DataTable dtcontact = new DataTable();
            dtcontact = bal.getItemimageadataBAL(lblloginid.Text, Convert.ToInt32(lblcomno.Text));
            if (dtcontact.Rows.Count > 0)
            {
                grditem.DataSource = dtcontact;
                grditem.DataBind();
                grditem.UseAccessibleHeader = true;
                grditem.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grditem.DataSource = dtcontact;
                grditem.DataBind();
                grditem.UseAccessibleHeader = true;
                grditem.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void btnadditembro_Click(object sender, EventArgs e)
    {
        try
        {


            if (fuBroucher.HasFile)
            {
                string fileName = Path.GetFileName(fuBroucher.FileName);
                fuItemPic.SaveAs(Server.MapPath("~/Documents/") + fileName);
                string filepath = "~/Documents/" + fileName;



                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

                bal.tbl_ItemDocument_Master_InsertBAL(lblcomno.Text, "", fileName, filepath, lblloginid.Text, localTime, "", "", "", "", "");
                binddocument();

                // txtdocument.Focus();
            }

        }
        catch (Exception ex)
        {

        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkItemnameBAL(txtItemName.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
                
               string result= bal.tbl_Item_Master_InsertBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(ddlgroup.SelectedItem.Value), Convert.ToInt32(ddlsubgroup.SelectedItem.Value), txtModalNo.Text, txtItemName.Text, txtFinalName.Text, txtAlias.Text, txtitemcategoryno.Text, Convert.ToInt32(ddluom.SelectedItem.Value), Convert.ToDecimal(txtRate.Text), Convert.ToInt32(txtGST.Text), txtHSN.Text, txtDescp.Text, lblloginid.Text, Convert.ToDateTime(localTime), lblBOM.Text, ddlItemStatus.SelectedValue, "", "", "");
                if(result=="1")
                {
                    ShowMessage("Record Save!!!", MessageType.Success);
                    Response.Redirect("ItemRegister.aspx", false);
                }
                else
                {
                    ShowMessage("Record Not Saved!!!", MessageType.Error);
                }
              
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }


    protected void ddlgroup_SelectedIndexChanged(object sender, EventArgs e)
    {

        binditemsubgroup();

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        ddlgroup.ClearSelection();
        ddlsubgroup.ClearSelection();
        ddluom.ClearSelection();
        txtAlias.Text = "";
        txtDescp.Text = "";
        txtFinalName.Text = "";
        txtGST.Text = "";
        txtHSN.Text = "";
        txtItemName.Text = "";
        txtRate.Text = "";
        txtModalNo.Text = "";
    }

    protected void chkbom_CheckedChanged(object sender, EventArgs e)
    {
        if(chkbom.Checked==true)
        {
            BOMdiv.Visible = true;
            txtRate.Enabled = false;
        }
        else
        {
            BOMdiv.Visible = false;
            txtRate.Enabled = true;
        }
    }

    protected void btnBOM_Click(object sender, EventArgs e)
    {
        try
        {
            
            DataTable dt1 = new DataTable();
            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

            string result = bal.tbl_SubItem_Master_InsertBAL(Convert.ToInt32(lblcomno.Text),ddlsubItem.SelectedValue,Convert.ToDecimal(txtSubrate.Text), lblloginid.Text, Convert.ToDateTime(localTime), txtBOMName.Text, txtSubqty.Text, "", "", "");
            if (result == "1")
            {
                ShowMessage("Record Save!!!", MessageType.Success);
                txtSubqty.Text = "";
                ddlsubItem.ClearSelection();
                TotalRate = Convert.ToDecimal(lbltotal.Text) + Convert.ToDecimal(txtSubrate.Text);
                lbltotal.Text= Convert.ToString(TotalRate);
                txtRate.Text = Convert.ToString(TotalRate);
                txtSubrate.Text = "";                
                BindBOM();
            }
            else if(result == "-1")
            {
                string Name = ddlsubItem.SelectedItem.Text;
                ShowMessage(""+ Name + " Already Exist!!!", MessageType.Error);
                BindBOM();
            }
            else
            {
                ShowMessage("Record Not Saved!!!", MessageType.Error);
            }
        }
        catch(Exception ex)
        {

        }
       

        
    }


    public void BindBOM()
    {

        try
        {

            DataTable dtcontact = new DataTable();
            dtcontact = bal.GetBomdetailsBAL(Convert.ToInt32(lblcomno.Text));
            if (dtcontact.Rows.Count > 0)
            {
                BOMGrid.DataSource = dtcontact;
                BOMGrid.DataBind();
                BOMGrid.UseAccessibleHeader = true;
                BOMGrid.HeaderRow.TableSection = TableRowSection.TableHeader;
                lblBOM.Text = "Yes";
                txtRate.Enabled = false;
            }
            else
            {
                BOMGrid.DataSource = dtcontact;
                BOMGrid.DataBind();
                BOMGrid.UseAccessibleHeader = true;
                BOMGrid.HeaderRow.TableSection = TableRowSection.TableHeader;
                lblBOM.Text = "No";
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void BOMGrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string list= e.CommandArgument.ToString();
        lblid.Text = list;
        if (e.CommandName == "editdata")
        {
            DataTable dtdata = bal.GetBOMByIDBAL(lblid.Text);
            if (dtdata.Rows.Count > 0)
            {
                ddlsubItem.SelectedValue = dtdata.Rows[0]["SubItemName"].ToString();
                txtSubrate.Text = dtdata.Rows[0]["SubRate"].ToString();
                txtBOMName.Text= dtdata.Rows[0]["Name"].ToString();
                txtSubqty.Text = dtdata.Rows[0]["Exrta2"].ToString();
                lblmbom.Text= dtdata.Rows[0]["BOMID"].ToString();
                lbltemp.Text= dtdata.Rows[0]["SubRate"].ToString();
                btnBOMUpdate.Visible = true;
                btnBOM.Visible = false;
            }
        }
        else if (e.CommandName == "deletedata")
        {
            string[] value = list.Split(',');
            lblid.Text = value[0];
            
            string result = bal.DeleteItemBOMBAL(lblid.Text);
            if(result=="1")
            {
                decimal Total = Convert.ToDecimal(value[1]);
                decimal Value1 = Convert.ToDecimal(txtRate.Text) - Total;
                txtRate.Text = Convert.ToString(Value1);
                lbltotal.Text = Convert.ToString(Value1);
                ShowMessage("Record Deleted!!!", MessageType.Success);
                BindBOM();
            }
            else
            {
                ShowMessage("Record Not Deleted!!!", MessageType.Error);
            }
            

            


        }
    }

    protected void btnBOMUpdate_Click(object sender, EventArgs e)
    {
        try
        {


            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

            string result = bal.tbl_ItemBOM_updateBAL(Convert.ToInt32(lblid.Text), Convert.ToInt32(lblcomno.Text),ddlsubItem.SelectedValue,Convert.ToDecimal(txtSubrate.Text), lblloginid.Text, localTime, txtBOMName.Text, txtSubqty.Text, "", "", lblmbom.Text);

            if (result == "-1")
            {
                string Name = ddlsubItem.SelectedItem.Text;
                ShowMessage(""+Name+" Already Exist!!!", MessageType.Error);
                BindBOM();

            }
            else if (result != "0")
            {
               
                ShowMessage("Record Updated!!!", MessageType.Success);
                btnBOM.Visible = true;
                btnBOMUpdate.Visible = false;
                decimal Value = Convert.ToDecimal(txtRate.Text) - Convert.ToDecimal(lbltemp.Text) + Convert.ToDecimal(txtSubrate.Text);
                txtRate.Text = Convert.ToString(Value);
                lbltotal.Text= Convert.ToString(Value);
                txtSubqty.Text = "";
                ddlsubItem.ClearSelection();
                txtSubrate.Text = "";
                BindBOM();
                lblid.Text = "";
                
            }
            else
            {
                ShowMessage("Record Not Updated!!!", MessageType.Error);
            }


        }
        catch (Exception ex)
        {
           
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        btnBOM.Visible = true;
        btnBOMUpdate.Visible = false;
        txtSubqty.Text = "";
        ddlsubItem.ClearSelection();
        txtSubrate.Text = "";
        txtBOMName.Text = "";
    }

    protected void ddlsubItem_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dtdata = bal.getallitemBAL(Convert.ToInt32(ddlsubItem.SelectedValue));
        txtSubrate.Text= dtdata.Rows[0]["Itemrate"].ToString();
    }
}