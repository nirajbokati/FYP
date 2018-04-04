using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{

    DataTable dt = new DataTable();
    Iteaminsert iteam = new Iteaminsert();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn2_submit(object sender, EventArgs e)
    {

        dt = iteam.insertSign(Name.Text, Last_Name.Text, Email.Text, Mo_No.Text, User_Name.Text, Password.Text);

    }

}