using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for DataLogicLayer
/// </summary>
public class DataAccessLayer
{

    Getconnection con = new Getconnection();
    SqlConnection c;
    SqlCommand cmd;
    SqlCommand cmd1;
    //industry type start
    public string SaveMyTablebll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertindustryname1", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@IndustryName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable getallIndustrygroupfroadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("indutrynamedisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable checkdata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkindustryname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@IndustryName", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable checkName(string name,string Email)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkcompanyname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@IndustryName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable CheckEmployee(string name, string Email)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkEmployee", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@IndustryName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable checkcust(string Id,string name, string Email)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkCustName", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@comname", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable checkCustName(string name, string Email)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkCustomername", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@IndustryName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable checkdataupdate(string name, string id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkindustrynameupdate", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@IndustryName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getIndustrygroupdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showindustryname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string deletedata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteindustryname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string tbl_update(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updateindustryname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@IndustryName", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable checklogindata(string uname, string password)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checklogindetails", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = uname;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = password;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    // Industry type end

    //Businesstype start
    public string Savebusinesstypebll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertbusinesstype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@BusinessType", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallbusinesstypeDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("businesstypedisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkbusinesstypedata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkbusinesstypename", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@BusinessTypeName", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done

    public DataTable checkbusinesstypedataupdate(string name,string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkbusinesstypenameupdate", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@BusinessTypeName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getBusinesstypedatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showbusinesstype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deletebusinesstypedata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletebusinesstype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_businesstypeupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatebusinesstype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@BusinessTypeName", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    //Businesstype End

    // Role Start 

    public string Saverolebll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertrole", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Role", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallroleDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("roledisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkroledata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkrole", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Role", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getroledatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showrole", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deleteroledata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleterole", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_roleupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updaterole", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Role", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    // Role End

    //Source Start

    public string Savesourcebll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertsource", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Source", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallsourceDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("sourcedisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checksourcedata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checksource", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Source", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getsourcedatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showsource", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deletesourcedata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletesource", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_sourceupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatesource", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Source", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    //Source End

    //Status Start

    public string Savestatusbll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertstatus", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallstatusDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("statusdisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkstatusdata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkstatus", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getstatusdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showstatus", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deletestatusdata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletestatus", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_statusupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatestatus", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    //Status End

    //Department Start

    public string Savedepartmentbll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertdepartment", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Department", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getalldepartmentDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("depaartmentdisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done

    public DataTable getalldepartmentByContactIDDAL(int ContactID)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetDepartmentddl", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@ContactID", SqlDbType.Int).Value = ContactID;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkdepartmentdata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkdepartment", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Department", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getdepartmentdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showdepartment", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deletedepartmentdata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletedepartment", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_departmentupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatedepartment", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Department", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    //Department end

    //Designation Start

    public string Savedesignationbll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertdesignation", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Designation", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getalldesignationDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("designationdisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done

    public DataTable getalldesignationByContactDAL(int ContactID)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getDesibyContact", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@ContactID", SqlDbType.VarChar).Value = ContactID;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkdesignationdata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkdesignation", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Designation", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getdesignationdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showdesignation", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deletedesignationdata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletedesignation", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_designationupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatedesignation", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Designation", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    //Designation END

    // Unit of measurement start

    public string Saveunitofmeasurementbll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertunitofmeasurement", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UnitofMeasurement", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallunitofmeasurementDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("unitofmeasurementdisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getallUnitByItemDAL(int ItemID)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetUOMbyItemID", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ItemID", SqlDbType.Int).Value = ItemID;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
           
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkunitofmeasurementdata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkunitofmeasurement", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@UnitofMeasurement", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getunitofmeasurementdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showunitofmeasurement", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deleteunitofmeasurementdata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteunitofmeasurement", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_unitofmeasurementupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updateunitofmeasurement", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@UnitofMeasurement", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    //Unit of Measurement End
    //FollowUpType start



    

    public string Savefollowuptypebll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertfollowuptype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@FollowUpType", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallfollowuptypeDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("followuptypedisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkfollowuptypedata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkfollowuptype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@FollowUpType", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getfollowuptypedatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showfollowuptable", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deletefollowuptypedata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletefollowuptype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_followuptypeupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatefollowuptype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@FollowUpType", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    //FollowUpType End

    //ItemGroup start

    public string Saveitemgroupbll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertitemgroup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ItemGroup", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallitemgroupDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("itemgroupdisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkitemgroupdata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkitemgroup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@ItemGroup", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getitemgroupdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showitemgroup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deleteitemgroupdata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteitemgroup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_itemgroupupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updateitemgroup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@ItemGroup", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done


    //ItemGroup Done



    //ApplicationType start

    public string Saveapplicationtypebll(string type, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertapplicationtype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ApplicationType", SqlDbType.VarChar).Value = type;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallapplicationtypeDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("applicationtypedisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkapplicationtypedata(string type)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkapplicationtype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@ApplicationType", SqlDbType.VarChar).Value = type;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getapplicationtypedatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showapplicationtype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deleteapplicationtypedata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteapplicationtype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_applicationtypeupdate(string Id, string type)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updateapplicationtype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@ApplicationType", SqlDbType.VarChar).Value = type;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done


    //ApplicationType Done




    //MachineType start

    public string Savemachinetypebll(string type, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertmachinetype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MachineType", SqlDbType.VarChar).Value = type;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallmachinetypeDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("machinetypedisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkmachinetypedata(string type)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkmachinetype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@MachineType", SqlDbType.VarChar).Value = type;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getmachinetypedatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showmachinetype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deletemachinetypedata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletemachinetype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_machinetypeupdate(string Id, string type)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatemachinetype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@MachineType", SqlDbType.VarChar).Value = type;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done


    //MachineType Done


    //Compressor start

    public string Savecompressortypebll(string type, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertcompressortype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@CompressorType", SqlDbType.VarChar).Value = type;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public DataTable getallcompressortypeDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("compressortypedisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable checkcompressortypedata(string type)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkcompressortype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@CompressorType", SqlDbType.VarChar).Value = type;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getcompressortypedatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showcompressortype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public string deletecompressortypedata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletecompressortype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_compressortypedate(string Id, string type)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatecompressortype", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@CompressorType", SqlDbType.VarChar).Value = type;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done


    //CompressorType Done



    //ItemSubgroup Start

    public DataTable getallItemsubgroup(int id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallItemsubgroup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallItemsubgroupforDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetListOfSubGroup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
           
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallItemsubgroupforadminDAL(int GroupID)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallItemsubgroupforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@GroupID", SqlDbType.Int).Value = GroupID;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable checkItemsubgroupnameDAL(string SubGroupName,string GroupName)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkItemsubgroupname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@ItemSubgroupName", SqlDbType.VarChar).Value = SubGroupName;
            cmd.Parameters.Add("@GroupName", SqlDbType.VarChar).Value = GroupName;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Itemsubgroup_Master_InsertDAL(string ItemSubGroupName, int ItemGroupId, string CreateBy, DateTime @CreateDatetime, string Extra1, string Extra2, string @Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertitemsubgroup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@SubGroupName", SqlDbType.VarChar).Value = ItemSubGroupName;
            cmd.Parameters.Add("@ItemGroupId", SqlDbType.Int).Value = ItemGroupId;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getItemsubgroupdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getItemsubgroupdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string deleteItemsubgroupdatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteItemsubgroupdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Itemsubgroup_Master_UpdateDAL(string Id, int ItemGroupId, string ItemSubGroupName)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updateitemsubgroup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@ItemGroupid", SqlDbType.Int).Value = ItemGroupId;
            cmd.Parameters.Add("@SubGroupName", SqlDbType.VarChar).Value = ItemSubGroupName;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    // Item master start
    public string tbl_ItemDocument_Master_InsertDAL(string no, string DocuName, string Filename, string DocumentPath, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_ItemDocument_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@DocuName", SqlDbType.VarChar).Value = DocuName;
            cmd.Parameters.Add("@Filename", SqlDbType.VarChar).Value = Filename;
            cmd.Parameters.Add("@DocumentPath", SqlDbType.VarChar).Value = DocumentPath;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable getItemdocumentadataDAL(string Createby, int no)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getitemdocumentdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
           
            cmd.Parameters.Add("@no", SqlDbType.BigInt).Value = no;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }


    public DataTable GetBOMDetailsDAL(int no)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetBOMdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            cmd.Parameters.Add("@no", SqlDbType.BigInt).Value = no;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable GetBOMDetailsByItemIDDAL(int no)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetBombyItemID", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            cmd.Parameters.Add("@id", SqlDbType.BigInt).Value = no;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable GetBOMTable(string no)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetBOMTable", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            cmd.Parameters.Add("@ItemNO", SqlDbType.BigInt).Value = no;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable GetQuotBOMTable(string no,string ItemNo)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetQuotationBOM", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@ItemNO", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@QuotationNo", SqlDbType.VarChar).Value = ItemNo;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable GetOrderBOMTable(string no, string ItemNo)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetOrderBOM", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@ItemNO", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@QuotationNo", SqlDbType.VarChar).Value = ItemNo;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }


    public DataTable GetQuotDetailTable(string no, string ItemNo)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetQuotDetails", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@ItemNO", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@QuotationNo", SqlDbType.VarChar).Value = ItemNo;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable GetOrderDetailTable(string no, string ItemNo)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetBOMOrderDetails", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@ItemNO", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@QuotationNo", SqlDbType.VarChar).Value = ItemNo;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string deletitemimgdatabyidDAL(string id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteitemimgdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_ItemImage_Master_InsertDAL(string no, string DocuName, string Filename, string DocumentPath, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_ItemImage_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@DocuName", SqlDbType.VarChar).Value = DocuName;
            cmd.Parameters.Add("@Filename", SqlDbType.VarChar).Value = Filename;
            cmd.Parameters.Add("@DocumentPath", SqlDbType.VarChar).Value = DocumentPath;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getItemimageadataDAL(string Createby, int no)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getitemimagedata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
          
            cmd.Parameters.Add("@no", SqlDbType.BigInt).Value = no;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string deletitemdocumentdatabyidDAL(string id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteitemdocumentdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable checkItemnameDAL(string Itemname)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkItemname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Itemname", SqlDbType.VarChar).Value = Itemname;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable checkSubItemDAL(string Itemname)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkItemname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Itemname", SqlDbType.VarChar).Value = Itemname;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string tbl_Item_Master_InsertDAL(int no, int itemgroup, int itemsubgroup, string Modelno, string Itemname, string ItemFinalname, string Itemalis, string Itemcategoryno, int ItemUOM, decimal Itemrate, int Itemgst, string ItemHsn, string ItemDesc, string CreateBy, DateTime @CreateDatetime, string Extra1, string Extra2, string @Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Item_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.Int).Value = no;
            cmd.Parameters.Add("@itemgroup", SqlDbType.Int).Value = itemgroup;
            cmd.Parameters.Add("@itemsubgroup", SqlDbType.Int).Value = itemsubgroup;
            cmd.Parameters.Add("@Modelno", SqlDbType.VarChar).Value = Modelno;
            cmd.Parameters.Add("@Itemname", SqlDbType.VarChar).Value = Itemname;
            cmd.Parameters.Add("ItemFinalname", SqlDbType.VarChar).Value = ItemFinalname;
            cmd.Parameters.Add("@Itemalis", SqlDbType.VarChar).Value = Itemalis;
            cmd.Parameters.Add("@Itemcategoryno", SqlDbType.VarChar).Value = Itemcategoryno;
            cmd.Parameters.Add("@ItemUOM", SqlDbType.Int).Value = ItemUOM;
            cmd.Parameters.Add("@Itemrate", SqlDbType.Decimal).Value = Itemrate;
            cmd.Parameters.Add("@Itemgst", SqlDbType.Int).Value = Itemgst;
            cmd.Parameters.Add("@ItemHsn", SqlDbType.VarChar).Value = ItemHsn;
            cmd.Parameters.Add("@ItemDesc", SqlDbType.VarChar).Value = @ItemDesc;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }


    public string tbl_SubItem_Master_InsertDAL(int no, string SubItemName, decimal Itemrate,string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd1 = new SqlCommand("tbl_BOM_Master_Insert", c);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@No", SqlDbType.Int).Value = no;
            cmd1.Parameters.Add("@SubItemName", SqlDbType.VarChar).Value = SubItemName;           
            cmd1.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd1.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd1.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd1.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd1.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd1.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd1.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd1.ExecuteNonQuery().ToString();           
            int BOM = GetBOMID(no);
            c = con.getconnection();
            cmd = new SqlCommand("tbl_SubItem_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.Int).Value = no;           
            cmd.Parameters.Add("@SubItemName", SqlDbType.VarChar).Value = SubItemName;            
            cmd.Parameters.Add("@Itemrate", SqlDbType.Decimal).Value = Itemrate;           
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = BOM;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public int GetBOMID(int No)
    {
        c = con.getconnection();
        cmd = new SqlCommand("GetLastID", c);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@No", SqlDbType.Int).Value = No;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = null;
        dt = new DataTable();
        da.Fill(dt);
        int Result=Convert.ToInt32(dt.Rows[0]["Id"].ToString());
        return Result;
    }

    public DataTable getallItemdataDAL(string Createby)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallItemdataRegiforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallItemdataforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallItemdataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallItemdataRegiforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallItemdataRegiforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getItemSubDDLDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetSubItemDDL", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallitemdatabynoDAL(string no)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallitemdatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Item_Master_updateDAL(int no, int itemgroup, int itemsubgroup, string Modelno, string Itemname, string ItemFinalname, string Itemalis, string Itemcategoryno, int ItemUOM, decimal Itemrate, int Itemgst, string ItemHsn, string ItemDesc, string CreateBy, DateTime @CreateDatetime, string Extra1, string Extra2, string @Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Item_Master_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.Int).Value = no;
            cmd.Parameters.Add("@itemgroup", SqlDbType.Int).Value = itemgroup;
            cmd.Parameters.Add("@itemsubgroup", SqlDbType.Int).Value = itemsubgroup;
            cmd.Parameters.Add("@Modelno", SqlDbType.VarChar).Value = Modelno;
            cmd.Parameters.Add("@Itemname", SqlDbType.VarChar).Value = Itemname;
            cmd.Parameters.Add("ItemFinalname", SqlDbType.VarChar).Value = ItemFinalname;
            cmd.Parameters.Add("@Itemalis", SqlDbType.VarChar).Value = Itemalis;
            cmd.Parameters.Add("@Itemcategoryno", SqlDbType.VarChar).Value = Itemcategoryno;
            cmd.Parameters.Add("@ItemUOM", SqlDbType.Int).Value = ItemUOM;
            cmd.Parameters.Add("@Itemrate", SqlDbType.Decimal).Value = Itemrate;
            cmd.Parameters.Add("@Itemgst", SqlDbType.Int).Value = Itemgst;
            cmd.Parameters.Add("@ItemHsn", SqlDbType.VarChar).Value = ItemHsn;
            cmd.Parameters.Add("@ItemDesc", SqlDbType.VarChar).Value = @ItemDesc;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string deleteitematanoDAL(string no)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteitematano", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }


    //NO SERIES

    public string tbl_Item_NoSeries_InsertDAL(string No, string Extra1, string Extra2)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Item_NoSeries_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.BigInt).Value = No;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Company_NoSeries_InsertDAL(string CompanyNo, string Extra1, string Extra2)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Company_NoSeries_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@CompanyNo", SqlDbType.BigInt).Value = CompanyNo;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Customer_Noseries_InsertDAL(string No, string Extra1, string Extra2)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Customer_Noseries_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.BigInt).Value = No;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    //No series end

    // Company Master

    public DataTable checkcompanycontactnameDAL(string companyno, string ContactName, string ContactEmail)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkcompanycontactname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@companyno", SqlDbType.VarChar).Value = companyno;
            cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = ContactName;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Company_Contact_Master_InsertDAL(string Companyno, string ContactName, string ContactEmail, string ContactPhone, string ContactMobileno1, string ContactMobileno2, int Dept, int Design, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Company_Contact_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Companyno", SqlDbType.VarChar).Value = Companyno;
            cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = ContactName;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactPhone", SqlDbType.VarChar).Value = ContactPhone;
            cmd.Parameters.Add("@ContactMobileno1", SqlDbType.VarChar).Value = ContactMobileno1;
            cmd.Parameters.Add("@ContactMobileno2", SqlDbType.VarChar).Value = ContactMobileno2;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getcompanycontactdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getcompanycontactdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string deletecompanycontactdatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletecompanycontactdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Company_Contact_Master_updateDAL(int Id, string ContactName, string ContactEmail, string ContactPhone, string ContactMobileno1, string ContactMobileno2, int Dept, int Design, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Company_Contact_Master_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = ContactName;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactPhone", SqlDbType.VarChar).Value = ContactPhone;
            cmd.Parameters.Add("@ContactMobileno1", SqlDbType.VarChar).Value = ContactMobileno1;
            cmd.Parameters.Add("@ContactMobileno2", SqlDbType.VarChar).Value = ContactMobileno2;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;

            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable getcompanycontactdataDAL(string Createby, int companyno)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getcompanycontactdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            
            cmd.Parameters.Add("@companyno", SqlDbType.BigInt).Value = companyno;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Company_Master_InsertDAL(string Companyno, string Comname, string Comarea, string Comaddress, string Comcity, string Comstate, string ComDistrict, string ComCountry, string ComPincode, string ComPhoneNo, string ComEmail, int BussinessType, int Industrygroup, string URL, string Status, string GSTno, string Bankname, string Accountno, string IFSCcode, string CreateBy, DateTime CreateDatetime, string Extra1, byte[] Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Company_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Companyno", SqlDbType.VarChar).Value = Companyno;
            cmd.Parameters.Add("@Comname", SqlDbType.VarChar).Value = Comname;
            cmd.Parameters.Add("@Comarea", SqlDbType.VarChar).Value = Comarea;
            cmd.Parameters.Add("@Comaddress", SqlDbType.VarChar).Value = Comaddress;
            cmd.Parameters.Add("@Comcity", SqlDbType.VarChar).Value = Comcity;
            cmd.Parameters.Add("@Comstate", SqlDbType.VarChar).Value = Comstate;
            cmd.Parameters.Add("@ComDistrict", SqlDbType.VarChar).Value = ComDistrict;
            cmd.Parameters.Add("@ComCountry", SqlDbType.VarChar).Value = ComCountry;
            cmd.Parameters.Add("@ComPincode", SqlDbType.VarChar).Value = ComPincode;
            cmd.Parameters.Add("@ComPhoneNo", SqlDbType.VarChar).Value = ComPhoneNo;
            cmd.Parameters.Add("@ComEmail", SqlDbType.VarChar).Value = ComEmail;
            cmd.Parameters.Add("@BussinessType", SqlDbType.Int).Value = BussinessType;
            cmd.Parameters.Add("@Industrygroup", SqlDbType.Int).Value = Industrygroup;
            cmd.Parameters.Add("@URL", SqlDbType.VarChar).Value = URL;
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = Status;
            cmd.Parameters.Add("@GSTno", SqlDbType.VarChar).Value = GSTno;
            cmd.Parameters.Add("@Bankname", SqlDbType.VarChar).Value = Bankname;
            cmd.Parameters.Add("@Accountno", SqlDbType.VarChar).Value = Accountno;
            cmd.Parameters.Add("@IFSCcode", SqlDbType.VarChar).Value = IFSCcode;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarBinary).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getallcompanydataDAL(int Createby)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallcompanydata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@CreateBy", SqlDbType.Int).Value = Createby;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }



    public DataTable getallcompanydataforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallcompanydatabyadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallcompanydatabycomnoDAL(string comno)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallcompanydatabycomno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@comno", SqlDbType.VarChar).Value = comno;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Company_Master_updateDAL(string Companyno, string Comname, string Comarea, string Comaddress, string Comcity, string Comstate, string ComDistrict, string ComCountry, string ComPincode, string ComPhoneNo, string ComEmail, int BussinessType, int Industrygroup, string URL, string Status, string GSTno, string Bankname, string Accountno, string IFSCcode, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Company_Master_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Companyno", SqlDbType.VarChar).Value = Companyno;
            cmd.Parameters.Add("@Comname", SqlDbType.VarChar).Value = Comname;
            cmd.Parameters.Add("@Comarea", SqlDbType.VarChar).Value = Comarea;
            cmd.Parameters.Add("@Comaddress", SqlDbType.VarChar).Value = Comaddress;
            cmd.Parameters.Add("@Comcity", SqlDbType.VarChar).Value = Comcity;
            cmd.Parameters.Add("@Comstate", SqlDbType.VarChar).Value = Comstate;
            cmd.Parameters.Add("@ComDistrict", SqlDbType.VarChar).Value = ComDistrict;
            cmd.Parameters.Add("@ComCountry", SqlDbType.VarChar).Value = ComCountry;
            cmd.Parameters.Add("@ComPincode", SqlDbType.VarChar).Value = ComPincode;
            cmd.Parameters.Add("@ComPhoneNo", SqlDbType.VarChar).Value = ComPhoneNo;
            cmd.Parameters.Add("@ComEmail", SqlDbType.VarChar).Value = ComEmail;
            cmd.Parameters.Add("@BussinessType", SqlDbType.Int).Value = BussinessType;
            cmd.Parameters.Add("@Industrygroup", SqlDbType.Int).Value = Industrygroup;
            cmd.Parameters.Add("@URL", SqlDbType.VarChar).Value = URL;
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = Status;
            cmd.Parameters.Add("@GSTno", SqlDbType.VarChar).Value = GSTno;
            cmd.Parameters.Add("@Bankname", SqlDbType.VarChar).Value = Bankname;
            cmd.Parameters.Add("@Accountno", SqlDbType.VarChar).Value = Accountno;
            cmd.Parameters.Add("@IFSCcode", SqlDbType.VarChar).Value = IFSCcode;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string deletecompanydatabyCompanynoDAL(string companyno)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletecompanydatabyCompanyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@companyno", SqlDbType.VarChar).Value = companyno;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    //company master ended

    //Country master
    public DataTable getallcountryDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("countrydisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable checkcountrydata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkcountryname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done

    public string Savecountrybll(string name, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertcountry", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    public DataTable getcountrydatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        { 
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showcountry", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done

    public string deletecountrydata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletecountry", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done

    public string tbl_countryupdate(string Id, string name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatecountry", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = name;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done


    //End
    //State start

    //public DataTable getallstate(int id)
    //{
    //    DataTable dt = null;
    //    try
    //    {
    //        c = con.getconnection();
    //        SqlCommand cmd = new SqlCommand("getallstate", c);
    //        cmd.CommandType = CommandType.StoredProcedure;
    //        SqlDataAdapter da = new SqlDataAdapter(cmd);
    //        cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;

    //        dt = new DataTable();
    //        da.Fill(dt);
    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //    return dt;
    //}
    public DataTable getallstateforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallstateforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
       {

        }
        return dt;
    }

    public DataTable getallstateByCoutryIDDAL(int CountryID)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallstatebycountryid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@CountryID", SqlDbType.Int).Value = CountryID;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getstatedatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getstatedatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string deletestatedatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletestatedatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable checkstatenameDAL(string GroupName,int CountryID)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkstatename", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = GroupName;
            cmd.Parameters.Add("@CountryID", SqlDbType.Int).Value = CountryID;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_state_Master_InsertDAL(string StateName, int CountryId, string CreateBy, DateTime @CreateDatetime, string Extra1, string Extra2, string @Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertstate", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = StateName;
            cmd.Parameters.Add("@Country", SqlDbType.Int).Value = CountryId;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string tbl_state_Master_UpdateDAL(string Id, int ItemGroupId, string ItemSubGroupName)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatestate", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Country", SqlDbType.Int).Value = ItemGroupId;
            cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = ItemSubGroupName;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }


    // state end
    //city start

    public DataTable getallcityforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallcityforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getcitydatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getscitydatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string deletecitydatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletecitydatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string deleteCompanyDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletecompanydata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string deleteCustomerDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteCustomer", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable checkcitynameDAL(string GroupName,int CountryID)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkcityname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = GroupName;
            cmd.Parameters.Add("@StateID", SqlDbType.Int).Value = CountryID;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_city_Master_InsertDAL(string StateName, int CountryId, string CreateBy, DateTime @CreateDatetime, string Extra1, string Extra2, string @Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertcity", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = StateName;
            cmd.Parameters.Add("@State", SqlDbType.Int).Value = CountryId;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_city_Master_UpdateDAL(string Id, int ItemGroupId, string ItemSubGroupName)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatecity", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@State", SqlDbType.Int).Value = ItemGroupId;
            cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = ItemSubGroupName;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable getstatedataDAL(int state)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getstatedata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
           
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = state;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getcitydataDAL(int city)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getcitydata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            cmd.Parameters.Add("@id", SqlDbType.Int).Value = city;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    //city end
    //inqiury

    public string tbl_Inquiry_No_Series_InsertDAL(string No, string Extra1, string Extra2)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Inquiry_No_Series_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.BigInt).Value = No;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getInqiuryDetailsdataDAL( int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getInqiuryDetailsdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
          //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallInqiuryDetailsdataDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallinqiurydetailsdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallInqiuryDetailsQuotDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetInquiryDetails", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@QuotationNo", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallOrderQuotDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetQuotBOMDetails", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@QuotationNo", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable CheckBOMQuotDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("CheckBOMQuot", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@QuotationNo", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable CheckItemBOMtDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("CheckItemBOM", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@QuotationNo", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getFollowupdataDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getFollowupdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable checkProductNameDAL(string Noseries, int Item)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkProductName", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;

    }

    public string tbl_Inqiury_Details_InsertDAL(int Noseries, int Item, int UOM, decimal Qty, decimal Rate, decimal Amount,
        int Inqiuryapplicationtype, string Inqiurymanufacturename, string Inqiuryequipmenttype, string Inqiuryserialno, string Inqiurymanufactureddate,
        string Inqiurypowerunitconsuption, string Inqiurycoolingcapacity, int Inqiurymachinetype, int Inqiurycompressortype, 
        string Inqiurycompressorinonecircuit, string Inqiurynumberofcircuits, string Inqiuryhotgasdischarge, string Inqiurytypeofrefrigerant, 
        string Inqiuryannualpowerusage, string Inqiuryavergedailyhours, string Inqiurydaysrunperyear, string InqiuryelectricityrateperKWH, 
        string Inqiurypercentageofoperationperhour, string Inqiuryestimatedistance,
        string CreateBy, DateTime CreateDatetime, string Description, string file, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Inqiury_Details_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;
            cmd.Parameters.Add("@UOM", SqlDbType.Int).Value = UOM;
            cmd.Parameters.Add("@Qty", SqlDbType.Decimal).Value = Qty;
            cmd.Parameters.Add("@Rate", SqlDbType.Decimal).Value = Rate;
            cmd.Parameters.Add("@Amount", SqlDbType.Decimal).Value = Amount;
            cmd.Parameters.Add("@Inqiuryapplicationtype", SqlDbType.Int).Value = Inqiuryapplicationtype;
            cmd.Parameters.Add("@Inqiurymanufacturename", SqlDbType.VarChar).Value = Inqiurymanufacturename;
            cmd.Parameters.Add("@Inqiuryequipmenttype", SqlDbType.VarChar).Value = Inqiuryequipmenttype;
            cmd.Parameters.Add("@Inqiuryserialno", SqlDbType.VarChar).Value = Inqiuryserialno;
            cmd.Parameters.Add("@Inqiurymanufactureddate", SqlDbType.VarChar).Value = Inqiurymanufactureddate;
            cmd.Parameters.Add("@Inqiurypowerunitconsuption", SqlDbType.VarChar).Value = Inqiurypowerunitconsuption;
            cmd.Parameters.Add("@Inqiurycoolingcapacity", SqlDbType.VarChar).Value = Inqiurycoolingcapacity;
            cmd.Parameters.Add("@Inqiurymachinetype", SqlDbType.Int).Value = Inqiurymachinetype;
            cmd.Parameters.Add("@Inqiurycompressortype", SqlDbType.Int).Value = Inqiurycompressortype;
            cmd.Parameters.Add("@Inqiurycompressorinonecircuit", SqlDbType.VarChar).Value = Inqiurycompressorinonecircuit;
            cmd.Parameters.Add("@Inqiurynumberofcircuits", SqlDbType.VarChar).Value = Inqiurynumberofcircuits;
            cmd.Parameters.Add("@Inqiuryhotgasdischarge", SqlDbType.VarChar).Value = Inqiuryhotgasdischarge;
            cmd.Parameters.Add("@Inqiurytypeofrefrigerant", SqlDbType.VarChar).Value = Inqiurytypeofrefrigerant;
            cmd.Parameters.Add("@Inqiuryannualpowerusage", SqlDbType.VarChar).Value = Inqiuryannualpowerusage;
            cmd.Parameters.Add("@Inqiuryavergedailyhours", SqlDbType.VarChar).Value = Inqiuryavergedailyhours;
            cmd.Parameters.Add("@Inqiurydaysrunperyear", SqlDbType.VarChar).Value = Inqiurydaysrunperyear;
            cmd.Parameters.Add("@InqiuryelectricityrateperKWH", SqlDbType.VarChar).Value = InqiuryelectricityrateperKWH;
            cmd.Parameters.Add("@Inqiurypercentageofoperationperhour", SqlDbType.VarChar).Value = Inqiurypercentageofoperationperhour;
            cmd.Parameters.Add("@Inqiuryestimatedistance", SqlDbType.VarChar).Value = Inqiuryestimatedistance;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Description;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = file;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getInqiuryDetailsdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getInqiuryDetailsdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable GetBOMByIDDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetBOMByID", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string deleteinquirydetailsdatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteinquirydetailsdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string DeleteItemBOMDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("DeleteItemBOMbyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Inqiury_Details_updateDAL(int Id, int Noseries, int Item, int UOM, decimal Qty, decimal Rate, decimal Amount,
        int Inqiuryapplicationtype, string Inqiurymanufacturename, string Inqiuryequipmenttype, string Inqiuryserialno, string Inqiurymanufactureddate,
        string Inqiurypowerunitconsuption, string Inqiurycoolingcapacity, int Inqiurymachinetype, int Inqiurycompressortype,
        string Inqiurycompressorinonecircuit, string Inqiurynumberofcircuits, string Inqiuryhotgasdischarge, string Inqiurytypeofrefrigerant,
        string Inqiuryannualpowerusage, string Inqiuryavergedailyhours, string Inqiurydaysrunperyear, string InqiuryelectricityrateperKWH,
        string Inqiurypercentageofoperationperhour, string Inqiuryestimatedistance,
        string CreateBy, DateTime CreateDatetime, string Description, string file, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Inqiury_Details_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;
            cmd.Parameters.Add("@UOM", SqlDbType.Int).Value = UOM;
            cmd.Parameters.Add("@Qty", SqlDbType.Decimal).Value = Qty;
            cmd.Parameters.Add("@Rate", SqlDbType.Decimal).Value = Rate;
            cmd.Parameters.Add("@Amount", SqlDbType.Decimal).Value = Amount;
            cmd.Parameters.Add("@Inqiuryapplicationtype", SqlDbType.Int).Value = Inqiuryapplicationtype;
            cmd.Parameters.Add("@Inqiurymanufacturename", SqlDbType.VarChar).Value = Inqiurymanufacturename;
            cmd.Parameters.Add("@Inqiuryequipmenttype", SqlDbType.VarChar).Value = Inqiuryequipmenttype;
            cmd.Parameters.Add("@Inqiuryserialno", SqlDbType.VarChar).Value = Inqiuryserialno;
            cmd.Parameters.Add("@Inqiurymanufactureddate", SqlDbType.VarChar).Value = Inqiurymanufactureddate;
            cmd.Parameters.Add("@Inqiurypowerunitconsuption", SqlDbType.VarChar).Value = Inqiurypowerunitconsuption;
            cmd.Parameters.Add("@Inqiurycoolingcapacity", SqlDbType.VarChar).Value = Inqiurycoolingcapacity;
            cmd.Parameters.Add("@Inqiurymachinetype", SqlDbType.Int).Value = Inqiurymachinetype;
            cmd.Parameters.Add("@Inqiurycompressortype", SqlDbType.Int).Value = Inqiurycompressortype;
            cmd.Parameters.Add("@Inqiurycompressorinonecircuit", SqlDbType.VarChar).Value = Inqiurycompressorinonecircuit;
            cmd.Parameters.Add("@Inqiurynumberofcircuits", SqlDbType.VarChar).Value = Inqiurynumberofcircuits;
            cmd.Parameters.Add("@Inqiuryhotgasdischarge", SqlDbType.VarChar).Value = Inqiuryhotgasdischarge;
            cmd.Parameters.Add("@Inqiurytypeofrefrigerant", SqlDbType.VarChar).Value = Inqiurytypeofrefrigerant;
            cmd.Parameters.Add("@Inqiuryannualpowerusage", SqlDbType.VarChar).Value = Inqiuryannualpowerusage;
            cmd.Parameters.Add("@Inqiuryavergedailyhours", SqlDbType.VarChar).Value = Inqiuryavergedailyhours;
            cmd.Parameters.Add("@Inqiurydaysrunperyear", SqlDbType.VarChar).Value = Inqiurydaysrunperyear;
            cmd.Parameters.Add("@InqiuryelectricityrateperKWH", SqlDbType.VarChar).Value = InqiuryelectricityrateperKWH;
            cmd.Parameters.Add("@Inqiurypercentageofoperationperhour", SqlDbType.VarChar).Value = Inqiurypercentageofoperationperhour;
            cmd.Parameters.Add("@Inqiuryestimatedistance", SqlDbType.VarChar).Value = Inqiuryestimatedistance;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Description;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = file;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Noseries;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable checkFollowupDAL(string Noseries, string NextFolldate, int Follotype)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkFollowup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            cmd.Parameters.Add("@NextFolldate", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Follotype", SqlDbType.Int).Value = Follotype;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Inqiury_Followup_InsertDAL(int Noseries, string NextFolldate, int Follotype, int Assignto, int FolloStatus, string Remarks, string Comdate, string Comremarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Inqiury_Followup_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@NextFolldate", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Follotype", SqlDbType.Int).Value = Follotype;
            cmd.Parameters.Add("@Assignto", SqlDbType.Int).Value = Assignto;
            cmd.Parameters.Add("@FolloStatus", SqlDbType.Int).Value = FolloStatus;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@Comdate", SqlDbType.VarChar).Value = Comdate;
            cmd.Parameters.Add("@Comremarks", SqlDbType.VarChar).Value = Comremarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Inqiury_Followup_updateDAL(int Id, int Noseries, string NextFolldate, int Follotype, int Assignto, int FolloStatus, string Remarks, string Comdate, string Comremarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Inqiury_Followup_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@NextFolldate", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Follotype", SqlDbType.Int).Value = Follotype;
            cmd.Parameters.Add("@Assignto", SqlDbType.Int).Value = Assignto;
            cmd.Parameters.Add("@FolloStatus", SqlDbType.Int).Value = FolloStatus;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@Comdate", SqlDbType.VarChar).Value = Comdate;
            cmd.Parameters.Add("@Comremarks", SqlDbType.VarChar).Value = Comremarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string tbl_ItemBOM_updateDAL(int Id, int Noseries, string NextFolldate, decimal Follotype,string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_ItemBOM_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@No", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@SubItemName", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Itemrate", SqlDbType.Decimal).Value = Follotype;           
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_QuotBOM_updateDAL(int Id, int Noseries, decimal Follotype, string CreateBy,decimal Amount, decimal Discount,int QuotId,decimal ItemFinal,
      decimal txtItemBenefit, decimal txtItemNetValue, decimal txtItemTotalValue, decimal txtItemGSTTotal)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_QuotBOM_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@No", SqlDbType.Int).Value = Noseries;           
            cmd.Parameters.Add("@Itemrate", SqlDbType.Decimal).Value = Follotype;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@Amount", SqlDbType.Decimal).Value = Amount;
            cmd.Parameters.Add("@Discount", SqlDbType.Decimal).Value = Discount;
            cmd.Parameters.Add("@QuotId", SqlDbType.Int).Value = QuotId;
            cmd.Parameters.Add("@ItemFinal", SqlDbType.Decimal).Value = ItemFinal;
            cmd.Parameters.Add("@txtItemBenefit", SqlDbType.Decimal).Value = txtItemBenefit;
            cmd.Parameters.Add("@txtItemNetValue", SqlDbType.Decimal).Value = txtItemNetValue;
            cmd.Parameters.Add("@txtItemTotalValue", SqlDbType.Decimal).Value = txtItemTotalValue;
            cmd.Parameters.Add("@txtItemGSTTotal", SqlDbType.Decimal).Value = txtItemGSTTotal;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }


    public string tbl_OrderBOM_updateDAL(int Id, int Noseries, decimal Follotype, string CreateBy, decimal Amount, decimal Discount, int QuotId, decimal ItemFinal,
     decimal txtItemBenefit, decimal txtItemNetValue, decimal txtItemTotalValue, decimal txtItemGSTTotal)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_OrderBOM_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@No", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Itemrate", SqlDbType.Decimal).Value = Follotype;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@Amount", SqlDbType.Decimal).Value = Amount;
            cmd.Parameters.Add("@Discount", SqlDbType.Decimal).Value = Discount;
            cmd.Parameters.Add("@QuotId", SqlDbType.Int).Value = QuotId;
            cmd.Parameters.Add("@ItemFinal", SqlDbType.Decimal).Value = ItemFinal;
            cmd.Parameters.Add("@txtItemBenefit", SqlDbType.Decimal).Value = txtItemBenefit;
            cmd.Parameters.Add("@txtItemNetValue", SqlDbType.Decimal).Value = txtItemNetValue;
            cmd.Parameters.Add("@txtItemTotalValue", SqlDbType.Decimal).Value = txtItemTotalValue;
            cmd.Parameters.Add("@txtItemGSTTotal", SqlDbType.Decimal).Value = txtItemGSTTotal;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable getFollowupDetailsdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getFollowupDetailsdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string deleteinquiryfollowupdatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteinquiryfollowupdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }




    #region Inquiry Files
    public string Saveinquiryfilesbll(int noseries, string filename, string filepath, DateTime Createddatetime, string cretedby)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertinquiryfiles", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@noseries", SqlDbType.Int).Value = noseries;
            cmd.Parameters.Add("@filename", SqlDbType.VarChar).Value = filename;
            cmd.Parameters.Add("@filepath", SqlDbType.VarChar).Value = filepath;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = cretedby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string updateinquiryfilesbll(int id, int noseries, string filename, string filepath, DateTime Createddatetime, string cretedby)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updateinquiryfile", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
            cmd.Parameters.Add("@noseries", SqlDbType.Int).Value = noseries;
            cmd.Parameters.Add("@filename", SqlDbType.VarChar).Value = filename;
            cmd.Parameters.Add("@filepath", SqlDbType.VarChar).Value = filepath;
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = cretedby;
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getinqfiledatabyidDAL(int Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getinquiryfilesdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getinqfiledatabynoDAL(int Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getinquiryfilesdatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string deleteinquiryfiledatabyidDAL(int Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteinquiryfilesdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    #endregion



    public string getCustomerIdbynameDAL(string Name)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("getCustomerIdbyname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = @Name;


            res = cmd.ExecuteScalar().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable checkInqiuryalreadyDAL(string InqiuryNo, string Inquirydate, int Custname)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkInqiuryalready", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@InqiuryNo", SqlDbType.VarChar).Value = InqiuryNo;
            cmd.Parameters.Add("@Inquirydate", SqlDbType.VarChar).Value = Inquirydate;
       //     cmd.Parameters.Add("@Custgroup", SqlDbType.Int).Value = Custgroup;
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Inqiury_Master_InsertDAL(int InqiuryNo, int Noseries, string Inquirydate, int Custname, int Custcontact, string Custcontactno, int Dept, int Design, string ContactEmail, string ContactMno1, string ContactMno2, int InqiuryStatus, int InquirySource, string Remarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Inqiury_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@InqiuryNo", SqlDbType.Int).Value = InqiuryNo;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Inquirydate", SqlDbType.VarChar).Value = Inquirydate;
          //  cmd.Parameters.Add("@Custgroup", SqlDbType.Int).Value = Custgroup;
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;
            cmd.Parameters.Add("@Custcontact", SqlDbType.Int).Value = Custcontact;
            cmd.Parameters.Add("@Custcontactno", SqlDbType.VarChar).Value = Custcontactno;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactMno1", SqlDbType.VarChar).Value = ContactMno1;
            cmd.Parameters.Add("@ContactMno2", SqlDbType.VarChar).Value = ContactMno2;
            cmd.Parameters.Add("@InqiuryStatus", SqlDbType.Int).Value = InqiuryStatus;
            cmd.Parameters.Add("@InquirySource", SqlDbType.Int).Value = InquirySource;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getallInqiurydataforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallInqiurydataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallInqiurydataDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallInqiurydataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
       //     cmd.Parameters.Add("@createby", SqlDbType.VarChar).Value = Createby;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getCustomerConatctPersonDAL(int Custno)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getCustomerConatctPerson", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
          //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Custno", SqlDbType.Int).Value = Custno;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallInqiurydatabynoDAL(string Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallInqiurydatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getCustomerNameDAL(string Createby, string GroupNo)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getCustomerName", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@GroupNo", SqlDbType.VarChar).Value = GroupNo;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }


    public string tbl_Inqiury_Master_UpdateDAL(int InqiuryNo, int Noseries, string Inquirydate,  int Custname, int Custcontact, string Custcontactno, int Dept, int Design, string ContactEmail, string ContactMno1, string ContactMno2, int InqiuryStatus, int InquirySource, string Remarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Inqiury_Master_Update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@InqiuryNo", SqlDbType.Int).Value = InqiuryNo;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Inquirydate", SqlDbType.VarChar).Value = Inquirydate;
         //   cmd.Parameters.Add("@Custgroup", SqlDbType.Int).Value = Custgroup;
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;
            cmd.Parameters.Add("@Custcontact", SqlDbType.Int).Value = Custcontact;
            cmd.Parameters.Add("@Custcontactno", SqlDbType.VarChar).Value = Custcontactno;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;


            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactMno1", SqlDbType.VarChar).Value = ContactMno1;
            cmd.Parameters.Add("@ContactMno2", SqlDbType.VarChar).Value = ContactMno2;
            cmd.Parameters.Add("@InqiuryStatus", SqlDbType.Int).Value = InqiuryStatus;
            cmd.Parameters.Add("@InquirySource", SqlDbType.Int).Value = InquirySource;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getallitemDAL(int no)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallitem", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = no;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallorderfilter(string custno, string startdate, string enddate,string Emp)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("OrderFilterforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@custno", SqlDbType.Int).Value = Convert.ToInt32(custno);
            cmd.Parameters.Add("@startdate", SqlDbType.VarChar).Value = startdate;
            cmd.Parameters.Add("@enddate", SqlDbType.VarChar).Value = enddate;
            cmd.Parameters.Add("@Emp", SqlDbType.VarChar).Value = Emp;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallquotationfilter(string custno, string startdate, string enddate,string Employee)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("sp_quotationfilter", c);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@custno", SqlDbType.Int).Value = Convert.ToInt32(custno);
            cmd.Parameters.Add("@startdate", SqlDbType.VarChar).Value = startdate;
            cmd.Parameters.Add("@enddate", SqlDbType.VarChar).Value = enddate;
            cmd.Parameters.Add("@Emp", SqlDbType.VarChar).Value = Employee;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    //customer
    public string tbl_Customer_Master_InsertDAL(string No, string GroupNo, string Comname, string Comarea, string Comaddress, string Comcity, string Comstate, string ComDistrict, string Country, string ComPincode, string ComPhoneNo, string ComEmail, int BussinessType, int Industrygroup, string URL, string Status, string GSTno, string Bankname, string Accountno, string IFSCcode, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Customer_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.VarChar).Value = No;
            cmd.Parameters.Add("@GroupNo", SqlDbType.VarChar).Value = GroupNo;
            cmd.Parameters.Add("@Comname", SqlDbType.VarChar).Value = Comname;
            cmd.Parameters.Add("@Comarea", SqlDbType.VarChar).Value = Comarea;
            cmd.Parameters.Add("@Comaddress", SqlDbType.VarChar).Value = Comaddress;
            cmd.Parameters.Add("@Comcity", SqlDbType.VarChar).Value = Comcity;
            cmd.Parameters.Add("@Comstate", SqlDbType.VarChar).Value = Comstate;
            cmd.Parameters.Add("@ComDistrict", SqlDbType.VarChar).Value = ComDistrict;
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Country;
            cmd.Parameters.Add("@ComPincode", SqlDbType.VarChar).Value = ComPincode;
            cmd.Parameters.Add("@ComPhoneNo", SqlDbType.VarChar).Value = ComPhoneNo;
            cmd.Parameters.Add("@ComEmail", SqlDbType.VarChar).Value = ComEmail;
            cmd.Parameters.Add("@BussinessType", SqlDbType.Int).Value = BussinessType;
            cmd.Parameters.Add("@Industrygroup", SqlDbType.Int).Value = Industrygroup;
            cmd.Parameters.Add("@URL", SqlDbType.VarChar).Value = URL;
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = Status;
            cmd.Parameters.Add("@GSTno", SqlDbType.VarChar).Value = GSTno;
            cmd.Parameters.Add("@Bankname", SqlDbType.VarChar).Value = Bankname;
            cmd.Parameters.Add("@Accountno", SqlDbType.VarChar).Value = Accountno;
            cmd.Parameters.Add("@IFSCcode", SqlDbType.VarChar).Value = IFSCcode;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getCustomercontactdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getCustomercontactdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string deleteCustomercontactdatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteCustomercontactdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getallCustomerMasterataforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallCustomerMasterataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallCustomerMasterataDAL(string Createby)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallCustomerMasterata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
           cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallCustomerfilter(string Createby)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("sp_employeefilter", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(Createby);
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallinquiryfilter(string custno,string startdate,string enddate)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("sp_inquiryfilter", c);
            cmd.CommandType = CommandType.StoredProcedure;
           
            cmd.Parameters.Add("@custno", SqlDbType.Int).Value = Convert.ToInt32(custno);
            cmd.Parameters.Add("@startdate", SqlDbType.VarChar).Value = startdate;
            cmd.Parameters.Add("@enddate", SqlDbType.VarChar).Value = enddate;
            cmd.Parameters.Add("@Emp", SqlDbType.VarChar).Value = enddate;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string tbl_Customer_Master_updateDAL(string No, string GroupNo, string Comname, string Comarea, string Comaddress, string Comcity, string Comstate, string ComDistrict, string Country, string ComPincode, string ComPhoneNo, string ComEmail, int BussinessType, int Industrygroup, string URL, string Status, string GSTno, string Bankname, string Accountno, string IFSCcode, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Customer_Master_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.VarChar).Value = No;
            cmd.Parameters.Add("@GroupNo", SqlDbType.VarChar).Value = GroupNo;
            cmd.Parameters.Add("@Comname", SqlDbType.VarChar).Value = Comname;
            cmd.Parameters.Add("@Comarea", SqlDbType.VarChar).Value = Comarea;
            cmd.Parameters.Add("@Comaddress", SqlDbType.VarChar).Value = Comaddress;
            cmd.Parameters.Add("@Comcity", SqlDbType.VarChar).Value = Comcity;
            cmd.Parameters.Add("@Comstate", SqlDbType.VarChar).Value = Comstate;
            cmd.Parameters.Add("@ComDistrict", SqlDbType.VarChar).Value = ComDistrict;
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Country;
            cmd.Parameters.Add("@ComPincode", SqlDbType.VarChar).Value = ComPincode;
            cmd.Parameters.Add("@ComPhoneNo", SqlDbType.VarChar).Value = ComPhoneNo;
            cmd.Parameters.Add("@ComEmail", SqlDbType.VarChar).Value = ComEmail;
            cmd.Parameters.Add("@BussinessType", SqlDbType.Int).Value = BussinessType;
            cmd.Parameters.Add("@Industrygroup", SqlDbType.Int).Value = Industrygroup;
            cmd.Parameters.Add("@URL", SqlDbType.VarChar).Value = URL;
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = Status;
            cmd.Parameters.Add("@GSTno", SqlDbType.VarChar).Value = GSTno;
            cmd.Parameters.Add("@Bankname", SqlDbType.VarChar).Value = Bankname;
            cmd.Parameters.Add("@Accountno", SqlDbType.VarChar).Value = Accountno;
            cmd.Parameters.Add("@IFSCcode", SqlDbType.VarChar).Value = IFSCcode;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string deleteCustomerdatabynoDAL(string No)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteCustomerdatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.VarChar).Value = No;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;

    }

    public DataTable getallCustomerdatabynoDAL(string No)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallCustomerdatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@No", SqlDbType.VarChar).Value = No;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getCustomercontactdataDAL( int Custno)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getCustomercontactdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
         //   cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@id", SqlDbType.BigInt).Value = Custno;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;

    }

    public string tbl_Customer_Contact_Master_updateDAL(int Id, string ContactName, string ContactEmail, string ContactPhone, string ContactMobileno1, string ContactMobileno2, int Dept, int Design, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Customer_Contact_Master_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = ContactName;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactPhone", SqlDbType.VarChar).Value = ContactPhone;
            cmd.Parameters.Add("@ContactMobileno1", SqlDbType.VarChar).Value = ContactMobileno1;
            cmd.Parameters.Add("@ContactMobileno2", SqlDbType.VarChar).Value = ContactMobileno2;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable checkcustomercontactnameDAL(string Custno, string ContactName, string ContactEmail)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkcustomercontactname", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Custno", SqlDbType.VarChar).Value = Custno;
            cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = ContactName;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Customer_Contact_Master_InsertDAL(string Custno, string ContactName, string ContactEmail, string ContactPhone, string ContactMobileno1, string ContactMobileno2, int Dept, int Design, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Customer_Contact_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Custno", SqlDbType.VarChar).Value = Custno;
            cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = ContactName;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactPhone", SqlDbType.VarChar).Value = ContactPhone;
            cmd.Parameters.Add("@ContactMobileno1", SqlDbType.VarChar).Value = ContactMobileno1;
            cmd.Parameters.Add("@ContactMobileno2", SqlDbType.VarChar).Value = ContactMobileno2;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    //
    //Terms and Conditions

    public DataTable checktermsandconditionsdata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checktermsandconditions", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable checkcoverletterdata(string name)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkcoverletter", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = name;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string Savetermsandconditionsbll(string name,string termsandconditions, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("inserttermsandconditions", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Termsandconditions", SqlDbType.VarChar).Value = termsandconditions;

            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string Savecoverletter(string name, string termsandconditions, string Createby, DateTime Createddatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insertcoverletter", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@Termsandconditions", SqlDbType.VarChar).Value = termsandconditions;

            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@CreateDateTime", SqlDbType.DateTime).Value = Createddatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = "";


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done


    public DataTable getalltermsandconditionsDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("termsandconditionsdisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallcoverletterDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("coverletterdisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable gettermsandconditionsdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showtermsandconditions", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done

    public DataTable GetOrderTermsByIDDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetOrderTermsAndConditionByID", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done

    public DataTable QuotTermsByIDDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("QuotTermsAndConditionByID", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done
    public DataTable getcoverletterdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("showcoverletter", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    } //done

    public string deletetermsandconditionsdata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletetermsandconditions", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string deletecoverletterdata(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletecoverletter", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_termsandconditionsupdate(string Id, string name,string tandc)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatetermsandconditions", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@TandC", SqlDbType.VarChar).Value = tandc;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string OrderTermsupdate(string Id, string name, string tandc,int OrderID)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("UpdateOrderTerms", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@TandC", SqlDbType.VarChar).Value = tandc;
            cmd.Parameters.Add("@OrderNo", SqlDbType.Int).Value = OrderID;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string QuotTermsupdate(string Id, string name, string tandc, int OrderID)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("UpdateQuotTerms", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@TandC", SqlDbType.VarChar).Value = tandc;
            cmd.Parameters.Add("@OrderNo", SqlDbType.Int).Value = OrderID;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string OrderTermsupdate2(string Id, string name, string tandc, int OrderID,string Status)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("UpdateOrderTerms2", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@TandC", SqlDbType.VarChar).Value = tandc;
            cmd.Parameters.Add("@OrderNo", SqlDbType.Int).Value = OrderID;
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = Status;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    public string tbl_coverletterupdate(string Id, string name, string tandc)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("updatecoverletter", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@title", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@description", SqlDbType.VarChar).Value = tandc;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    } //done
    // Quotation
    public string tbl_Quotation_No_Series_InsertDAL(string No, string Extra1, string Extra2)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Quotation_No_Series_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.BigInt).Value = No;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Quotation_Details_InsertDAL(int Noseries, int Item, int UOM, decimal Qty, decimal Rate, decimal Amount, string CreateBy, DateTime CreateDatetime, 
        string Extra1, string Extra2, string Extra3, string Extra4, string Extra5, decimal Discount, decimal FinalbasePrice, 
        decimal GST, decimal ADBenefit, decimal NetValue, decimal TotalValue)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Quotation_Details_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;           
            cmd.Parameters.Add("@UOM", SqlDbType.Int).Value = UOM;
            cmd.Parameters.Add("@Qty", SqlDbType.Decimal).Value = Qty;
            cmd.Parameters.Add("@Rate", SqlDbType.Decimal).Value = Rate;
            cmd.Parameters.Add("@Amount", SqlDbType.Decimal).Value = Amount;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            cmd.Parameters.Add("@Discount", SqlDbType.Decimal).Value = Discount;
            cmd.Parameters.Add("@FinalbasePrice", SqlDbType.Decimal).Value = FinalbasePrice;
            cmd.Parameters.Add("@GST", SqlDbType.Decimal).Value = GST;
            cmd.Parameters.Add("@ADBenefit", SqlDbType.Decimal).Value = ADBenefit;
            cmd.Parameters.Add("@NetValue", SqlDbType.Decimal).Value = NetValue;
            cmd.Parameters.Add("@TotalValue", SqlDbType.Decimal).Value = TotalValue;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Quotation_BOM_InsertDAL(int Noseries, int Item, int UOM, decimal Qty, decimal Rate, decimal Amount, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Quotation_BOM_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Quotationno", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@ItemNo", SqlDbType.Int).Value = Item;           
            cmd.Parameters.Add("@SubItemNo", SqlDbType.Int).Value = Amount;
            cmd.Parameters.Add("@SubQty", SqlDbType.Int).Value = Qty;
            cmd.Parameters.Add("@SubRate", SqlDbType.Decimal).Value = Rate;
            cmd.Parameters.Add("@BOM", SqlDbType.Int).Value = UOM;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Order_BOM_InsertDAL(int Noseries, int Item, int UOM, decimal Qty, decimal Rate, decimal Amount, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_BOM_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Quotationno", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@ItemNo", SqlDbType.Int).Value = Item;
            cmd.Parameters.Add("@SubItemNo", SqlDbType.Int).Value = Amount;
            cmd.Parameters.Add("@SubQty", SqlDbType.Int).Value = Qty;
            cmd.Parameters.Add("@SubRate", SqlDbType.Decimal).Value = Rate;
            cmd.Parameters.Add("@BOM", SqlDbType.Int).Value = UOM;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string tbl_Quotation_Details_updateDAL(int Noseries, int Item, int UOM, decimal Qty, decimal Rate, decimal Amount, string CreateBy, DateTime CreateDatetime,
        string Extra1, string Extra2, string Extra3, string Extra4, string Extra5, decimal Discount, decimal FinalbasePrice,
        decimal GST, decimal ADBenefit, decimal NetValue, decimal TotalValue)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Quotation_Details_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;
            cmd.Parameters.Add("@UOM", SqlDbType.Int).Value = UOM;
            cmd.Parameters.Add("@Qty", SqlDbType.Decimal).Value = Qty;
            cmd.Parameters.Add("@Rate", SqlDbType.Decimal).Value = Rate;
            cmd.Parameters.Add("@Amount", SqlDbType.Decimal).Value = Amount;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            cmd.Parameters.Add("@Discount", SqlDbType.Decimal).Value = Discount;
            cmd.Parameters.Add("@FinalbasePrice", SqlDbType.Decimal).Value = FinalbasePrice;
            cmd.Parameters.Add("@GST", SqlDbType.Decimal).Value = GST;
            cmd.Parameters.Add("@ADBenefit", SqlDbType.Decimal).Value = ADBenefit;
            cmd.Parameters.Add("@NetValue", SqlDbType.Decimal).Value = NetValue;
            cmd.Parameters.Add("@TotalValue", SqlDbType.Decimal).Value = TotalValue;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }



    public string tbl_Order_Details_updateDAL(int Noseries, int Item, int UOM, decimal Qty, decimal Rate, decimal Amount, string CreateBy, DateTime CreateDatetime,
      string Extra1, string Extra2, string Extra3, string Extra4, string Extra5, decimal Discount, decimal FinalbasePrice,
      decimal GST, decimal ADBenefit, decimal NetValue, decimal TotalValue)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_Details_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;
            cmd.Parameters.Add("@UOM", SqlDbType.Int).Value = UOM;
            cmd.Parameters.Add("@Qty", SqlDbType.Decimal).Value = Qty;
            cmd.Parameters.Add("@Rate", SqlDbType.Decimal).Value = Rate;
            cmd.Parameters.Add("@Amount", SqlDbType.Decimal).Value = Amount;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            cmd.Parameters.Add("@Discount", SqlDbType.Decimal).Value = Discount;
            cmd.Parameters.Add("@FinalbasePrice", SqlDbType.Decimal).Value = FinalbasePrice;
            cmd.Parameters.Add("@GST", SqlDbType.Decimal).Value = GST;
            cmd.Parameters.Add("@ADBenefit", SqlDbType.Decimal).Value = ADBenefit;
            cmd.Parameters.Add("@NetValue", SqlDbType.Decimal).Value = NetValue;
            cmd.Parameters.Add("@TotalValue", SqlDbType.Decimal).Value = TotalValue;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string tbl_Quotation_BOM_updateDAL(int Id, string Qty, decimal Rate, string CreateBy, DateTime CreateDatetime)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Quotation_BOM_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;           
            cmd.Parameters.Add("@Qty", SqlDbType.VarChar).Value = Qty;
            cmd.Parameters.Add("@Rate", SqlDbType.Int).Value = Rate; 

            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
          

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Order_BOM_updateDAL(int Id, string Qty, decimal Rate, string CreateBy, DateTime CreateDatetime)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_BOM_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@Qty", SqlDbType.VarChar).Value = Qty;
            cmd.Parameters.Add("@Rate", SqlDbType.Int).Value = Rate;

            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;


            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable checkQuotationProductNameDAL(string Noseries, int Item)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkQuotationProductName", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;

    }
    public DataTable checkQuotationBOMDAL(string Noseries, int Item)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("CheckQuotationBOM", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;

    }
    public string tbl_Quotation_Followup_InsertDAL(int Noseries, string NextFolldate, int Follotype, int Assignto, int FolloStatus, string Remarks, string Comdate, string Comremarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Quotation_Followup_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@NextFolldate", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Follotype", SqlDbType.Int).Value = Follotype;
            cmd.Parameters.Add("@Assignto", SqlDbType.Int).Value = Assignto;
            cmd.Parameters.Add("@FolloStatus", SqlDbType.Int).Value = FolloStatus;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@Comdate", SqlDbType.VarChar).Value = Comdate;
            cmd.Parameters.Add("@Comremarks", SqlDbType.VarChar).Value = Comremarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable checkQuotationFollowupDAL(string Noseries, string NextFolldate, int Follotype)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkQuotationFollowup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            cmd.Parameters.Add("@NextFolldate", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Follotype", SqlDbType.Int).Value = Follotype;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Quotation_Followup_updateDAL(int Id, int Noseries, string NextFolldate, int Follotype, int Assignto, int FolloStatus, string Remarks, string Comdate, string Comremarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Quotation_Followup_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@NextFolldate", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Follotype", SqlDbType.Int).Value = Follotype;
            cmd.Parameters.Add("@Assignto", SqlDbType.Int).Value = Assignto;
            cmd.Parameters.Add("@FolloStatus", SqlDbType.Int).Value = FolloStatus;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@Comdate", SqlDbType.VarChar).Value = Comdate;
            cmd.Parameters.Add("@Comremarks", SqlDbType.VarChar).Value = Comremarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Quotation_Master_InsertDAL(int InqiuryNo, int Noseries, string Inquirydate, int Custname, int Custcontact, string Custcontactno, int Dept, int Design, string ContactEmail, string ContactMno1, string ContactMno2,
       int Cover, decimal Totalcost, decimal Discount, decimal Benifit, decimal FinalPrice, decimal GST, decimal GSTFinal, int InqiuryStatus, int InquirySource, int InquiryNo, string Remarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Quotation_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@InqiuryNo", SqlDbType.Int).Value = InqiuryNo;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Inquirydate", SqlDbType.VarChar).Value = Inquirydate;         
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;
            cmd.Parameters.Add("@Custcontact", SqlDbType.Int).Value = Custcontact;
            cmd.Parameters.Add("@Custcontactno", SqlDbType.VarChar).Value = Custcontactno;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactMno1", SqlDbType.VarChar).Value = ContactMno1;
            cmd.Parameters.Add("@ContactMno2", SqlDbType.VarChar).Value = ContactMno2;
            cmd.Parameters.Add("@CoverLetter", SqlDbType.Int).Value = Cover;
            cmd.Parameters.Add("@TotalCost", SqlDbType. Decimal).Value = Totalcost;
            cmd.Parameters.Add("@Discount", SqlDbType. Decimal).Value = Discount;
            cmd.Parameters.Add("@Benifit", SqlDbType. Decimal).Value = Benifit;
            cmd.Parameters.Add("@FinalPrice", SqlDbType. Decimal).Value = FinalPrice;
            cmd.Parameters.Add("@GST", SqlDbType. Decimal).Value = GST;
            cmd.Parameters.Add("@FinalPriceGST", SqlDbType. Decimal).Value = GSTFinal;          
            cmd.Parameters.Add("@InqiuryStatus", SqlDbType.Int).Value = InqiuryStatus;
            cmd.Parameters.Add("@InquirySource", SqlDbType.Int).Value = InquirySource;
            cmd.Parameters.Add("@InquiryNo", SqlDbType.Int).Value = InquiryNo;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable checkQuotationalreadyDAL(string InqiuryNo, string Inquirydate, int Custname)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkQuotationalready", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@InqiuryNo", SqlDbType.VarChar).Value = InqiuryNo;
            cmd.Parameters.Add("@Inquirydate", SqlDbType.VarChar).Value = Inquirydate;
            //     cmd.Parameters.Add("@Custgroup", SqlDbType.Int).Value = Custgroup;
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Quotation_tandc_InsertDAL(int termsid,int noseries, string termstitle,string termsdescrip, string status, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insert_quotations_tandc", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@termsid", SqlDbType.Int).Value = termsid;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = noseries;
            cmd.Parameters.Add("@termstitle", SqlDbType.VarChar).Value = termstitle;
            cmd.Parameters.Add("@termsdescription", SqlDbType.VarChar).Value = termsdescrip;           
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = status;          
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Quotation_tandc_updateDAL(int termsid, int noseries, string termstitle, string termsdescrip, string status, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("UpdateQuotationTerms", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@termsid", SqlDbType.Int).Value = termsid;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = noseries;
            cmd.Parameters.Add("@termstitle", SqlDbType.VarChar).Value = termstitle;
            cmd.Parameters.Add("@termsdescription", SqlDbType.VarChar).Value = termsdescrip;
            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = status;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    

    public DataTable getallQuotationdataDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallQuotationdataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //     cmd.Parameters.Add("@createby", SqlDbType.VarChar).Value = Createby;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallQuoationdatabynoDAL(string Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("QuotationByQuotNo", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallquotationtermsandconditionsDAL(int noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("quotationtermsandconditions", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = noseries;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallOrderTermsDAL(int noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetOrderTermsAndCondition", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = noseries;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Quotation_Master_updateDAL(int InqiuryNo, int Noseries, string Inquirydate, int Custname, int Custcontact, string Custcontactno, int Dept, int Design, string ContactEmail, string ContactMno1, string ContactMno2,
       int Cover, decimal Totalcost, decimal Discount, decimal Benifit, decimal FinalPrice, decimal GST, decimal GSTFinal, int InqiuryStatus, int InquirySource, int InquiryNo, string Remarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Quotation_Master_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            
           

            cmd.Parameters.Add("@InqiuryNo", SqlDbType.Int).Value = InqiuryNo;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Inquirydate", SqlDbType.VarChar).Value = Inquirydate;
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;
            cmd.Parameters.Add("@Custcontact", SqlDbType.Int).Value = Custcontact;
            cmd.Parameters.Add("@Custcontactno", SqlDbType.VarChar).Value = Custcontactno;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactMno1", SqlDbType.VarChar).Value = ContactMno1;
            cmd.Parameters.Add("@ContactMno2", SqlDbType.VarChar).Value = ContactMno2;
            cmd.Parameters.Add("@CoverLetter", SqlDbType.Int).Value = Cover;
            cmd.Parameters.Add("@TotalCost", SqlDbType.Decimal).Value = Totalcost;
            cmd.Parameters.Add("@Discount", SqlDbType.Decimal).Value = Discount;
            cmd.Parameters.Add("@Benifit", SqlDbType.Decimal).Value = Benifit;
            cmd.Parameters.Add("@FinalPrice", SqlDbType.Decimal).Value = FinalPrice;
            cmd.Parameters.Add("@GST", SqlDbType.Decimal).Value = GST;
            cmd.Parameters.Add("@FinalPriceGST", SqlDbType.Decimal).Value = GSTFinal;
            cmd.Parameters.Add("@InqiuryStatus", SqlDbType.Int).Value = InqiuryStatus;
            cmd.Parameters.Add("@InquirySource", SqlDbType.Int).Value = InquirySource;
            cmd.Parameters.Add("@InquiryNo", SqlDbType.Int).Value = InquiryNo;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string deletequtationtermsandconditionsdata(int Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletequotationtandc", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getallquotationInqiurydatabynoBAL(string Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("gettallQuotationsInquirydatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallquotationitemdatadal(string Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("gettallQuotationsitemdatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getquotationDetailsdataDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getquotationetailsdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }


    public DataTable getQuotationDetailsdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getQuotationDetailsdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getQuotationDetailsBOMbyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getQuotationDetailsBOMbyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getOrderDetailsBOMbyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getOrderDetailsBOMbyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string deletequotationdetailsdatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletequotationdetailsdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string deletequotationdetailsBOMbyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletequotationdetailsBOMbyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string deleteOrderdetailsBOMbyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteOrderdetailsBOMbyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string GetBOMCountDAL(string Id,string No)
    {
        DataTable dt = null;
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("GetCountOfBOM", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = No;
            cmd.Parameters.Add("@ItemID", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
            res = dt.Rows[0]["CountData"].ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string GetOrderBOMCountDAL(string Id, string No)
    {
        DataTable dt = null;
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("GetOrderCountOfBOM", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = No;
            cmd.Parameters.Add("@ItemID", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
            res = dt.Rows[0]["CountData"].ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string deletequotationfollowupdatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deletequotationfollowupdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    // Order

    public string tbl_Order_No_Series_InsertDAL(string No, string Extra1, string Extra2)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_No_Series_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.BigInt).Value = No;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable checkOrderProductNameDAL(string Noseries, int Item)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkOrderProductName", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;

    }

    public string tbl_Order_Details_InsertDAL(int Noseries, int Item, int UOM, decimal Qty, decimal Rate, decimal Amount,
        string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5,
        decimal Discount, decimal FinalbasePrice, decimal GST, decimal ADBenefit, decimal NetValue, decimal TotalValue)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_Details_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;
            cmd.Parameters.Add("@UOM", SqlDbType.Int).Value = UOM;
            cmd.Parameters.Add("@Qty", SqlDbType.Decimal).Value = Qty;
            cmd.Parameters.Add("@Rate", SqlDbType.Decimal).Value = Rate;
            cmd.Parameters.Add("@Amount", SqlDbType.Decimal).Value = Amount;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            cmd.Parameters.Add("@Discount", SqlDbType.Decimal).Value = Discount;
            cmd.Parameters.Add("@FinalbasePrice", SqlDbType.Decimal).Value = FinalbasePrice;
            cmd.Parameters.Add("@GST", SqlDbType.Decimal).Value = GST;
            cmd.Parameters.Add("@ADBenefit", SqlDbType.Decimal).Value = ADBenefit;
            cmd.Parameters.Add("@NetValue", SqlDbType.Decimal).Value = NetValue;
            cmd.Parameters.Add("@TotalValue", SqlDbType.Decimal).Value = TotalValue;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Order_Details_updateDAL(int Id, int Item, int UOM, decimal Qty, decimal Rate, decimal Amount, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_Details_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@Item", SqlDbType.Int).Value = Item;
            //cmd.Parameters.Add("@Supplier", SqlDbType.Int).Value = Supplier;
            //   cmd.Parameters.Add("@Principal", SqlDbType.Int).Value = Principal;
            cmd.Parameters.Add("@UOM", SqlDbType.Int).Value = UOM;
            cmd.Parameters.Add("@Qty", SqlDbType.Decimal).Value = Qty;
            cmd.Parameters.Add("@Rate", SqlDbType.Int).Value = Rate;
            cmd.Parameters.Add("@Amount", SqlDbType.Int).Value = Amount;

            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getallOrderDetailsdataDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallorderdetailsdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallorderitemdatadal(string Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("gettallorderitemdatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getorderFollowupdataDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getorderFollowupdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getorderDetailsdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getOrderDetailsdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }


    public string deleteorderdetailsdatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteOrderdetailsdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getorderFollowupDetailsdatabyidDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getorderFollowupDetailsdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string deleteorderfollowupdatabyidDAL(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteorderfollowupdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable checkorderFollowupDAL(string Noseries, string NextFolldate, int Follotype)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkOrderFollowup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            cmd.Parameters.Add("@NextFolldate", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Follotype", SqlDbType.Int).Value = Follotype;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Order_Followup_InsertDAL(int Noseries, string NextFolldate, int Follotype, int Assignto, int FolloStatus, string Remarks, string Comdate, string Comremarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_Followup_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@NextFolldate", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Follotype", SqlDbType.Int).Value = Follotype;
            cmd.Parameters.Add("@Assignto", SqlDbType.Int).Value = Assignto;
            cmd.Parameters.Add("@FolloStatus", SqlDbType.Int).Value = FolloStatus;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@Comdate", SqlDbType.VarChar).Value = Comdate;
            cmd.Parameters.Add("@Comremarks", SqlDbType.VarChar).Value = Comremarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Order_Followup_updateDAL(int Id, int Noseries, string NextFolldate, int Follotype, int Assignto, int FolloStatus, string Remarks, string Comdate, string Comremarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_Followup_update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@NextFolldate", SqlDbType.VarChar).Value = NextFolldate;
            cmd.Parameters.Add("@Follotype", SqlDbType.Int).Value = Follotype;
            cmd.Parameters.Add("@Assignto", SqlDbType.Int).Value = Assignto;
            cmd.Parameters.Add("@FolloStatus", SqlDbType.Int).Value = FolloStatus;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@Comdate", SqlDbType.VarChar).Value = Comdate;
            cmd.Parameters.Add("@Comremarks", SqlDbType.VarChar).Value = Comremarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Order_Master_InsertDAL(int InqiuryNo, int Noseries, string Inquirydate, int Custname, int Custcontact, string Custcontactno, int Dept, int Design, string ContactEmail, string ContactMno1, string ContactMno2,
       int Cover, decimal Totalcost, decimal Discount, decimal Benifit, decimal FinalPrice, decimal GST, decimal GSTFinal, int InqiuryStatus, int InquirySource, int InquiryNo, string Remarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@InqiuryNo", SqlDbType.Int).Value = InqiuryNo;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Inquirydate", SqlDbType.VarChar).Value = Inquirydate;
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;
            cmd.Parameters.Add("@Custcontact", SqlDbType.Int).Value = Custcontact;
            cmd.Parameters.Add("@Custcontactno", SqlDbType.VarChar).Value = Custcontactno;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactMno1", SqlDbType.VarChar).Value = ContactMno1;
            cmd.Parameters.Add("@ContactMno2", SqlDbType.VarChar).Value = ContactMno2;
            cmd.Parameters.Add("@CoverLetter", SqlDbType.Int).Value = Cover;
            cmd.Parameters.Add("@TotalCost", SqlDbType.Decimal).Value = Totalcost;
            cmd.Parameters.Add("@Discount", SqlDbType.Decimal).Value = Discount;
            cmd.Parameters.Add("@Benifit", SqlDbType.Decimal).Value = Benifit;
            cmd.Parameters.Add("@FinalPrice", SqlDbType.Decimal).Value = FinalPrice;
            cmd.Parameters.Add("@GST", SqlDbType.Decimal).Value = GST;
            cmd.Parameters.Add("@FinalPriceGST", SqlDbType.Decimal).Value = GSTFinal;
            cmd.Parameters.Add("@InqiuryStatus", SqlDbType.Int).Value = InqiuryStatus;
            cmd.Parameters.Add("@InquirySource", SqlDbType.Int).Value = InquirySource;
            cmd.Parameters.Add("@InquiryNo", SqlDbType.Int).Value = InquiryNo;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string deleteordertermsandconditionsdata(int Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteordertandc", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Id;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Order_tandc_InsertDAL(int termsid, int noseries, string termstitle, string termsdescrip, string status, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("insert_order_tandc", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@termsid", SqlDbType.Int).Value = termsid;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = noseries;
            cmd.Parameters.Add("@termstitle", SqlDbType.VarChar).Value = termstitle;
            cmd.Parameters.Add("@termsdescription", SqlDbType.VarChar).Value = termsdescrip;

            cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = status;

            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getquotationDetailsdatabyidDAL(int Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getFollowupDetailsdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getQUotationFollowupdataDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getquotationFollowupdata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallOrderdataforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallOrderdataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallOrderdataDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallOrderdataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //     cmd.Parameters.Add("@createby", SqlDbType.VarChar).Value = Createby;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    // Update ORder

    public DataTable getallOrderdatabynoDAL(string Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallOrderdatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getOrderFollowupdataDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getOrderFollowup", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallordertermsandconditionsDAL(int noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("ordertermsandconditionsdisp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = noseries;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Order_Master_updateDAL(int InqiuryNo, int Noseries, string Inquirydate, int Custname, int Custcontact, string Custcontactno, int Dept, int Design, string ContactEmail, string ContactMno1, string ContactMno2,
       int Cover, decimal Totalcost, decimal Discount, decimal Benifit, decimal FinalPrice, decimal GST, decimal GSTFinal, int InqiuryStatus, int InquirySource, int InquiryNo, string Remarks, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Order_Master_update", c);
            cmd.CommandType = CommandType.StoredProcedure;          
            cmd.Parameters.Add("@InqiuryNo", SqlDbType.Int).Value = InqiuryNo;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@Inquirydate", SqlDbType.VarChar).Value = Inquirydate;
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;
            cmd.Parameters.Add("@Custcontact", SqlDbType.Int).Value = Custcontact;
            cmd.Parameters.Add("@Custcontactno", SqlDbType.VarChar).Value = Custcontactno;
            cmd.Parameters.Add("@Dept", SqlDbType.Int).Value = Dept;
            cmd.Parameters.Add("@Design", SqlDbType.Int).Value = Design;
            cmd.Parameters.Add("@ContactEmail", SqlDbType.VarChar).Value = ContactEmail;
            cmd.Parameters.Add("@ContactMno1", SqlDbType.VarChar).Value = ContactMno1;
            cmd.Parameters.Add("@ContactMno2", SqlDbType.VarChar).Value = ContactMno2;
            cmd.Parameters.Add("@CoverLetter", SqlDbType.Int).Value = Cover;
            cmd.Parameters.Add("@TotalCost", SqlDbType.Decimal).Value = Totalcost;
            cmd.Parameters.Add("@Discount", SqlDbType.Decimal).Value = Discount;
            cmd.Parameters.Add("@Benifit", SqlDbType.Decimal).Value = Benifit;
            cmd.Parameters.Add("@FinalPrice", SqlDbType.Decimal).Value = FinalPrice;
            cmd.Parameters.Add("@GST", SqlDbType.Decimal).Value = GST;
            cmd.Parameters.Add("@FinalPriceGST", SqlDbType.Decimal).Value = GSTFinal;
            cmd.Parameters.Add("@InqiuryStatus", SqlDbType.Int).Value = InqiuryStatus;
            cmd.Parameters.Add("@InquirySource", SqlDbType.Int).Value = InquirySource;
            cmd.Parameters.Add("@InquiryNo", SqlDbType.Int).Value = InquiryNo;
            cmd.Parameters.Add("@Remarks", SqlDbType.VarChar).Value = Remarks;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    // Employee Master

    public string tbl_Employee_NoSeries_InsertDAL(string No, string Extra1, string Extra2)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Employee_NoSeries_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.BigInt).Value = No;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string deleteemployeedocumentdatabyidDAL(string id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteemployeedocumentdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Employee_Document_Master_InsertDAL(string no, string DocuName, string Filename, string DocumentPath, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Employee_Document_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@DocuName", SqlDbType.VarChar).Value = DocuName;
            cmd.Parameters.Add("@Filename", SqlDbType.VarChar).Value = Filename;
            cmd.Parameters.Add("@DocumentPath", SqlDbType.VarChar).Value = DocumentPath;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getdocumentadataDAL(string Createby, int no)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getdocumentadata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@no", SqlDbType.BigInt).Value = no;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Employee_master_InsertDAL(string no, string Ename, string Efname, string Esurname, string Egender,
       string Epaddress, string Eperaddress, string ECity, string EState, string EDistrict, string ECountry, string EPincode, string EPhoneNo, string Emobilenop, string Emobileoffice, string Emobilewhatsup,
       string Erole, string Epfno, string Edoa, string Edoj, string Edol, int Edept, int Edesign,
       string Eemailid, string Epwd, string Eurgentcontactname, string Eurgentcontactno, string Eurgentcontactrelation, string Estatus, string Ebankname, string Eaccno, string Eifsccode,

       string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Employee_master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@Ename", SqlDbType.VarChar).Value = Ename;
            cmd.Parameters.Add("@Efname", SqlDbType.VarChar).Value = Efname;
            cmd.Parameters.Add("@Esurname", SqlDbType.VarChar).Value = Esurname;
            cmd.Parameters.Add("@Egender", SqlDbType.VarChar).Value = Egender;
            cmd.Parameters.Add("@Epaddress", SqlDbType.VarChar).Value = Epaddress;
            cmd.Parameters.Add("@Eperaddress", SqlDbType.VarChar).Value = Eperaddress;


            cmd.Parameters.Add("@ECity", SqlDbType.VarChar).Value = ECity;
            cmd.Parameters.Add("@EState", SqlDbType.VarChar).Value = EState;
            cmd.Parameters.Add("@EDistrict", SqlDbType.VarChar).Value = EDistrict;
            cmd.Parameters.Add("@ECountry", SqlDbType.VarChar).Value = ECountry;
            cmd.Parameters.Add("@EPincode", SqlDbType.VarChar).Value = EPincode;
            cmd.Parameters.Add("@EPhoneNo", SqlDbType.VarChar).Value = EPhoneNo;

            cmd.Parameters.Add("@Emobilenop", SqlDbType.VarChar).Value = Emobilenop;
            cmd.Parameters.Add("@Emobileoffice", SqlDbType.VarChar).Value = Emobileoffice;
            cmd.Parameters.Add("@Emobilewhatsup", SqlDbType.VarChar).Value = Emobilewhatsup;
            cmd.Parameters.Add("@Erole", SqlDbType.VarChar).Value = Erole;
            cmd.Parameters.Add("@Epfno", SqlDbType.VarChar).Value = Epfno;
            cmd.Parameters.Add("@Edoa", SqlDbType.VarChar).Value = Edoa;
            cmd.Parameters.Add("@Edoj", SqlDbType.VarChar).Value = Edoj;
            cmd.Parameters.Add("@Edol", SqlDbType.VarChar).Value = Edol;
            cmd.Parameters.Add("@Edept", SqlDbType.Int).Value = Edept;
            cmd.Parameters.Add("@Edesign", SqlDbType.Int).Value = Edesign;
            cmd.Parameters.Add("@Eemailid", SqlDbType.VarChar).Value = Eemailid;
            cmd.Parameters.Add("@Epwd", SqlDbType.VarChar).Value = Epwd;
            cmd.Parameters.Add("@Eurgentcontactname", SqlDbType.VarChar).Value = Eurgentcontactname;
            cmd.Parameters.Add("@Eurgentcontactno", SqlDbType.VarChar).Value = Eurgentcontactno;
            cmd.Parameters.Add("@Eurgentcontactrelation", SqlDbType.VarChar).Value = Eurgentcontactrelation;

            cmd.Parameters.Add("@Estatus", SqlDbType.VarChar).Value = Estatus;
            cmd.Parameters.Add("@Ebankname", SqlDbType.VarChar).Value = Ebankname;
            cmd.Parameters.Add("@Eaccno", SqlDbType.VarChar).Value = Eaccno;
            cmd.Parameters.Add("@Eifsccode", SqlDbType.VarChar).Value = Eifsccode;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getallemployeedataforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallemployeedataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallemployeedataDAL(string Createby)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallemployeedata", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@createby", SqlDbType.VarChar).Value = Createby;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_Employee_master_UpdateDAL(string no, string Ename, string Efname, string Esurname, string Egender,
      string Epaddress, string Eperaddress, string ECity, string EState, string EDistrict, string ECountry, string EPincode, string EPhoneNo, string Emobilenop, string Emobileoffice, string Emobilewhatsup,
      string Erole, string Epfno, string Edoa, string Edoj, string Edol, int Edept, int Edesign,
      string Eemailid, string Epwd, string Eurgentcontactname, string Eurgentcontactno, string Eurgentcontactrelation, string Estatus, string Ebankname, string Eaccno, string Eifsccode,
        string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Employee_master_Update", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@Ename", SqlDbType.VarChar).Value = Ename;
            cmd.Parameters.Add("@Efname", SqlDbType.VarChar).Value = Efname;
            cmd.Parameters.Add("@Esurname", SqlDbType.VarChar).Value = Esurname;
            cmd.Parameters.Add("@Egender", SqlDbType.VarChar).Value = Egender;
            cmd.Parameters.Add("@Epaddress", SqlDbType.VarChar).Value = Epaddress;
            cmd.Parameters.Add("@Eperaddress", SqlDbType.VarChar).Value = Eperaddress;

            cmd.Parameters.Add("@ECity", SqlDbType.VarChar).Value = ECity;
            cmd.Parameters.Add("@EState", SqlDbType.VarChar).Value = EState;
            cmd.Parameters.Add("@EDistrict", SqlDbType.VarChar).Value = EDistrict;
            cmd.Parameters.Add("@ECountry", SqlDbType.VarChar).Value = ECountry;
            cmd.Parameters.Add("@EPincode", SqlDbType.VarChar).Value = EPincode;
            cmd.Parameters.Add("@EPhoneNo", SqlDbType.VarChar).Value = EPhoneNo;

            cmd.Parameters.Add("@Emobilenop", SqlDbType.VarChar).Value = Emobilenop;
            cmd.Parameters.Add("@Emobileoffice", SqlDbType.VarChar).Value = Emobileoffice;
            cmd.Parameters.Add("@Emobilewhatsup", SqlDbType.VarChar).Value = Emobilewhatsup;
            cmd.Parameters.Add("@Erole", SqlDbType.VarChar).Value = Erole;
            cmd.Parameters.Add("@Epfno", SqlDbType.VarChar).Value = Epfno;
            cmd.Parameters.Add("@Edoa", SqlDbType.VarChar).Value = Edoa;
            cmd.Parameters.Add("@Edoj", SqlDbType.VarChar).Value = Edoj;
            cmd.Parameters.Add("@Edol", SqlDbType.VarChar).Value = Edol;
            cmd.Parameters.Add("@Edept", SqlDbType.Int).Value = Edept;
            cmd.Parameters.Add("@Edesign", SqlDbType.Int).Value = Edesign;
            cmd.Parameters.Add("@Eemailid", SqlDbType.VarChar).Value = Eemailid;
            cmd.Parameters.Add("@Epwd", SqlDbType.VarChar).Value = Epwd;
            cmd.Parameters.Add("@Eurgentcontactname", SqlDbType.VarChar).Value = Eurgentcontactname;
            cmd.Parameters.Add("@Eurgentcontactno", SqlDbType.VarChar).Value = Eurgentcontactno;
            cmd.Parameters.Add("@Eurgentcontactrelation", SqlDbType.VarChar).Value = Eurgentcontactrelation;

            cmd.Parameters.Add("@Estatus", SqlDbType.VarChar).Value = Estatus;
            cmd.Parameters.Add("@Ebankname", SqlDbType.VarChar).Value = Ebankname;
            cmd.Parameters.Add("@Eaccno", SqlDbType.VarChar).Value = Eaccno;
            cmd.Parameters.Add("@Eifsccode", SqlDbType.VarChar).Value = Eifsccode;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getemployeedatanoDAL(string no)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getemployeedatano", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string deleteemployeedatabynoDAL(string no)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("deleteemployeedatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    #region 02/03/21
    public DataTable GetEmployeeDDLDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetEmpDDL", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);          
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable GetRoleDDLDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetEmpRole", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable GetRoleListbyemployee(string Emp)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetEmpRole", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Emp;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    #endregion

    #region 03/03/21
    public string tbl_Role_PermisionDAL(string Page, string Create, string View, string ViewAll, string edit,
     string delete, string print, string mail, string Role, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("Insert_RoleRight", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Page", SqlDbType.VarChar).Value = Page;
            cmd.Parameters.Add("@Create", SqlDbType.VarChar).Value = Create;
            cmd.Parameters.Add("@View", SqlDbType.VarChar).Value = View;
            cmd.Parameters.Add("@ViewAll", SqlDbType.VarChar).Value = ViewAll;
            cmd.Parameters.Add("@edit", SqlDbType.VarChar).Value = edit;
            cmd.Parameters.Add("@delete", SqlDbType.VarChar).Value = delete;
            cmd.Parameters.Add("@print", SqlDbType.VarChar).Value = print;
            cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
            cmd.Parameters.Add("@Role", SqlDbType.VarChar).Value = Role;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getallPagelistDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetPageList", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallRolePagelistDAL(string Result)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetAllroleRights", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Result;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string DeleteRolePermission(string Id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("DeleteRoleRights", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }


    public string tbl_UserRights_No_Series_InsertDAL(string No, string Extra1, string Extra2)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_UserRights_NoSeries_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.BigInt).Value = No;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable GetAllEmployeeDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetAllEmployeeddl", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallRoleforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallRoleforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string tbl_User_PermisionDAL(string No, string Page, string Create, string View, string ViewAll, string edit,
      string delete, string print, string mail, string Role, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("Insert_UserRights", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@NoSeries", SqlDbType.VarChar).Value = No;
            cmd.Parameters.Add("@Page", SqlDbType.VarChar).Value = Page;
            cmd.Parameters.Add("@Create", SqlDbType.VarChar).Value = Create;
            cmd.Parameters.Add("@View", SqlDbType.VarChar).Value = View;
            cmd.Parameters.Add("@ViewAll", SqlDbType.VarChar).Value = ViewAll;
            cmd.Parameters.Add("@edit", SqlDbType.VarChar).Value = edit;
            cmd.Parameters.Add("@delete", SqlDbType.VarChar).Value = delete;
            cmd.Parameters.Add("@print", SqlDbType.VarChar).Value = print;
            cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
            cmd.Parameters.Add("@Role", SqlDbType.VarChar).Value = Role;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable getallReportlistDAL(string Result)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetAllReportList", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = Result;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable GetEmployeeListDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetEmployeeListData", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable GetInqbycreatedDAL(string LoginID)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetInqbycreated", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
             cmd.Parameters.Add("@createby", SqlDbType.VarChar).Value = LoginID;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }


    public DataTable GetAdminInqfilterfilter(string custno, string startdate, string enddate)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("InqFilterforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@custno", SqlDbType.Int).Value = Convert.ToInt32(custno);
            cmd.Parameters.Add("@startdate", SqlDbType.VarChar).Value = startdate;
            cmd.Parameters.Add("@enddate", SqlDbType.VarChar).Value = enddate;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }


    public DataTable GetEmployeeInqfilterfilter(string custno, string startdate, string enddate,string Emp)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("InqFilterforEmp", c);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@Cust", SqlDbType.Int).Value = Convert.ToInt32(custno);
            cmd.Parameters.Add("@FromDate", SqlDbType.VarChar).Value = startdate;
            cmd.Parameters.Add("@ToDate", SqlDbType.VarChar).Value = enddate;
            cmd.Parameters.Add("@Emp", SqlDbType.VarChar).Value = Emp;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable GetRepotedEmpDAL(string Emp,string Role)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetRepotedEmp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Employee", SqlDbType.VarChar).Value = Emp;
            cmd.Parameters.Add("@RoleName", SqlDbType.VarChar).Value = Role;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallQuotationdataforEmployeeDAL(string Employee)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallQuotationdataforEmp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = Employee;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallOrderdataforEmpDAL(string Employee)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallOrderdataforEmployee", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = Employee;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable GetUserRightsbyNoDAL(string Result)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetUserPermissionByno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Result;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string tbl_User_PermisionUpdateDAL(string Id, string No, string Page, string Create, string View, string ViewAll, string edit,
    string delete, string print, string mail, string Role, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("Update_UserRights", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@NoSeries", SqlDbType.VarChar).Value = No;
            cmd.Parameters.Add("@Page", SqlDbType.VarChar).Value = Page;
            cmd.Parameters.Add("@Create", SqlDbType.VarChar).Value = Create;
            cmd.Parameters.Add("@View", SqlDbType.VarChar).Value = View;
            cmd.Parameters.Add("@ViewAll", SqlDbType.VarChar).Value = ViewAll;
            cmd.Parameters.Add("@edit", SqlDbType.VarChar).Value = edit;
            cmd.Parameters.Add("@delete", SqlDbType.VarChar).Value = delete;
            cmd.Parameters.Add("@print", SqlDbType.VarChar).Value = print;
            cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
            cmd.Parameters.Add("@Role", SqlDbType.VarChar).Value = Role;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable bindpagesupdateDAL(string Result)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("EdituserRights", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Result;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallQuotationdataforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallQuotationdataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable CheckUserRightsDAL(string Id, string PageName)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("CheckUserRights", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            cmd.Parameters.Add("@PageName", SqlDbType.VarChar).Value = PageName;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallOrderdataforEmp1DAL(string Emp)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallOrderdataforByEmpID", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Emp;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getallRolePagelistByEmpDAL(string Result)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetUserPermissionByEmpno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Result;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable CheckUserRightsdata(string uname, string password)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("CheckloginRights", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = uname;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = password;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getInqFollowupdataDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetFollowDate", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getquotFollowupdataDAL(int Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetQuotFollowDate", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //  cmd.Parameters.Add("@Createby", SqlDbType.VarChar).Value = Createby;
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    #endregion

    #region 20/03/21
    public DataTable checkInqiuryStausDAL(string LoginID, int Custname)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkInqiuryStatus", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@LoginID", SqlDbType.VarChar).Value = LoginID;          
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable checkQuotationStatusDAL(string LoginID, int Custname)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkQuotationStatus", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);            
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = LoginID;
            //     cmd.Parameters.Add("@Custgroup", SqlDbType.Int).Value = Custgroup;
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable checkOrderStausDAL(string LoginID, int Custname)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkOrderStatus", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@LoginID", SqlDbType.VarChar).Value = LoginID;
            cmd.Parameters.Add("@Custname", SqlDbType.Int).Value = Custname;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string Inquiry_Transfer_DAL( int noseries, string CreateBy)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Inqiury_Transfer", c);
            cmd.CommandType = CommandType.StoredProcedure;           
            cmd.Parameters.Add("@Noseries", SqlDbType.BigInt).Value = noseries;      
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;           
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable checkloginemail(string uname)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("checkloginemail", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = uname;

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string UpdatePasswordDAL(string Uid, string Pass)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("UpdatePassword", c);
            cmd.CommandType = CommandType.StoredProcedure;
            ;
            cmd.Parameters.Add("@Uid", SqlDbType.VarChar).Value = Uid;
            cmd.Parameters.Add("@Pass", SqlDbType.VarChar).Value = Pass;

            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    #endregion
    #region 20/02/21
    public string tbl_Task_No_Series_InsertDAL(string No, string Extra1, string Extra2)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Task_No_Series_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@No", SqlDbType.BigInt).Value = No;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public string tbl_Task_Master_InsertDAL(int TaskNo, int Noseries, string TaskCreatedDate, string TaskDate, string DueDate,
        int EmployeeID, int ABStatus, int ATStatus, string TaskDetails, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Task_Master_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@TaskNo", SqlDbType.Int).Value = TaskNo;
            cmd.Parameters.Add("@Noseries", SqlDbType.Int).Value = Noseries;
            cmd.Parameters.Add("@TaskCreatedate", SqlDbType.VarChar).Value = TaskCreatedDate;
            cmd.Parameters.Add("@TaskDate", SqlDbType.VarChar).Value = TaskDate;
            cmd.Parameters.Add("@DueDate", SqlDbType.VarChar).Value = DueDate;
            cmd.Parameters.Add("@EmployeeID", SqlDbType.Int).Value = EmployeeID;
            cmd.Parameters.Add("@ABStatus", SqlDbType.Int).Value = ABStatus;
            cmd.Parameters.Add("@ATStatus", SqlDbType.Int).Value = ATStatus;
            cmd.Parameters.Add("@TaskDetails", SqlDbType.VarChar).Value = TaskDetails;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            cmd.Parameters.Add("@Extra6", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra7", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra8", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra9", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Extra10", SqlDbType.VarChar).Value = "";
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public string tbl_Task_Document_InsertDAL(string no, string DocuName, string Filename, string DocumentPath, string CreateBy, DateTime CreateDatetime, string Extra1, string Extra2, string Extra3, string Extra4, string Extra5)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("tbl_Task_Document_Insert", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@no", SqlDbType.VarChar).Value = no;
            cmd.Parameters.Add("@DocuName", SqlDbType.VarChar).Value = DocuName;
            cmd.Parameters.Add("@Filename", SqlDbType.VarChar).Value = Filename;
            cmd.Parameters.Add("@DocumentPath", SqlDbType.VarChar).Value = DocumentPath;
            cmd.Parameters.Add("@CreateBy", SqlDbType.VarChar).Value = CreateBy;
            cmd.Parameters.Add("@CreateDatetime", SqlDbType.DateTime).Value = CreateDatetime;
            cmd.Parameters.Add("@Extra1", SqlDbType.VarChar).Value = Extra1;
            cmd.Parameters.Add("@Extra2", SqlDbType.VarChar).Value = Extra2;
            cmd.Parameters.Add("@Extra3", SqlDbType.VarChar).Value = Extra3;
            cmd.Parameters.Add("@Extra4", SqlDbType.VarChar).Value = Extra4;
            cmd.Parameters.Add("@Extra5", SqlDbType.VarChar).Value = Extra5;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable GetTaskDocbynoDAL(string Id)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetTaskDocument", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Id;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable GetAllTaskdataforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetAllTaskdataforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string DeleteTaskbyidDAL(string id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("DeleteTaskDocdatabyid", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable GEtAllTaskdatabynoDAL(string Noseries)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetAllTaskdatabyno", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public string DeleteTaskEmpbyidDAL(string id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("DeleteTaskEmp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }
    public DataTable GEtAllTaskdatabyEmpDAL(string Noseries, string Emp)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetTaskDetailsByEmp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Noseries", SqlDbType.VarChar).Value = Noseries;
            cmd.Parameters.Add("@Emp", SqlDbType.VarChar).Value = Emp;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public string DeleteTaskEmpbyEMPidDAL(string id)
    {
        string res = "";
        try
        {
            c = con.getconnection();
            cmd = new SqlCommand("DeleteTaskEmpByID", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            res = cmd.ExecuteNonQuery().ToString();
        }
        catch (Exception ex)
        {
            res = ex.ToString();
        }
        return res;
    }

    public DataTable GetTaskByEmpDAL(string EmpID)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetTaskByEmp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@EmpID", SqlDbType.VarChar).Value = EmpID;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }

    public DataTable getQuotationdataFordashDAL(int id, string date)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getQuotationdataForEmpdash", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = date;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getQuotationdataForAdmindashDAL(int id, string date)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getQuotationdataForAdmindash", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = date;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getFollowupdataFordashDAL(int id, string Date)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getFollowupdataFordash", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = Date;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getFollowupdataFordashAdminDAL(int id, string Date)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getFollowupdataForAdmindash", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = Date;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    #endregion
    public DataTable getallemployenameforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallemployenameforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable getallstatusforadminDAL()
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("getallstatusforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable GetAllTaskDashforadminDAL(string Date)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetAllTaskDashforadmin", c);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = Date;
            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
    public DataTable GetTaskByDashEmpDAL(string EmpID, string Date)
    {
        DataTable dt = null;
        try
        {
            c = con.getconnection();
            SqlCommand cmd = new SqlCommand("GetTaskDashByEmp", c);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@EmpID", SqlDbType.VarChar).Value = EmpID;
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = Date;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
        }
        catch (Exception ex)
        {

        }
        return dt;
    }
}