<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkimda.aspx.cs" Inherits="OZGECMISIM.Deneyimler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table class="table table-bordered" style="margin-top:20px; margin-left:50px; width:75%">

    <tr>

        <th>ID</th>
        <th>BİLGİLER</th>
        <th>EĞİTİM</th>
        <th>DENEYİM</th>
        <th>SİL</th>
        <th>GÜNCELLE</th>

    </tr>

    <tr>

        <asp:Repeater ID="Repeater1" runat="server" EnableTheming="True">

            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td style="width:30%"><%# Eval("BILGILER") %></td>
                    <td><%# Eval("EGITIM") %></td>
                    <td><%# Eval("DENEYIM") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "HakkimdaSil.aspx?ID=" + Eval("ID")%>' CssClass="btn btn-danger"> Sil</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "HakkimdaGuncelle.aspx?ID=" + Eval("ID")%>' CssClass="btn btn-warning">Güncelle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>

        </asp:Repeater>

    </tr>
</table>
  


</asp:Content>
