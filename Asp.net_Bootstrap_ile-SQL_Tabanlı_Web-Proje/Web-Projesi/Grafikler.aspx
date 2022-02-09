<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="Web_Projesi.Grafikler" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 798px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="form1" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                <td class="auto-style1">
                    <asp:Chart ID="Chart1" runat="server" CssClass="auto-style2" Height="500px" Width="500px" Palette="Bright">
                        <series>
                            <asp:Series Name="Notlar" ChartType="Bar" Legend="Legend1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                        <Legends>
                            <asp:Legend Name="Legend1" TitleFont="Century Gothic, 12pt, style=Bold">
                            </asp:Legend>
                        </Legends>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart2" runat="server" CssClass="auto-style2" Height="400px" style="margin-left: 63px" Width="500px" Palette="EarthTones">
                        <series>
                            <asp:Series Name="DersAd" ChartType="Doughnut" Legend="Legend1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Chart ID="Chart3" runat="server" Height="400px" Width="500px">
                        <Series>
                            <asp:Series ChartArea="ChartArea1" ChartType="Pie" Legend="Legend1" Name="Cinsiyet">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Font="Century Gothic, 9.75pt" IsTextAutoFit="False" Name="Legend1">
                            </asp:Legend>
                        </Legends>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart4" runat="server" CssClass="auto-style3" Height="400px" Width="500px">
                        <Series>
                            <asp:Series Legend="Legend1" Name="Dersler" YValuesPerPoint="3">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>


</asp:Content>
