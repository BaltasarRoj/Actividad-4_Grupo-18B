<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voucher.aspx.cs" Inherits="TP_Web_Equipo_18_B.Voucher1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

                <br />
            <br />
    <asp:TextBox ID="txtVoucher" runat="server"></asp:TextBox>
            <asp:Button ID="btnSiguiente" runat="server" OnClick="btnSiguiente_Click" Text="Siguiente" />
            <br />
            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
</asp:Content>
