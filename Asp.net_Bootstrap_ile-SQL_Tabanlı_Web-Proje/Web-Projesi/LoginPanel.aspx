<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="Web_Projesi.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <title>Login Paneli</title>
    <style type="text/css">
        .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }

        .auto-style2 {
            width: 725px;
        }

        .auto-style3 {
            color: #FFFFFF;
            text-align: center;
        }

        .newStyle1 {
            font-family: "Century Gothic";
        }

        .newStyle2 {
            font-weight: 700;
        }

        .newStyle3 {
            font-family: "Century Gothic";
            font-size: larger;
        }
        .newStyle4 {
            font-family: "Century Gothic";
            font-weight: 500;
        }
        .auto-style5 {
            font-family: "Century Gothic";
            color: #FFFFFF;
        }
        .newStyle5 {
            font-family: "Century Gothic";
            font-weight: 500;
        }
    </style>
</head>
<body style="height: 777px">
    <form id="form1" runat="server" style="height: 1000px; background-image: url('Background.jpg');">
        <div style="margin: auto" class="auto-style2">
            <br /><br />
            <h2 class="auto-style3"><span class="newStyle3">Udemy Web Öğrenci Not Sistemi</span></h2>
            <br />
            <br />
            <br />

            <div style="margin: auto; text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl="~/user-icon.png" />
            </div>
            <br />
            <br />

            <div>
                <strong>
                <asp:Label for="TxtNumara" runat="server" CssClass="auto-style5">Kullanıcı Adı</asp:Label>
                </strong>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="auto-style1" Height="35px" Width="700px"></asp:TextBox>
            </div>
            <br />

            <div>
                <strong>
                <asp:Label for="TxtSifre" runat="server" CssClass="auto-style5">Şifre</asp:Label>
                </strong>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="auto-style1" Height="35px" Width="700px" TextMode="Password"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="200px" OnClick="Button2_Click" />

            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum(Öğretmen)" CssClass="btn btn-default" Width="250px" OnClick="Button3_Click" />

            <asp:Button ID="Button4" runat="server" Text="Şifremi Unuttum(Öğrenci)" CssClass="btn btn-info" Width="250px" OnClick="Button4_Click" />
        </div>
    </form>
</body>
</html>
