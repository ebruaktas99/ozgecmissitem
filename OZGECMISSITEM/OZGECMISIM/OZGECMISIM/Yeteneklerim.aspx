<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="OZGECMISIM.Hakkimda1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<table class="table table-bordered" style="margin-top:20px; margin-left:50px; width:75%">

    <tr>

        <th>ID</th>
        <th>YETENEK</th>
        <th>SİL</th>
        <th>GÜNCELLE</th>

    </tr>

    <tr>

        <asp:Repeater ID="Repeater1" runat="server" EnableTheming="True">

            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td style="width:30%"><%# Eval("YETENEK") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "YetenekSil.aspx?ID=" + Eval("ID")%>' CssClass="btn btn-danger"> Sil</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "YetenekGuncelle.aspx?ID=" + Eval("ID")%>' CssClass="btn btn-warning">Güncelle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>

        </asp:Repeater>

    </tr>
</table>

    <a href="YeniYetenek.aspx" class="btn btn-primary" style="margin-left:20px">Yeni Yetenek Ekle</a>
  
</asp:Content>
