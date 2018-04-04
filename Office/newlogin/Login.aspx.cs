using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt;
    getcontent get;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
      DataTable  dt = new DataTable();
        getcontent get = new getcontent();
        dt = get.new_logincheck(txtusername.Value.ToString().Trim(), txtpassword.Value.ToString().Trim());
        if (dt.Rows.Count > 0)
        {
            string username = dt.Rows[0]["Username"].ToString().Trim();
            string password = dt.Rows[0]["password"].ToString().Trim();
            if (txtusername.Value == username && txtpassword.Value == password)
            {
                Response.Redirect("Sign Up.aspx");
            }
        }
    }
}