<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categoria.aspx.cs" Inherits="PanelAdmin.Categoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
            <p><h2>Crear Categoria</h2></p>
            <div class="fila col10L">
                <input class="formulario" placeholder="Nombre de la Categoria" id="Nombre" type="text" required runat="server" maxlength="15"/>            
            </div>            
            <div class="fila col10L">
               <c><asp:FileUpload ID="FileUpload1" runat="server" CssClass="formulario" /></c>                         
            </div>                     
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="CREAR CATEGORIA"/>            
            </div>
        </div>
</asp:Content>
