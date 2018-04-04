using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    public SqlCredential Source { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=DemoLogin; Integrated Security=true;");
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into DemoLogin values(@name, @pass,@city,@gender,@mail)", con);
            cmd.Parameters.AddWithValue("name", TextBox1.Text);
            cmd.Parameters.AddWithValue("Pass", Textbox2.Text);
            cmd.Parameters.AddWithValue("city", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("gender", RadioButtonList1.Selectedvalue);
            cmd.Parameters.AddWithValue("mail",TextBox4.Text);
            cmd.ExecuteNonQuery();

            TextBox1.text = "";
            TextBox2.text = "";
            TextBox3.Text = "";


        }
    }
}