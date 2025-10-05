<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioPaso3.aspx.cs" Inherits="TP_Web_Equipo_18_B.FormularioPaso3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script>    
        function ValidarForm(form) {
            form.classList.add('was-validated');
            return form.checkValidity();
        }
    </script>



    <h1>INGRESA TUS DATOS</h1>

    <div class="row g-3">
        <div class=" col-md-4">
            <asp:TextBox ID="txtDni" ClientIDMode="Static" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtDni_TextChanged" placeholder="DNI" aria-label="DNI" runat="server" required="required" />
            <div class="invalid-feedback">Ingresá un DNI válido.</div>
        </div>
        <div class="row g-3">
            <div class="col-3">
                <asp:TextBox ID="txtNombre" ClientIDMode="Static" CssClass="form-control" placeholder="Nombre" aria-label="Nombre" runat="server" required="required" />
                <div class="invalid-feedback">El nombre es obligatorio.</div>
            </div>
        </div>
        <div class="col-3">
            <asp:TextBox ID="txtApellido" ClientIDMode="Static" CssClass="form-control" placeholder="Apellido" aria-label="Apellido" runat="server" required="required" />
            <div class="invalid-feedback">El apellido es obligatorio.</div>
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="txtEmail" ClientIDMode="Static" CssClass="form-control" placeholder="Email" aria-label="Email" runat="server" TextMode="Email" required="required" />
            <div class="invalid-feedback">Ingresá un email válido.</div>
        </div>
        <div class="col-8">
            <label for="txtDireccion" class="form-label">Direccion</label>
            <asp:TextBox ID="txtDireccion" ClientIDMode="Static" CssClass="form-control" placeholder="Direcion" aria-label="Direccion" runat="server" required="required" />
            <div class="invalid-feedback">La dirección es obligatoria.</div>
        </div>
        <div class="col-md-6">
            <label for="txtCiudad" class="form-label">Ciudad</label>
            <asp:TextBox ID="txtCiudad" ClientIDMode="Static" CssClass="form-control" placeholder="Ciudad" aria-label="Ciudad" runat="server" required="required" />
            <div class="invalid-feedback">La ciudad es obligatoria.</div>
        </div>
        <div class="col-md-2">
            <label for="txtCP" class="form-label">C.P</label>
            <asp:TextBox ID="txtCP" ClientIDMode="Static" CssClass="form-control" placeholder="C.P" aria-label="CP" runat="server" required="required" />
            <div class="invalid-feedback">Ingresá el código postal.</div>
        </div>
        <div class="col-12">
            <asp:Button Text="Participar!" OnClientClick="return ValidarForm(this.form);" CssClass="btn btn-primary" ID="btnParticipar" OnClick="btnParticipar_Click" runat="server" />
        </div>
    </div>
</asp:Content>





