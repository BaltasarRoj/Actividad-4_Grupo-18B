<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voucher.aspx.cs" Inherits="TP_Web_Equipo_18_B.Voucher1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align:center;">
                <br />
    <h1>¡Canjea tu Voucher!</h1>
            <br />
        <br />
    <asp:TextBox ID="txtVoucher" runat="server"></asp:TextBox>
    <br />
            <asp:Button ID="btnSiguiente" CssClass="btn btn-primary mt-3" runat="server" OnClick="btnSiguiente_Click" Text="Siguiente" />
            <br />
            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>
