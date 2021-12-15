<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajTumu.aspx.cs" Inherits="OZGECMISIM.MesajTumu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:75%; margin-left:100px">
    <h3>Mesajın Tüm Detayları</h3>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />

    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />

    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>

    <br />
    <asp:TextBox ID="TextBox4" TextMode="MultiLine" height="100" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

</asp:Content>
