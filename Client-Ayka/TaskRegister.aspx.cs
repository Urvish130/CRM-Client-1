using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class TaskRegister : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    DataTable dt = new DataTable();
    DataTable dt2 = new DataTable();
    BusinessLogicLayer bal = new BusinessLogicLayer();
    public string Create = "";
    public string Edit = "";
    public string Update = "";
    public string View = "";
    public string Delete = "";
    public string Email = "";
    public string Print = "";
    public string Convert = "";
    public int GridCount = 0;
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
                try
                {
                    lblloginid.Text = Session["id"].ToString();
                    lblrole.Text = Session["role"].ToString();

                    dt = bal.CheckUserRightsBAL(lblloginid.Text, "TaskMaster");
                    Create = dt.Rows[0]["CreateStatus"].ToString();
                    Edit = dt.Rows[0]["EditStatus"].ToString();
                    View = dt.Rows[0]["ViewStatus"].ToString();
                    Delete = dt.Rows[0]["DeleteStatus"].ToString();
                    Email = dt.Rows[0]["EmailStatus"].ToString();
                    Print = dt.Rows[0]["PrintStatus"].ToString();

                    bindDetail();
                }
                catch (Exception ex)
                {
                    ShowMessage("Error In User Permission!..", MessageType.Success);
                }
            }
        }
    }
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void btncreate_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Tasks.aspx", false);
        }
        catch (Exception ex)
        {

        }

    }

    public void bindDetail()
    {

        try
        {
            if (Create == "false")
            {
                btncreate.Visible = false;

            }

            string RoleName = Session["role"].ToString();
            if ( RoleName.Equals("SuperAdmin"))
            {
                dt = bal.GetAllTaskdataforadminBAL();
            }
            else
            {

                dt = bal.GetTaskByEmpBAL(lblloginid.Text);
            }

            GridCount = dt.Rows.Count;
            if (dt.Rows.Count > 0)
            {
                grdData.DataSource = dt;
                grdData.DataBind();
                grdData.UseAccessibleHeader = true;
                grdData.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grdData.DataSource = dt;
                grdData.DataBind();
                
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
           
            if (e.CommandName == "editdata")
            {
                lblid.Text = e.CommandArgument.ToString();
                Response.Redirect(String.Format("Tasks.aspx?no={0}", lblid.Text), false);
            }
            else if (e.CommandName == "editStatus")
            {
                string Data = e.CommandArgument.ToString();
                string[] ID = Data.Split(',');
                string EmpID = ID[0];
                string No = ID[1];
                Response.Redirect(String.Format("Tasks.aspx?nos={0}&Emp={1}", No, EmpID), false);
            }
            else if (e.CommandName == "TaskUpdate")
            {
                string Data = e.CommandArgument.ToString();
                string[] ID = Data.Split(',');
                string EmpID = ID[0];
                string No = ID[1];
                Response.Redirect(String.Format("Tasks.aspx?noseries={0}&EmpID={1}", No, EmpID), false);
            }
        }
        catch (Exception ex)
        {

        }
    }

   

   

    protected void grdData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //try
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {


        //        string customerId = grdData.DataKeys[e.Row.RowIndex].Value.ToString();


        //        string RoleName = Session["rolename"].ToString();

        //        for (int i=0;i<GridCount;i++)
        //        {
        //            if  (RoleName != "Admin" && RoleName != "SuperAdmin")
        //            {
        //                ImageButton Edit = (ImageButton)e.Row.FindControl("btnedit1");
        //                ImageButton Convert = (ImageButton)e.Row.FindControl("btnedit");
        //                ImageButton Update = (ImageButton)e.Row.FindControl("btnDelete");
        //                Edit.Visible = false;
        //                Convert.Visible = false;
        //                Update.Visible = true;
        //            }



        //        }






        //    }

        //}
        //catch (Exception ex)
        //{

        //}
    }

    protected void grdData_RowCreated(object sender, GridViewRowEventArgs e)
    {
        string RoleName = Session["role"].ToString();
        if ( RoleName != "SuperAdmin")
        {
            grdData.Columns[9].Visible = false;
            grdData.Columns[10].Visible = false;
            grdData.Columns[11].Visible = true;
            
        }
        if (Edit == "false")
        {
            grdData.Columns[9].Visible = false;
            grdData.Columns[10].Visible = false;
            grdData.Columns[11].Visible = true;
        }
        
    }
}
