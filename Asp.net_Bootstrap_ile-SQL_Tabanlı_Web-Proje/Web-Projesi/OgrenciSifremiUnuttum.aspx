<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OgrenciSifremiUnuttum.aspx.cs" Inherits="Web_Projesi.OgrenciSifremiUnuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Şifre Değiştir</title>

    <style>
        body {
            padding-top: 45px;
        }

        .stylee {
            display: inline-block;
            width: 100%;
            border-radius: 5px;
            height: 35px;
            margin-left: 5px;
            margin-right: 5px;
            margin-top: 7px;
            box-sizing: border-box;
            margin-bottom: 5px;
            border-color: #00a9ff;
        }



        .form-group {
            font-family: "Century Gothic";
            font-weight: 500;
            color: #666666;
        }

        .auto-style1 {
            font-family: "Century Gothic";
            font-weight: bold;
            color: #666666;
        }



        .auto-style2 {
            height: 841px;
        }


        .button {
            background-color: #059862;
            border: none;
            color: white;
            padding: 10px 22px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
            border-radius: 5px;
        }

        .button2:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        }


    </style>

</head>
<body>
    <form id="form1" runat="server" class="auto-style2" style="background-position: center center; background-image: url('user-icon.png'); background-repeat: no-repeat;">
        <div class="form-group">

            <div>
                <strong>
                    <asp:Label for="TxtOgrNumara" runat="server" CssClass="auto-style1">Numaranızı Girin</asp:Label>
                </strong>
                <asp:TextBox ID="TxtOgrNumara" runat="server" CssClass="stylee" placeholder="Numaranızı giriniz..."></asp:TextBox>
            </div>

            <br />

            <div>
                <strong>
                    <asp:Label for="TxtOgrSifre" runat="server" CssClass="auto-style1">Yeni Şifre</asp:Label>
                </strong>
                <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="stylee" placeholder="Yeni şifrenizi giriniz..." TextMode="Password"></asp:TextBox>

            </div>

        </div>

        <br />

        <asp:Button ID="Button1" runat="server" Text="Değiştir" class="button button2" OnClick="Button1_Click" />

    </form>
</body>
</html>
