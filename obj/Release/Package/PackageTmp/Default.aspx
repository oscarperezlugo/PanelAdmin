<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PanelAdmin._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <c><p><h2>CIFRAS DEL SISTEMA</h2></p></c>
    <table style="width: 100%;" class="centrador">
        <tr>
            <td><asp:Chart ID="Chart1" runat="server" BackColor="White" BorderlineColor="White" DataSourceID="SqlDataSource2" Palette="Excel" BorderSkin-BorderColor="White">
    <Series>
        <asp:Series ChartType="Doughnut" Name="Series1" XValueMember="TipoVenta" YValueMembers="TotalQuantity"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT TOP 2 TipoVenta, SUM(Monto) AS TotalQuantity FROM Cabecera GROUP BY TipoVenta order by TotalQuantity DESC"></asp:SqlDataSource></td>
            <td><asp:Chart ID="Chart2" runat="server" BackColor="White" BorderlineColor="White" DataSourceID="SqlDataSource1" Palette="Fire" BorderSkin-BorderColor="White">
    <Series>
        <asp:Series ChartType="Doughnut" Name="Series1" XValueMember="Status" YValueMembers="TotalQuantity"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT TOP 3 Status, SUM(Monto) AS TotalQuantity FROM Cabecera GROUP BY Status order by TotalQuantity DESC"></asp:SqlDataSource> </td>
            <td> <asp:Chart ID="Chart3" runat="server" BackColor="White" BorderlineColor="White" DataSourceID="SqlDataSource3" Palette="SemiTransparent" BorderSkin-BorderColor="White">
    <Series>
        <asp:Series ChartType="Doughnut" Name="Series1" XValueMember="Metodo" YValueMembers="TotalQuantity"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT TOP 4 Metodo, SUM(Monto) AS TotalQuantity FROM Cabecera GROUP BY Metodo order by TotalQuantity DESC"></asp:SqlDataSource> </td>
        </tr>        
    </table>    
</asp:Content>

