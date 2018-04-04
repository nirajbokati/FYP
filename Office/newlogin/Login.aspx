<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login </title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card card-container">
                <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
                <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
                <p id="profile-name" class="profile-name-card"></p>
                <div class="form-signin">
                    <div class="col-md-12 form-group">
                        <span id="reauth-email" class="reauth-email"></span>
                        <input type="text" id="txtusername" runat="server" required="required" class="form-control" placeholder="Email address" />
                    </div>
                    <div class="col-md-12 form-group">
                        <input type="password" id="txtpassword" required="required" runat="server" class="form-control" placeholder="Password" />
                    </div>
                    <div id="remember" class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me" />
                            Remember me
                   
                        </label>
                    </div>
                    <asp:Button class="btn btn-lg btn-primary btn-block btn-signin" ID="btnsubmit" type="submit" OnClick="btnsubmit_Click" runat="server" Text="Submit" />
                </div>
                <a href="#" class="forgot-password">Forgot the password?
            </a>

                 
            </div>
            <!-- /card-container -->
        </div>
        <!-- /container -->
    </form>
</body>
</html>
