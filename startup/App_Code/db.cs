using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for db
/// </summary>
public class db
{
    public static SqlConnection con;
    public db()
    {
     con = new SqlConnection(ConfigurationManager.ConnectionStrings["tblStartUp"].ConnectionString);

}
}