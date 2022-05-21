using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Role : System.Web.UI.Page
{
    DataTable dt = new DataTable();
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
                txtName.ReadOnly = true;
                lblloginid.Text = Session["id"].ToString();
                lblrole.Text = Session["role"].ToString();
                lblmsg.Text = "";
                bindDetail();
                bindpages();
            }


        }
    }
    public void bindDetail()
    {

        try
        {
            dt = bal.getallrolefroadminBAL();


            if (dt.Rows.Count > 0)
            {
                grddata.DataSource = dt;
                grddata.DataBind();
                grddata.UseAccessibleHeader = true;
                grddata.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grddata.DataSource = dt;
                grddata.DataBind();
               
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
            string Create1 = "false";
            string view1 = "false";
            string viewall1 = "false";
            string edit1 = "false";
            string delete1 = "false";
            string print1 = "false";
            string mail1 = "false";
            string pname = "";
            DataTable dt1 = new DataTable();
            dt1 = bal.checkroledata(txtName.Text);
            if (dt1.Rows.Count > 0)
            {
                ShowMessage("Name Already Exist!!!", MessageType.Error);

            }
            else
            {
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

                string result = bal.Saverolebll(txtName.Text, lblloginid.Text, localTime, "", "", "", "", "");
                string s = string.Empty, id = string.Empty;
                Getconnection c1 = new Getconnection();
                string s1 = "select Top (1) Id from tbl_Role_Master order By  Id DESC";
                SqlCommand cmd4334 = new SqlCommand(s1, c1.getconnection());
                if (cmd4334.ExecuteScalar() != null)
                    id = cmd4334.ExecuteScalar().ToString();
                c1.CloseConnection();
                string RoleID = id;
                foreach (GridViewRow row in grdpagelist.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        pname = (((Label)row.FindControl("lblpname")).Text);
                        CheckBox Create = (CheckBox)row.FindControl("Chkcreate");
                        CheckBox view = (CheckBox)row.FindControl("Chkview");
                        CheckBox viewall = (CheckBox)row.FindControl("Chkviewall");
                        CheckBox edit = (CheckBox)row.FindControl("Chkedit");
                        CheckBox delete = (CheckBox)row.FindControl("Chkdelete");
                        CheckBox print = (CheckBox)row.FindControl("chkprint");
                        CheckBox mail = (CheckBox)row.FindControl("Chkmail");




                        if (Create.Checked)
                        {
                            Create1 = "true";
                        }
                        else
                        {
                            Create1 = "false";
                        }

                        if (view.Checked)
                        {
                            view1 = "true";
                        }
                        else
                        {
                            view1 = "false";
                        }
                        if (viewall.Checked)
                        {
                            viewall1 = "true";
                        }
                        else
                        {
                            viewall1 = "false";
                        }
                        if (edit.Checked)
                        {
                            edit1 = "true";
                        }
                        else
                        {
                            edit1 = "false";
                        }
                        if (delete.Checked)
                        {
                            delete1 = "true";
                        }
                        else
                        {
                            delete1 = "false";
                        }
                        if (print.Checked)
                        {
                            print1 = "true";

                        }
                        else
                        {
                            print1 = "false";
                        }
                        if (mail.Checked)
                        {
                            mail1 = "true";
                        }
                        else
                        {
                            mail1 = "false";
                        }
                    }
                    bal.tbl_Role_PermisionBAL(pname, Create1, view1, viewall1, edit1, delete1, print1, mail1, RoleID, lblloginid.Text, localTime, "", "", "", "", "");
                }
                if (result == "1")
                {
                    ShowMessage("Record Inserted", MessageType.Success);
                    bindDetail();
                    txtName.Text = "";
                    txtName.Focus();
                }
                else
                {
                    ShowMessage("Record Not Inserted", MessageType.Error);
                }

            }
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
                DataTable dtdata = bal.getroledatabyidBAL(lblid.Text);
                if (dtdata.Rows.Count > 0)
                {
                    txtName.Text = dtdata.Rows[0]["Role"].ToString();
                    txtName.ReadOnly = true;
                    txtName.Focus();
                    btnSave.Visible = false;
                    btnUpdate.Visible = true;
                    bindpagesbyrole(lblid.Text);
                }
            }
            else if (e.CommandName == "deletedata")
            {

                result = bal.deleteroledata(lblid.Text);
                if (result == "1")
                {
                    ShowMessage("Record Deleted!!!", MessageType.Success);
                    bindDetail();
                    btnSave.Visible = true;
                    btnUpdate.Visible = false;

                }
                else
                {
                    ShowMessage("Record Not Deleted!!!", MessageType.Error);


                }

            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
            string Create1 = "false";
            string view1 = "false";
            string viewall1 = "false";
            string edit1 = "false";
            string delete1 = "false";
            string print1 = "false";
            string mail1 = "false";
            string pname = "";
            string Result = bal.tbl_roleupdate(lblid.Text, txtName.Text);
            if (Result == "-1")
            {

                txtName.Focus();
                ShowMessage("Name Already Exist!!!", MessageType.Error);
            }
            else if (Result == "1")
            {
                bal.DeleteRolePermission(lblid.Text);
                foreach (GridViewRow row in grdpagelist.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        pname = (((Label)row.FindControl("lblpname")).Text);
                        CheckBox Create = (CheckBox)row.FindControl("Chkcreate");
                        CheckBox view = (CheckBox)row.FindControl("Chkview");
                        CheckBox viewall = (CheckBox)row.FindControl("Chkviewall");
                        CheckBox edit = (CheckBox)row.FindControl("Chkedit");
                        CheckBox delete = (CheckBox)row.FindControl("Chkdelete");
                        CheckBox print = (CheckBox)row.FindControl("chkprint");
                        CheckBox mail = (CheckBox)row.FindControl("Chkmail");




                        if (Create.Checked)
                        {
                            Create1 = "true";
                        }
                        else
                        {
                            Create1 = "false";
                        }

                        if (view.Checked)
                        {
                            view1 = "true";
                        }
                        else
                        {
                            view1 = "false";
                        }
                        if (viewall.Checked)
                        {
                            viewall1 = "true";
                        }
                        else
                        {
                            viewall1 = "false";
                        }
                        if (edit.Checked)
                        {
                            edit1 = "true";
                        }
                        else
                        {
                            edit1 = "false";
                        }
                        if (delete.Checked)
                        {
                            delete1 = "true";
                        }
                        else
                        {
                            delete1 = "false";
                        }
                        if (print.Checked)
                        {
                            print1 = "true";

                        }
                        else
                        {
                            print1 = "false";
                        }
                        if (mail.Checked)
                        {
                            mail1 = "true";
                        }
                        else
                        {
                            mail1 = "false";
                        }
                    }

                    bal.tbl_Role_PermisionBAL(pname, Create1, view1, viewall1, edit1, delete1, print1, mail1, lblid.Text, lblloginid.Text, localTime, "", "", "", "", "");
                }
                ShowMessage("Record Updated!!!", MessageType.Success);
                bindDetail();
                txtName.Focus();
                Reset();
                bindpages();
            }
            else
            {
                txtName.Focus();
                ShowMessage("Record Not Updated!!!", MessageType.Error);

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

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Reset();
    }

    public void Reset()
    {
        txtName.Text = "";
        lblmsg.Text = "";
        btnSave.Visible = true;
        btnUpdate.Visible = false;
        bindpages();
    }

    public void bindpages()
    {
        try
        {

            DataTable dt = new DataTable();
            dt = bal.GetAllPageListBAL();

            if (dt.Rows.Count > 0)
            {
                grdpagelist.DataSource = dt;
                grdpagelist.DataBind();
            }
            else
            {
                grdpagelist.DataSource = dt;
                grdpagelist.DataBind();
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void bindpagesbyrole(string ID)
    {
        try
        {

            DataTable dt = new DataTable();
            dt = bal.GetAllRolePageListBAL(ID);

            if (dt.Rows.Count > 0)
            {
                grdpagelist.DataSource = dt;
                grdpagelist.DataBind();
            }
            else
            {
                grdpagelist.DataSource = dt;
                grdpagelist.DataBind();
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }



    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        Label lblPage = (e.Row.FindControl("lblpname") as Label);
        DataTable dtcheckitm = new DataTable();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            dtcheckitm = bal.GetAllRolePageListBAL(lblid.Text);

            for (int i = 0; i < dtcheckitm.Rows.Count; i++)
            {
                if (dtcheckitm.Rows[i]["PageName"].ToString() == lblPage.Text)
                {
                    if (dtcheckitm.Rows.Count > 0)
                    {
                        string cre = dtcheckitm.Rows[i]["CreateStatus"].ToString();
                        string view = dtcheckitm.Rows[i]["ViewStatus"].ToString();
                        string viewall = dtcheckitm.Rows[i]["ViewallStatus"].ToString();
                        string edit = dtcheckitm.Rows[i]["EditStatus"].ToString();
                        string print = dtcheckitm.Rows[i]["PrintStatus"].ToString();
                        string mail = dtcheckitm.Rows[i]["EmailStatus"].ToString();
                        string Delete = dtcheckitm.Rows[i]["DeleteStatus"].ToString();
                        if (cre.Equals("true"))
                        {
                            CheckBox chk = (CheckBox)e.Row.FindControl("Chkcreate");
                            chk.Checked = true;
                        }
                        if (view.Equals("true"))
                        {
                            CheckBox chk2 = (CheckBox)e.Row.FindControl("Chkview");
                            chk2.Checked = true;
                        }
                        if (viewall.Equals("true"))
                        {
                            CheckBox chk3 = (CheckBox)e.Row.FindControl("Chkviewall");
                            chk3.Checked = true;
                        }
                        if (edit.Equals("true"))
                        {
                            CheckBox chk4 = (CheckBox)e.Row.FindControl("Chkedit");
                            chk4.Checked = true;
                        }
                        if (print.Equals("true"))
                        {
                            CheckBox chk5 = (CheckBox)e.Row.FindControl("Chkprint");
                            chk5.Checked = true;
                        }
                        if (mail.Equals("true"))
                        {
                            CheckBox chk6 = (CheckBox)e.Row.FindControl("Chkmail");
                            chk6.Checked = true;
                        }
                        if (Delete.Equals("true"))
                        {
                            CheckBox chk6 = (CheckBox)e.Row.FindControl("Chkdelete");
                            chk6.Checked = true;
                        }
                    }
                }
            }

        }
    }

    
}