using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPermission : System.Web.UI.Page
{
    DataTable dt;
    Getconnection c = new Getconnection();
    BusinessLogicLayer bal = new BusinessLogicLayer();
    public enum MessageType { Success, Error, Info, Warning };

    public string chkins;
    public string chkview;
    public string chkviewall;
    public string chkedit;
    public string chkdelete;
    public string chkprint;
    public string chkmail;

    public bool flag = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("login.aspx", false);
                }
                else
                {
                    if (Request.QueryString["Id"] != null)
                    {
                        flag = true;
                        lblloginid.Text = Session["id"].ToString();
                        lblrole.Text = Session["role"].ToString();
                        lblcomno.Text = Request.QueryString["Id"].ToString();
                        txtinqno.Text= Request.QueryString["Id"].ToString();
                        txtdate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
                        bindemployee();
                        bindRole();
                        filldata();
                        btnSave.Visible = false;
                        btnupdate.Visible = true;
                        

                    }
                    else
                    {
                        lblloginid.Text = Session["id"].ToString();
                        lblrole.Text = Session["role"].ToString();
                        txtinqno.Text = getmaxno();
                        txtdate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
                        bindemployee();
                        bindRole();
                        getmaxno();
                    }


                }

            }
        }
        catch (Exception ex)
        {

        }
    }
    public string getmaxno()
    {
        string s = string.Empty, id = string.Empty;
        Getconnection c = new Getconnection();
        try
        {
            string s1 = "select Top (1) No from tbl_UserRights_Noseries order By Id DESC";
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
            s = fid.ToString();
            lblcomno.Text = s.ToString();
            txtinqno.Text = s;
            //hfMaxEntryNo.Value = fid.ToString();
            bal.tbl_UserRights_No_Series_InsertBAL(s, "", "");
        }
        catch (Exception ex)
        {
            txtinqno.Text = "1";
        }
        finally
        {
            c.CloseConnection();
        }
        return s;
    }
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    public void bindemployee()
    {
        try
        {
            DataTable dtbtype = new DataTable();


            dtbtype = bal.GetAllEmployeeList();
            if (dtbtype.Rows.Count > 0)
            {
                ddlEmpName.DataSource = dtbtype;
                ddlEmpName.DataTextField = "Ename";
                ddlEmpName.DataValueField = "no";
                ddlEmpName.DataBind();
            }
            ddlEmpName.Items.Insert(0, new ListItem("----Select Employee----", "0"));

        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void bindRole()
    {
        try
        {
            DataTable dtdept = new DataTable();


            dtdept = bal.getallRoleforadminBAL();
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
    public void bindpages()
    {
        try
        {

            DataTable dt = new DataTable();
            dt = bal.GetAllRolePageListBAL(ddlRole.SelectedValue);

            if (dt.Rows.Count > 0)
            {
                tbldiv.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                tbldiv.Visible = false;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

    public void bindpagesupdate()
    {
        try
        {

            DataTable dt = new DataTable();
            dt = bal.bindpagesupdateBAL(lblcomno.Text);

            if (dt.Rows.Count > 0)
            {
                tbldiv.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                tbldiv.Visible = false;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    public void bindReport()
    {
        try
        {
           
            DataTable dt = new DataTable();
            dt = bal.GetAllReportListBAL(ddlRole.SelectedItem.ToString());

            if (dt.Rows.Count > 0)
            {
                Reportddl.DataSource = dt;
                Reportddl.DataTextField = "Ename";
                Reportddl.DataValueField = "no";
                Reportddl.DataBind();
                Reportddl.Items.Insert(0, new ListItem("----Select Employee----", "0"));
            }
            else
            {
                Reportddl.Items.Clear();
                Reportddl.Items.Insert(0, new ListItem("----Select Employee----", "0"));
                Reportddl.Enabled = false;
            }
            
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            bindpages();
            ddlEmpName.ClearSelection();
        }
        catch (Exception ex)
        {

        }
    }
    public int checkno()
    {
        int res = 0;
        try
        {
            string s = "select * from User_Rights where srno='" + txtinqno.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, c.getconnection());
            DataTable dtinq = new DataTable();
            da.Fill(dtinq);
            if (dtinq.Rows.Count > 0)
            {
                res = 1;
            }
            else
            {
                res = 0;
            }
        }
        catch (Exception ex)
        {

        }
        return res;
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
            string result = "";
            string report = "";
            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
            foreach (GridViewRow row in GridView1.Rows)
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
                    if (Reportddl.SelectedValue == "0")
                    {
                        report = ddlEmpName.SelectedValue;
                    }
                    else
                    {
                        report = Reportddl.SelectedValue;
                    }
                }
                result = bal.tbl_User_PermisionBAL(lblcomno.Text, pname, Create1, view1, viewall1, edit1, delete1, print1, mail1, ddlRole.SelectedValue, lblloginid.Text, localTime, ddlEmpName.SelectedValue, report, "", "", "");

            }
            if (result == "1")
            {
                ShowMessage("Record Inserted!!!", MessageType.Success);
                Response.Redirect("userregister.aspx", false);
            }
            else if (result == "-1")
            {
                ShowMessage("Employeee Already Exist!!!", MessageType.Error);
            }
            else
            {
                ShowMessage("Record Not Inserted!!!", MessageType.Error);
            }
        }
        catch (Exception ex)
        {

        }
    }

    protected void ddlEmpName_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dtdept = new DataTable();


        dtdept = bal.GetRoleListbyemployee(ddlEmpName.SelectedValue);
        if (dtdept.Rows.Count > 0)
        {
            ddlRole.SelectedValue = dtdept.Rows[0]["Id"].ToString();
            bindpages();
            bindReport();
        }

    }



    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        Label lblPage = (e.Row.FindControl("lblpname") as Label);
        DataTable dtcheckitm = new DataTable();
        if (flag == true)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                dtcheckitm = bal.GetAllRolePageListByEmpBAL(lblcomno.Text);

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
        else
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                dtcheckitm = bal.GetAllRolePageListBAL(ddlRole.SelectedValue);

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

    public void filldata()
    {
        DataTable dt = new DataTable();
        dt = bal.GetUserRightsbyNoBAL(lblcomno.Text);
        if (dt.Rows.Count > 0)
        {
            ddlEmpName.SelectedValue = dt.Rows[0]["EmployeeID"].ToString();
            ddlRole.SelectedValue = dt.Rows[0]["RoleName"].ToString();
            txtinqno.Text = dt.Rows[0]["Noseries"].ToString();
            bindpagesupdate();
            bindReport();
            Reportddl.SelectedValue = dt.Rows[0]["Extra2"].ToString();
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
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
            string ID = "";
            string result = "";
            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    pname = (((Label)row.FindControl("lblpname")).Text);
                    ID = (((Label)row.FindControl("Label1")).Text);
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
                result = bal.tbl_User_PermisionUpdateBAL(ID, lblcomno.Text, pname, Create1, view1, viewall1, edit1, delete1, print1, mail1, ddlRole.SelectedValue, lblloginid.Text, localTime, ddlEmpName.SelectedValue, "", "", "", "");

            }
            if (result == "1")
            {
                ShowMessage("Record Updated!!!", MessageType.Success);
                Response.Redirect("userregister.aspx", false);
            }
            else if (result == "-1")
            {
                ShowMessage("Employeee Already Exist!!!", MessageType.Error);
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
}