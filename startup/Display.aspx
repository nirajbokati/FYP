<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Display.aspx.cs" Inherits="Display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="sliderFrame">
        <div id="slider">
            <asp:Repeater runat="server" ID="rpt">
                <ItemTemplate>
                    <asp:Image runat="server" ID="img" ImageUrml='<%#Eval("ImageName", "img/{0}") %>' />
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="  Country"></asp:Label>
    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
    <br />
    <asp:RadioButtonList ID="rbStatus" runat="server">
        <asp:ListItem>Inactive</asp:ListItem>
        <asp:ListItem>Active</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Emaill"></asp:Label>
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
  <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" OnClick="button1_Click" Text="Entry" />

    <asp:Image ID="Image1" runat="server" />

</asp:Content>

