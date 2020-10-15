<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClienteEdicion.aspx.cs" Inherits="PanelAdmin.ClienteEdicion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
            <p><h2>Editar Cliente</h2></p>
            <div class="fila col10L">
                <label runat="server" id="TagNombre" class=""></label><br />
                <input class="formulario" placeholder="Nombre (Juan)" id="Nombre" type="text"  runat="server"/>            
            </div>
            <div class="fila col10L">
                <label runat="server" id="TagApellido" class=""></label><br />
                <input class="formulario" placeholder="Apellido (Perez)" id="Apellido" type="text" runat="server"/>            
            </div>
            <div class="fila col10L">
                <label runat="server" id="TagCorreo" class=""></label><br />
                <input class="formulario" placeholder="Correo (juan@gmail.com)" id="Correo" type="email"  runat="server"/>            
            </div>
            <div class="fila col10L">
                <label runat="server" id="TagTelefono" class=""></label><br />
                <input class="formulario" placeholder="Télefono (0414555555)" id="Telefono" type="text" maxlength="11"  runat="server"/>            
            </div>
            <div class="fila col10L">
                <label runat="server" id="TagDireccion" class=""></label><br />
                <input class="formulario" placeholder="Dirección (Valencia, Prebo Calle Libra #55)" id="Dirección" type="text"  runat="server"/>            
            </div>                       
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="ACTUALIZAR CLIENTE" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="ACTUALIZAR CLIENTE"/>            
            </div>
        </div>
</asp:Content>
