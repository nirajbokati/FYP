using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    Iteaminsert iteam = new Iteaminsert();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn_submit(object sender, EventArgs e)
    {

        dt = iteam.insertlogin(inputEmail.Text, inputPassword.Text);

    }

  




}