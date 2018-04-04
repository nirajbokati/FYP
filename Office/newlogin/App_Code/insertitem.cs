using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


/// <summary>
/// Summary description for InsertInfo
/// </summary>
public class insertiteam : dbClass
{
    public insertiteam()
    {
        //
        // TODO: Add constructor logic here
        //
    }



    public DataTable insert_signup(string First_Name, string Last_Name, String Email,DateTime DOB, String Password, string Image,string username,string gender)
    {

        SqlDataAdapter da = new SqlDataAdapter("insert_signup", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@First_Name", First_Name);
        da.SelectCommand.Parameters.AddWithValue("@Last_Name", Last_Name);
        da.SelectCommand.Parameters.AddWithValue("@Email", Email);
       da.SelectCommand.Parameters.AddWithValue("@DOB", DOB);
        da.SelectCommand.Parameters.AddWithValue("@Username",username);
        da.SelectCommand.Parameters.AddWithValue("@Password", Password);
        da.SelectCommand.Parameters.AddWithValue("@Image", Image);
        da.SelectCommand.Parameters.AddWithValue("@gender", gender);

        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    
}