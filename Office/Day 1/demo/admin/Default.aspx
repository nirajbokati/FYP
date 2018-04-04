<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Masterasmin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<asp:Login ID = "Login1" runat = "server" OnAuthenticate= "ValidateUser"></asp:Login>
</form>
 
    <asp:CheckBox ID="CheckBox1" runat="server" />
<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
</asp:Content>

