﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    getcontent item;
    protected void Page_Load(object sender, EventArgs e)
    {
        item = new getcontent();
       dt= item.gridview();
        Gridview.DataSource = dt;
        Gridview.DataBind();
    }

}