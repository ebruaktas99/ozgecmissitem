<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="OZGECMISIM.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<table class="table table-bordered" style="margin-top:20px; margin-left:50px; width:75%">

    <tr>

        <th>ID</th>
        <th>AD SOYAD</th>
        <th>MAİL</th>
        <th>KONU</th>
        <th>MESAJI GÖR</th>

    </tr>

    <tr>

        <asp:Repeater ID="Repeater1" runat="server" EnableTheming="True">

            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td style="width:30%"><%# Eval("ADSOYAD") %></td>
                    <td style="width:30%"><%# Eval("MAIL")%></td>
                    <td style="width:30%"><%# Eval("KONU")%></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "MesajTumu.aspx?ID=" + Eval("ID")%>' CssClass="btn btn-info">Mesajı Görüntüle</asp:HyperLink></td>
                    
                </tr>
            </ItemTemplate>

        </asp:Repeater>

    </tr>
</table>


</asp:Content>
