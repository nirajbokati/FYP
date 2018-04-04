using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for getcontent
/// </summary>
public class getcontent:dbClass
{
    //public getcontent()
    //{
      
    //}
    public DataTable new_logincheck(string username, string password)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("new_logincheck", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@username", username);
        da.SelectCommand.Parameters.AddWithValue("@password", password);
        da.Fill(dt);
        return dt;
    }

    public DataTable gridview()
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("gridview", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.Fill(dt);
        return dt;

    }
}