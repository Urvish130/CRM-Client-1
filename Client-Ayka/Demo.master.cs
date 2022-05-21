using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demo : System.Web.UI.MasterPage
{
    DataTable dt = new DataTable();
    Getconnection c = new Getconnection();
    BusinessLogicLayer bal = new BusinessLogicLayer();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            string LoginID = Session["id"].ToString();
            string lblrole = Session["role"].ToString();
            dt = bal.CheckUserRightsBAL(LoginID, "");

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox tb;
                string PageName = dt.Rows[i]["PageName"].ToString();
                string Create = dt.Rows[i]["CreateStatus"].ToString();
                string Edit = dt.Rows[i]["EditStatus"].ToString();
                string View = dt.Rows[i]["ViewStatus"].ToString();
                string Delete = dt.Rows[i]["DeleteStatus"].ToString();
                string Email = dt.Rows[i]["EmailStatus"].ToString();
                string Print = dt.Rows[i]["PrintStatus"].ToString();
                string PageName1 = dt.Rows[i]["PageName"].ToString();

                if (Create == "false" && Edit == "false" && View == "false" && Delete == "false" && Email == "false" &&
                    Print == "false")
                {
                    if (PageName1 == "InquiryMaster")
                    {
                        InquiryMaster.Visible = false;
                    }
                    else if (PageName1 == "QuotationMaster")
                    {
                        QuotationMaster.Visible = false;
                    }
                    else if (PageName1 == "CompanyMaster")
                    {
                        CompanyMaster.Visible = false;
                    }
                    else if (PageName1 == "CustomerMaster")
                    {
                        CustomerMaster.Visible = false;
                    }
                    else if (PageName1 == "OrderMaster")
                    {
                        OrderMaster.Visible = false;

                    }
                    else if (PageName1 == "EmployeeMaster")
                    {
                        EmployeeMaster.Visible = false;
                    }
                    else if (PageName1 == "ItemMaster")
                    {
                        ItemMaster.Visible = false;
                    }
                     else if (PageName1 == "TaskMaster")
                    {
                        TaskMaster.Visible = false;
                    }

                }


            }
            if (lblrole.Equals("SuperAdmin"))
            {
                MasteMenu.Visible = true;
                InquriyTransfer.Visible = true;
            }
            }

        else
        {
            Response.Redirect("login.aspx", false);
        }
     
    }

    protected void profredirect_Click(object sender, EventArgs e)
    {
        string LoginID = Session["id"].ToString();
        Response.Redirect(String.Format("UpdateEmployee.aspx?test={0}", LoginID), false);
    }
}
