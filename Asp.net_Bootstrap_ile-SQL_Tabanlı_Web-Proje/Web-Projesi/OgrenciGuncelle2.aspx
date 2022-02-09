<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle2.aspx.cs" Inherits="Web_Projesi.OgrenciGuncelle2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:TextBox ID="Textbox1" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>
            </div>
            <br />      
            
              <div>
                <asp:TextBox ID="TxtSifre1" runat="server" CssClass="form-control" placeholder="şifre"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtSifre2" runat="server" CssClass="form-control" placeholder="Şifre Tekrar"></asp:TextBox>
            </div>
            <br />

        </div>

        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click"/>

    </form>


</asp:Content>
