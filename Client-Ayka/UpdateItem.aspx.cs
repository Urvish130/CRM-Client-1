using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class UpdateItem : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    BusinessLogicLayer bal = new BusinessLogicLayer();
    public decimal TotalRate = 0;
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

                lblcomno.Text = Request.QueryString["no"].ToString();
                lblloginid.Text = Session["id"].ToString();
                lblrole.Text = Session["role"].ToString();               
                binditemgroup();
                binddocument();
                bindimg();                
                binduom();
                filldata();
                BindBOM();
                BindSub();
            }
        }
    }
    public void filldata()
    {
        try
        {
            DataTable dtdata = bal.getallitemdatabynoBAL(lblcomno.Text);
            if (dtdata.Rows.Count > 0)
            {
                ddlgroup.SelectedValue = dtdata.Rows[0]["itemgroup"].ToString();
                ddlsubgroup.SelectedValue = dtdata.Rows[0]["itemsubgroup"].ToString();
                txtModalNo.Text = dtdata.Rows[0]["Modelno"].ToString();
                txtItemName.Text = dtdata.Rows[0]["Itemname"].ToString();
                txtFinalName.Text = dtdata.Rows[0]["ItemFinalname"].ToString();
                txtAlias.Text = dtdata.Rows[0]["Itemalis"].ToString();
                txtitemcategoryno.Text = dtdata.Rows[0]["Itemcategoryno"].ToString();
                ddluom.SelectedValue = dtdata.Rows[0]["ItemUOM"].ToString();
                txtRate.Text = dtdata.Rows[0]["Itemrate"].ToString();
                txtGST.Text = dtdata.Rows[0]["Itemgst"].ToString();
                txtHSN.Text = dtdata.Rows[0]["ItemHsn"].ToString();
                txtDescp.Text = dtdata.Rows[0]["ItemDesc"].ToString();
                lblBOM.Text = dtdata.Rows[0]["Extra1"].ToString();
                ddlItemStatus.SelectedValue = dtdata.Rows[0]["Extra2"].ToString();
                if (lblBOM.Text=="Yes")
                {
                    BOMdiv.Visible = true;
                    chkbom.Checked = true;
                }
                binditemsubgroup();

            }
        }
        catch (Exception ex)
        {

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
                ddlgroup.DataValueField = "Id";
                ddlgroup.DataBind();


                dlgroupnamemp.DataSource = dtdept;
                dlgroupnamemp.DataTextField = "ItemGroup";
                dlgroupnamemp.DataValueField = "Id";
                dlgroupnamemp.DataBind();

            }
            ddlgroup.Items.Insert(0, new ListItem("----Select ItemGroup----", "0"));
            dlgroupnamemp.Items.Insert(0, new ListItem("----Select ItemGroup----", "0"));
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


            dtdept = bal.getallItemsubgroupforadminBAL(Convert.ToInt32(ddlgroup.SelectedValue));
            if (dtdept.Rows.Count > 0)
            {
                ddlsubgroup.DataSource = dtdept;
                ddlsubgroup.DataTextField = "SubGroupName";
                ddlsubgroup.DataValueField = "Id";
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

               string result= bal.Saveitemgroupbll(txtgroupname.Text, lblloginid.Text, localTime, "", "", "", "", "");
                if(result=="1")
                {
                    binditemgroup();
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtgroupname.Text = "";
                    mpdesign.Hide();
                     ddlsubgroup.ClearSelection();
                     ddlsubgroup.Items.Clear();
                }
                else
                {
                    
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    txtgroupname.Focus();
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
    protected void lbtnresetgroup_Click(object sender, EventArgs e)
    {
        txtgroupname.Text = "";
        mpdesign.Show();
    }
    protected void lbtcreatesubgroup_Click(object sender, EventArgs e)
    {


        try
        {
            DataTable dt1 = new DataTable();
            dt1 = bal.checkItemsubgroupnameBAL(txtsubgroupnamemp.Text,ddlgroup.SelectedValue.ToString());
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
                    dlgroupnamemp.ClearSelection();
                    ModalPopupExtender1.Hide();
                    ddlsubgroup.ClearSelection();
                    ddlsubgroup.Items.Clear();
                    ddlgroup.ClearSelection();


                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Success);
                    ModalPopupExtender1.Show();
                }
               
            }
        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }
    protected void lbtresetesubgroup_Click(object sender, EventArgs e)
    {
        txtsubgroupnamemp.Text = "";
        ModalPopupExtender1.Show();
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
                ModalPopupExtender1.Show();
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
                    ShowMessage("Record Save!!!", MessageType.Success);
                    txtuom.Text = "";
                    ddluom.ClearSelection();
                    ModalPopupExtender1.Hide();
                }
                else
                {
                    ShowMessage("Record Not Save!!!", MessageType.Error);
                    ModalPopupExtender1.Show();
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

            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

           string result= bal.tbl_Item_Master_updateBAL(Convert.ToInt32(lblcomno.Text), Convert.ToInt32(ddlgroup.SelectedItem.Value), Convert.ToInt32(ddlsubgroup.SelectedItem.Value), txtModalNo.Text, txtItemName.Text, txtFinalName.Text, txtAlias.Text, txtitemcategoryno.Text, Convert.ToInt32(ddluom.SelectedItem.Value), Convert.ToDecimal(txtRate.Text), Convert.ToInt32(txtGST.Text), txtHSN.Text, txtDescp.Text, lblloginid.Text, Convert.ToDateTime(localTime), lblBOM.Text, ddlItemStatus.SelectedValue, "", "","");
            if(result=="-1")
            {
                ShowMessage("Name Already Created!!!", MessageType.Error);
            }
            else if(result=="1")
            {
                ShowMessage("Record Updated!!!", MessageType.Success);
                Response.Redirect("ItemRegister.aspx", false);

            }
            else
            {
                ShowMessage("Record Not Updated!!!", MessageType.Error);
            }
          

        }
        catch (Exception ex)
        {
            //  Getconnection.SiteErrorInsert(ex);
            ShowMessage(ex.ToString(), MessageType.Error);
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            bal.deleteitematanoBAL(lblcomno.Text);
            Response.Redirect("ItemRegister.aspx", false);
        }
        catch (Exception ex)
        {

        }


    }


    protected void ddlgroup_SelectedIndexChanged(object sender, EventArgs e)
    {
        binditemsubgroup();
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        txtuom.Text = "";
        ModalPopupExtender2.Show();
    }

    protected void chkbom_CheckedChanged(object sender, EventArgs e)
    {
        if (chkbom.Checked == true)
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

            string result = bal.tbl_SubItem_Master_InsertBAL(Convert.ToInt32(lblcomno.Text), ddlsubItem.SelectedValue, Convert.ToDecimal(txtSubrate.Text), lblloginid.Text, Convert.ToDateTime(localTime), txtBOMName.Text, txtSubqty.Text, "", "", "");
            if (result == "1")
            {
                ShowMessage("Record Save!!!", MessageType.Success);
                txtSubqty.Text = "";
                ddlsubItem.ClearSelection();
                TotalRate = Convert.ToDecimal(txtRate.Text) + Convert.ToDecimal(txtSubrate.Text);
                lbltotal.Text = Convert.ToString(TotalRate);
                txtRate.Text = Convert.ToString(TotalRate);
                txtSubrate.Text = "";
                BindBOM();
            }
            else if (result == "-1")
            {
                string Name = ddlsubItem.SelectedItem.Text;
                ShowMessage("" + Name + " Already Exist!!!", MessageType.Error);
                BindBOM();
            }
            else
            {
                ShowMessage("Record Not Saved!!!", MessageType.Error);
            }
        }
        catch (Exception ex)
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
                txtRate.Enabled = true;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    protected void BOMGrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string list = e.CommandArgument.ToString();
        lblBOMID.Text = list;
        if (e.CommandName == "editdata")
        {
            DataTable dtdata = bal.GetBOMByIDBAL(lblBOMID.Text);
            if (dtdata.Rows.Count > 0)
            {
                ddlsubItem.SelectedValue = dtdata.Rows[0]["SubItemName"].ToString();
                txtSubrate.Text = dtdata.Rows[0]["SubRate"].ToString();
                txtBOMName.Text = dtdata.Rows[0]["Name"].ToString();
                txtSubqty.Text = dtdata.Rows[0]["Exrta2"].ToString();
                lblmbom.Text = dtdata.Rows[0]["BOMID"].ToString();
                lbltemp.Text = dtdata.Rows[0]["SubRate"].ToString();
                btnBOMUpdate.Visible = true;
                btnBOM.Visible = false;
            }
        }
        else if (e.CommandName == "deletedata")
        {
            string[] value = list.Split(',');
            lblBOMID.Text = value[0];

            string result = bal.DeleteItemBOMBAL(lblBOMID.Text);
            if (result == "1")
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

            string result = bal.tbl_ItemBOM_updateBAL(Convert.ToInt32(lblBOMID.Text), Convert.ToInt32(lblcomno.Text), ddlsubItem.SelectedValue, Convert.ToDecimal(txtSubrate.Text), lblloginid.Text, localTime, txtBOMName.Text, txtSubqty.Text, "", "", lblmbom.Text);

            if (result == "-1")
            {
                string Name = ddlsubItem.SelectedItem.Text;
                ShowMessage("" + Name + " Already Exist!!!", MessageType.Error);
                BindBOM();

            }
            else if (result != "0")
            {

                ShowMessage("Record Updated!!!", MessageType.Success);
                btnBOM.Visible = true;
                btnBOMUpdate.Visible = false;
                decimal Value = Convert.ToDecimal(txtRate.Text) - Convert.ToDecimal(lbltemp.Text) + Convert.ToDecimal(txtSubrate.Text);
                txtRate.Text = Convert.ToString(Value);
                lbltotal.Text = Convert.ToString(Value);
                txtSubqty.Text = "";
                ddlsubItem.ClearSelection();
                txtSubrate.Text = "";
                BindBOM();
                lblBOMID.Text = "";

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
        txtSubrate.Text = dtdata.Rows[0]["Itemrate"].ToString();
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
}