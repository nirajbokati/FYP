using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ItemManage
/// </summary>
/// 

public class ItemManage:DBConnection
{
    public DataTable CheckUserLogin(string Username, string Password)
    { 
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter("CheckUserLogin", con);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@Username", Username);
        sda.SelectCommand.Parameters.AddWithValue("@Password", Password);
        sda.Fill(dt);
        return dt;  
    }
}