<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="PanelAdmin.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
            <p><h2>Registro de Cliente</h2></p>
            <div class="fila col10L">
                <input class="formulario" placeholder="Nombre (Juan)" id="Nombre" type="text" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Apellido (Perez)" id="Apellido" type="text" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Correo (juan@gmail.com)" id="Correo" type="email" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Télefono (0414555555)" id="Telefono" type="text" maxlength="11" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Dirección (Valencia, Prebo Calle Libra #55)" id="Dirección" type="text" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Contraseña" id="Contraseña" type="password" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Repetir Contraseña" id="Repetir" type="password" required runat="server"/>            
            </div>
            <p><input type="checkbox" required> ¿Acepta el cliente los Términos y Condiciones? <a class="enlaces" href="Terminos.aspx">Términos y Condiciones</a></p>
            <p><a class="enlaces" href="Login.aspx">¿Ya Tienes una Cuenta? Inicia Sesión desde Aquí</a></p>
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="REGISTRAR CLIENTE" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="REGISTRARME"/>            
            </div>
        </div>
</asp:Content>
