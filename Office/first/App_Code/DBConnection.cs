using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DBConnection
/// </summary>
public class DBConnection
{
    public static SqlConnection con;
    public DBConnection()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["login"].ConnectionString);
    }

}