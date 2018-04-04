using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Entry
/// </summary>
public class Entry:db
{
    
    public void Entrya(string Name, string Country, Boolean Status, String Image, String Email)
    { 
    SqlDataAdapter da = new SqlDataAdapter("entry", con);
    da.SelectCommand.CommandType=CommandType.StoredProcedure;
    da.SelectCommand.Parameters.AddWithValue("@Name", Name);
    da.SelectCommand.Parameters.AddWithValue("@Country", Country);
    da.SelectCommand.Parameters.AddWithValue("@Status", Status);
    da.SelectCommand.Parameters.AddWithValue("@Image", Image);
    da.SelectCommand.Parameters.AddWithValue("@Email", Email);


     DataTable dt = new DataTable();
    da.Fill(dt);
        
    }
}