using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void button1_Click(object sender, EventArgs e)
    {
        Entry allu = new Entry();
        Boolean status;
        string path = Server.MapPath("~");
        
        if (rbStatus.Text == "Inactive")
        {
            status = false;
        }
        else
        {
            status = true;

        }
        FileUpload1.SaveAs(path +"/img/" + FileUpload1.FileName);
       allu.Entrya(txtName.Text, txtCountry.Text, status, FileUpload1.FileName, txtemail.Text);
       
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
}