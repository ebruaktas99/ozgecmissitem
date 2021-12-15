<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YetenekGuncelle.aspx.cs" Inherits="OZGECMISIM.YetenekGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    


     <div style="margin-left:500px; margin-top:200px">
    <h3>Yetenek Güncelleme Sayfası</h3>
    
    
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" style="width:30%"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Kaydet" style="margin-left:100px" OnClick="Button1_Click" /> 

    </div>


</asp:Content>
