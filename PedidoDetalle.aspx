<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PedidoDetalle.aspx.cs" Inherits="PanelAdmin.PedidoDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">    
    <c><p><h2>DETALLES DEL PEDIDO</h2></p></c>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowSorting="True">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="FechaVenta" HeaderText="FechaVenta" SortExpression="FechaVenta" />
            <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
            <asp:BoundField DataField="Lineas" HeaderText="Lineas" SortExpression="Lineas" />
            <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" SortExpression="SubTotal" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="TipoVenta" HeaderText="TipoVenta" SortExpression="TipoVenta" />
            <asp:BoundField DataField="Metodo" HeaderText="Metodo" SortExpression="Metodo" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
        </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT [FechaVenta], [Monto], [Lineas], [SubTotal], [Status], [TipoVenta], [Metodo], [Direccion] FROM [Cabecera] WHERE ([iDVenta] = @iDVenta)">
        <SelectParameters>
            <asp:CookieParameter CookieName="idventaP" Name="iDVenta" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT [Producto], [Cantidad], [Precio] FROM [Lineas] WHERE ([iDVenta] = @iDVenta)">
        <SelectParameters>
            <asp:CookieParameter CookieName="idventaP" Name="iDVenta" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Metodo" HeaderText="Metodo" SortExpression="Metodo" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT [Metodo], [Correo] FROM [Pagos] WHERE ([iDVenta] = @iDVenta)">
        <SelectParameters>
            <asp:CookieParameter CookieName="idventaP" Name="iDVenta" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT [Nombre], [Apellido], [Correo], [Telefono] FROM [Clientes] WHERE ([iDCliente] = @iDCliente)">
        <SelectParameters>
            <asp:CookieParameter CookieName="idclienteP" Name="iDCliente" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <div class="fila col10L">
                <c><asp:Button class="botonsubmit" value="REGISTRAR CLIENTE" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="ACTUALIZAR STATUS"/></c>            
            </div>
    </asp:Content>
