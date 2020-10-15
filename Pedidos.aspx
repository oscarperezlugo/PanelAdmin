<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="PanelAdmin.Pedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <c><p><h2>TOTAL PEDIDOS</h2></p></c>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowSorting="True" DataKeyNames="Row" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        <Columns>            
            
            <asp:BoundField DataField="iDCliente" HeaderText="iDCliente" SortExpression="iDCliente" />
            <asp:BoundField DataField="FechaVenta" HeaderText="FechaVenta" SortExpression="FechaVenta" />
            <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
            <asp:BoundField DataField="Lineas" HeaderText="Lineas" SortExpression="Lineas" />
            <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" SortExpression="SubTotal" />
            <asp:BoundField DataField="iDVenta" HeaderText="iDVenta" SortExpression="iDVenta" />
            <asp:BoundField DataField="Row" HeaderText="Row" SortExpression="Row" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="TipoVenta" HeaderText="TipoVenta" SortExpression="TipoVenta" />
            <asp:BoundField DataField="Metodo" HeaderText="Metodo" SortExpression="Metodo" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT [iDCliente], [FechaVenta], [Monto], [Lineas], [SubTotal], [iDVenta], [Row], [Status], [TipoVenta], [Metodo], [Direccion] FROM [Cabecera] ORDER BY [FechaVenta] DESC">
    </asp:SqlDataSource>

</asp:Content>
