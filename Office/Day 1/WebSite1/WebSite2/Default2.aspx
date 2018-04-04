<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="col-md-12">
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
<asp:TextBox ID="Name" runat="server"></asp:TextBox>
             </div>

  <div class="col-md-12">
<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
<asp:TextBox ID="Last_Name" runat="server"></asp:TextBox>
         </div>

        <div class="col-md-12">
<asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
<asp:TextBox ID="Email" runat="server"></asp:TextBox>
               </div>

              <div class="col-md-12">
<asp:Label ID="Label4" runat="server" Text=" Mobile No"></asp:Label>
<asp:TextBox ID="Mo_No" runat="server"></asp:TextBox>
                     </div>

  <div class="col-md-12">
<asp:Label ID="Label5" runat="server" Text="User Name"></asp:Label>
<asp:TextBox ID="User_Name" runat="server"></asp:TextBox>
         </div>

        <div class="col-md-12">
<asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
<asp:TextBox ID="Password" runat="server"></asp:TextBox>
               </div>

              <div class="col-md-12">
            <asp:button ID="Button2" runat="server" OnClick="btn2_submit" text="Button" />
                  </div>
    

</asp:Content>
