<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign Up.aspx.cs" Inherits="Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />
</head>
<body style="height: 488px">

    <form id="form1" runat="server">

    <div class="container">
 
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
               First Name:
            </div>

            <div class="col-xs-6 col-md-6">
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </div>
          
        
            <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
                Lastname:
            </div>

            <div class="col-xs-6 col-md-6">
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                <br />
            </div>
     </div>
       

        <div class="clearfix"></div>
        <br />
        <div class="col-md-12">

            <div class="col-md-3" id="txtlastname">
               Email:

            </div>
            <div class="col-md-3">
                 <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>

            </div>

            <div class="col-md-3">
                Date Of Birth:
                     <asp:TextBox ID="txtbirthdate" runat="server"></asp:TextBox>

            </div>
            <div class="col-md-3">
                <br />
            </div>
        </div>

         <div class="clearfix"></div>
        <br />


         <div class="col-md-12">

            <div class="col-md-3">
               Gender:
            </div>

            <div class="col-md-3">
                <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                Username:&nbsp;
            </div>

            <div class="col-md-3">
      
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                <br />
            </div>

             </div>

         <div class="clearfix"></div>
        <br />

        <div class="col-md-12">

              <div class="col-md-3">
                Password:&nbsp;
            </div>

            <div class="col-md-3">
      
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                <br />
            </div>
             
      
                 <div class="col-lg-md-3"> 
                
                 <asp:FileUpload ID="FileUpload1" runat="server" />
             </div>

      </div>
         <div class="clearfix"></div>
        <br />

        <asp:Button ID="Button1" class="btn-danger btn-lg" OnClick="btn_Register" runat="server" Text="Register" />

        <asp:Button ID="Button2" class="btn-success btn-lg" OnClick="btn_login" runat="server" Text="Login" />

        </div>

    </form>
</body>
</html>
