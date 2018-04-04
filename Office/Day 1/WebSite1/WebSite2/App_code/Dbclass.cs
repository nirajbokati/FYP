using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for Dbclass
/// </summary>
public class Dbclass
{

    public static SqlConnection con;
   
	public Dbclass()
	{
		
	
     con = new SqlConnection(ConfigurationManager.ConnectionStrings["Demo"].ConnectionString);
	
	}




}