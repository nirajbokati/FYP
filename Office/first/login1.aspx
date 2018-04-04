<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link href="CSS/login.css"  rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<head runat="server">
    <title></title>
    <style type="text/css">
        
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>Username<asp:TextBox ID="TextBox1" runat="server" Width="184px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Password<asp:TextBox ID="TextBox2" runat="server" Width="179px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    </td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>


    <div class="container-fluid">  
           <div class="row">  
             <div class="col-lg-4 col-centered table-bordered ">  
               <div class="wrath-content-box"> <span>Sign In</span> </div>  
               <div class="wrath-content-box">  
                 <div class="input-group"> <span class="input-group-addon btn-primary" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>  
                   <input type="text" class="form-control" placeholder="Username" />  
                 </div>  
                 <div class="clearfix"></div>  
                 <br />  
                 <div class="input-group"> <span class="input-group-addon btn-primary"" id="basic-addon1"><span class="glyphicon glyphicon-lock"></span> </span>  
                   <input type="password" class="form-control" placeholder="Password" />  
                 </div>  
                 <div class="clearfix"></div>  
                 <br />  
          
                 <div class="col-sm-6 text-right">  
           
                     <div class="form-group text-right">  
                       <input type="submit" class="btn btn-success btn-sm form-control" value="Sign In" />  
                    
                     </div>  
  
                 </div>  
                  <div class="col-sm-6 text-right">  
           
                     <div class="form-group text-right">  
                       <input type="submit" class="btn btn-danger btn-sm form-control" value="cancel" OnClick="Button1_Click"  Text="Login"/>  
                    
                     </div>  
  
                 </div>  
              <div class="clearfix"></div>  
            </div>  
          </div>  
        </div>  
      </div> 

</body>
</html>
