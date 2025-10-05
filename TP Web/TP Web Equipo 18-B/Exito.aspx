<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exito.aspx.cs" Inherits="TP_Web_Equipo_18_B.Exito" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-center mt-5">
        <!-- Imagen de tilde verde -->
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Yes_Check_Circle.svg/1024px-Yes_Check_Circle.svg.png" 
             alt="Éxito" style="width:100px;height:100px;margin-bottom:20px;" />

        <!-- Título de éxito -->
        <h1 class="text-success">¡Operación exitosa!</h1>

        <!-- Mensaje adicional -->
        <p>El voucher ha sido canjeado correctamente.</p>

        <!-- Botón para volver a inicio o a otra página -->
        <asp:HyperLink ID="btnVolver" runat="server" CssClass="btn btn-primary mt-3" NavigateUrl="Home.aspx">
            Volver al inicio
        </asp:HyperLink>
    </div>
</asp:Content>
