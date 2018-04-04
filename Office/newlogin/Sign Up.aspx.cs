using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Sign_Up : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    insertiteam item = new insertiteam();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_login(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void btn_Register(object sender, EventArgs e)
    {

        dt = new DataTable();
        item = new insertiteam();

        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/image/" + str));
            string Image = "/image/" + str.ToString();
            dt = item.insert_signup(txtfname.Text, txtlname.Text, txtemail.Text,Convert.ToDateTime(txtbirthdate.Text), txtGender.Text, txtusername.Text, txtpassword.Text, str); 
        }
    }
   
}

   
 
  
