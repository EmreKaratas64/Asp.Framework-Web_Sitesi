<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="Web_Projesi.DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">DUYURUID</th>
            <th scope="col">DUYURU BAŞLIK</th>
            <th scope="col">DUYURU İÇERİK</th>
            <th scope="col">DUYURU ÖĞRETMEN</th>
            <th scope="col">İŞLEMLER</th>
        </tr>


        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("DUYURUID")%></td>
                        <td><%#Eval("DUYURUBASLIK")%></td>
                        <td><%#Eval("DUYURUICERIK")%></td>
                        <td><%#Eval("OGRTADSOYAD")%></td>

                        <td>
                            <asp:HyperLink NavigateUrl='<%# "DuyuruSil.aspx?DUYURUID="+ Eval("DUYURUID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "DuyuruGuncelle.aspx?DUYURUID="+ Eval("DUYURUID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>
