<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <link href="CSS/StyleSheet.css" rel="stylesheet" /> 
<link href="CSS/bootstrap.min.css" rel="stylesheet" />
<link href="CSS/bootstrap.css" rel="stylesheet" />
<script src="js/bootstrap.min.js"></script>
 <script src="js/bootstrap.js"></script>
   
    <div class="container">
        <br />
        <div class="col-md-12">
         <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
         <asp:TextBox ID="inputEmail" runat="server"></asp:TextBox>
            </div>
        <br />

       
        <div class="col-md-12">
     <asp:Label ID="Label2" runat="server" Text="passwordd"></asp:Label>
        <asp:TextBox ID="inputPassword" runat="server"></asp:TextBox>
              </div>
        <br />
        <div class="col-md-12">
             <asp:Button ID="Button1" runat="server"  OnClick="btn_submit" Text="Button" />
               </div>
               
        
    </div>
</asp:Content>

