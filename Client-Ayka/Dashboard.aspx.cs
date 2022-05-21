using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    BusinessLogicLayer bal = new BusinessLogicLayer();
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
                bindDetail();
                bindDetail1();
                BindTask();
            }


        }
    }
    public void bindDetail()
    {

        try
        {

            DataTable dt = new DataTable();
            DateTime utcTime = DateTime.UtcNow;
            string Date = utcTime.Day.ToString();
            string Month = utcTime.Month.ToString();
            if (Convert.ToInt32(Month) < 10)
            {
                Month = "0" + Month + "";
            }
            string Year = utcTime.Year.ToString();
            string FinalDate = "" + Date + "/" + Month + "/" + Year;
            string RoleName = Session["role"].ToString();
            string date = FinalDate;
            if ( RoleName != "SuperAdmin")
            {
                dt = bal.getFollowupdataFordashBAL(Convert.ToInt32(lblloginid.Text), date);
            }
            else
            {
                dt = bal.getFollowupdataFordashAdminBAL(Convert.ToInt32(lblloginid.Text), date);
            }

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
                grddata.UseAccessibleHeader = true;
                grddata.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
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
                Response.Redirect(String.Format("Updatefollowup.aspx?no={0}", lblid.Text), false);
            }
        }
        catch (Exception ex)
        {

        }
    }
    public void bindDetail1()
    {

        try
        {
            DateTime utcTime = DateTime.UtcNow;
            string Date = utcTime.Day.ToString();
            string Month = utcTime.Month.ToString();
            if (Convert.ToInt32(Month) < 10)
            {
                Month = "0" + Month + "";
            }
            string Year = utcTime.Year.ToString();
            string FinalDate = "" + Date + "/" + Month + "/" + Year;
            string RoleName = Session["role"].ToString();
            string date = FinalDate;
            if ( RoleName != "SuperAdmin")
            {
                dt = bal.getQuotationdataFordashBAL(Convert.ToInt32(lblloginid.Text), date);
            }
            else
            {
                dt = bal.getQuotationdataForAdmindashBAL(Convert.ToInt32(lblloginid.Text), date);
            }



            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.UseAccessibleHeader = true;
                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.UseAccessibleHeader = true;
                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }
    protected void grddata1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            string result;
            lblid.Text = e.CommandArgument.ToString();
            if (e.CommandName == "editdata")
            {
                Response.Redirect(String.Format("UpdateQuotationFollowup.aspx?no={0}", lblid.Text), false);
            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void TaskGrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "TaskUpdate")
        {
            string Data = e.CommandArgument.ToString();
            string[] ID = Data.Split(',');
            string EmpID = ID[0];
            string No = ID[1];
            Response.Redirect(String.Format("Tasks.aspx?noseries={0}&EmpID={1}", No, EmpID), false);
        }
    }


    public void BindTask()
    {

        try
        {
            DateTime utcTime = DateTime.UtcNow;
            string Date = utcTime.Day.ToString();
            string Month = utcTime.Month.ToString();
            if (Convert.ToInt32(Month) < 10)
            {
                Month = "0" + Month + "";
            }
            string Year = utcTime.Year.ToString();
            string FinalDate = "" + Date + "/" + Month + "/" + Year;
            string RoleName = Session["role"].ToString();
            string date = FinalDate;
            if ( RoleName.Equals("SuperAdmin"))
            {
                dt = bal.GetAllTaskDashforadminBAL(date);
            }
            else
            {

                dt = bal.GetTaskByDashEmpBAL(lblloginid.Text, date);
            }


            if (dt.Rows.Count > 0)
            {
                TaskGrid.DataSource = dt;
                TaskGrid.DataBind();
                TaskGrid.UseAccessibleHeader = true;
                TaskGrid.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                TaskGrid.DataSource = dt;
                TaskGrid.DataBind();
                TaskGrid.UseAccessibleHeader = true;
                TaskGrid.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        catch (Exception ex)
        {
            Getconnection.SiteErrorInsert(ex);
        }
    }

}