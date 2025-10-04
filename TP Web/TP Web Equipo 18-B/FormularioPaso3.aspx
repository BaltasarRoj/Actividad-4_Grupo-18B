<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioPaso3.aspx.cs" Inherits="TP_Web_Equipo_18_B.FormularioPaso3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>INGRESA TUS DATOS</h1>

    <div class="row g-3">
        <!-- Nombre -->
        <div class="col-3">
            <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Nombre" runat="server" />
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" 
                ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio." Display="Dynamic" CssClass="text-danger" />
        </div>

        <!-- Apellido -->
        <div class="col-3">
            <asp:TextBox ID="txtApellido" CssClass="form-control" placeholder="Apellido" runat="server" />
            <asp:RequiredFieldValidator ID="rfvApellido" runat="server"
                ControlToValidate="txtApellido" ErrorMessage="El apellido es obligatorio." Display="Dynamic" CssClass="text-danger" />
        </div>

        <!-- DNI -->
        <div class="col-md-4">
            <asp:TextBox ID="txtDni" CssClass="form-control" placeholder="DNI" runat="server" />
            <asp:RequiredFieldValidator ID="rfvDni" runat="server"
                ControlToValidate="txtDni" ErrorMessage="El DNI es obligatorio." Display="Dynamic" CssClass="text-danger" />
       
            <asp:Label ID="lblMensajeUsuYaExiste" runat="server" Text="Ingrese su DNI para verificar si esta registrado."></asp:Label>
        </div>

        <!-- Botón Ya estoy registrado -->
        <div class="col-3 d-flex align-items-end">
            <asp:Button ID="btnEstoyRegistrado" runat="server" 
                Text="Ya estoy registrado" 
                CausesValidation="false" 
                OnClick="btnEstoyRegistrado_Click"
                CssClass="btn btn-secondary" />
        </div>

        <!-- Email -->
        <div class="col-md-4">
            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server" TextMode="Email" />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ControlToValidate="txtEmail" ErrorMessage="El email es obligatorio." Display="Dynamic" CssClass="text-danger" />
        </div>

        <!-- Dirección -->
        <div class="col-8">
            <asp:TextBox ID="txtDireccion" CssClass="form-control" placeholder="Dirección" runat="server" />
            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server"
                ControlToValidate="txtDireccion" ErrorMessage="La dirección es obligatoria." Display="Dynamic" CssClass="text-danger" />
        </div>

        <!-- Ciudad -->
        <div class="col-md-6">
            <asp:TextBox ID="txtCiudad" CssClass="form-control" placeholder="Ciudad" runat="server" />
            <asp:RequiredFieldValidator ID="rfvCiudad" runat="server"
                ControlToValidate="txtCiudad" ErrorMessage="La ciudad es obligatoria." Display="Dynamic" CssClass="text-danger" />
        </div>

        <!-- Código Postal -->
        <div class="col-md-2">
            <asp:TextBox ID="txtCP" CssClass="form-control" placeholder="C.P" runat="server" />
            <asp:RequiredFieldValidator ID="rfvCP" runat="server"
                ControlToValidate="txtCP" ErrorMessage="El código postal es obligatorio." Display="Dynamic" CssClass="text-danger" />
            <asp:RangeValidator 
ErrorMessage="El valor es incorrecto" 
MaximumValue="9999" 
MinimumValue="1000" 
ControlToValidate="txtCP" 
runat="server" />
        </div>

        <!-- Botón Participar -->
        <div class="col-12">
            <asp:Button ID="btnParticipar" Text="Participar!" runat="server" CssClass="btn btn-primary" OnClick="btnParticipar_Click" />
        </div>

    </div>

</asp:Content>
