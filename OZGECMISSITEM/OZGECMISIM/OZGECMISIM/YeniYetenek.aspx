<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="OZGECMISIM.YeniYetenek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-left:500px; margin-top:200px">
    <h3>Yeni Yetenek Ekleme Sayfası</h3>
    
    
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Yeteneği yazın" style="width:30%"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Kaydet" style="margin-left:100px" OnClick="Button1_Click" /> 

    </div>
</asp:Content>
