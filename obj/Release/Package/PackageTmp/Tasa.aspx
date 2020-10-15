<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tasa.aspx.cs" Inherits="PanelAdmin.Tasa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
        <c><p><h2>ACTUALIZAR TASA</h2></p></c>
    <div class="fila col10L">
        <br />
        <label>TASA DEL DIA </label><br />
        <label runat="server" id="TagTasa" class=""></label><br />
                <input class="formulario" placeholder="Tasa Bs. formato (555555,99)" id="TasaDia" type="text"  required runat="server" maxlength="9"/> 
            </div>
    <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="ACTUALIZAR TASA"/>            
            </div>
        </div>
</asp:Content>
