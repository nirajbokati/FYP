using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Iteaminsert
/// </summary>
public class Iteaminsert:Dbclass
{

    
	public Iteaminsert()
	{
		
	}
    public DataTable insertlogin(string Username, string Password)
    {

        SqlDataAdapter da = new SqlDataAdapter("insertlogin", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;

        da.SelectCommand.Parameters.AddWithValue("@usename", Username);
        da.SelectCommand.Parameters.AddWithValue("@password", Password);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;

    }

    public DataTable insertSign(string Name, string Last_Name, String Email, String Mo_No, String User_Name, String Password )
    {

        SqlDataAdapter da = new SqlDataAdapter("insertSign", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@name", Name);
        da.SelectCommand.Parameters.AddWithValue("@Last_Name", Last_Name);
        da.SelectCommand.Parameters.AddWithValue("@email", Email);
        da.SelectCommand.Parameters.AddWithValue("@Mo_No", Mo_No);
        da.SelectCommand.Parameters.AddWithValue("@usename", User_Name);
        da.SelectCommand.Parameters.AddWithValue("@password", Password);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;

    }


  


}