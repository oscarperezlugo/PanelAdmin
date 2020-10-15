<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="PanelAdmin.Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
            <p><h2>Crear Producto</h2></p>
            <div class="fila col10L">
                <input class="formulario" placeholder="Nombre del Producto" id="Nombre" type="text" required runat="server" maxlength="30"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Precio $ formato (9,18)" id="Precio" type="text"  required runat="server" maxlength="5"/> 
            </div>
            <div class="fila col10L">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formulario" DataSourceID="SqlDataSource1" DataTextField="Categoria" DataValueField="Categoria" ></asp:DropDownList>                           
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT [Categoria] FROM [Categorias]"></asp:SqlDataSource>
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Cantidad" id="Cantidad" type="number" maxlength="10" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="formulario">
                    <asp:ListItem>Exento de IVA</asp:ListItem>
                    <asp:ListItem>Aplica IVA</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="fila col10L">
               <c><asp:FileUpload ID="FileUpload1" runat="server" CssClass="formulario" /></c>                         
            </div>                     
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="CREAR PRODUCTO"/>            
            </div>
        </div>
</asp:Content>
