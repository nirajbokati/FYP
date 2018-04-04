using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for dbClass
/// </summary>
public class dbClass
{
    public static SqlConnection con;
    public dbClass()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["newlogin"].ConnectionString);

    }
}