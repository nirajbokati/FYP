using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login1 : System.Web.UI.Page
{
    DataTable dt;
    ItemManage item;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dt = new DataTable();
        item = new ItemManage();
        dt = item.CheckUserLogin(TextBox1.Text, TextBox2.Text);

        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0]["Username"].ToString();
            TextBox2.Text = dt.Rows[0]["password"].ToString();
            Response.Redirect("Default.aspx");
        }
        else
        {
            Label1.Text = "Invadid USername and password";
            Label1.ForeColor = Color.Red;
        }
    }
}