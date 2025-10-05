<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TP_Web_Equipo_18_B.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div style="text-align:center;">
         <div>
             <br />
 <h1>¡Bienvenido a Compu House!</h1>
         <p >Gracias por visitarnos.</p>
             <p>Si tienes un voucher, puedes canjearlo ahora y disfrutar de nuestras ofertas.</p>
      
<img src="Imagenes/logo Compu House.png" alt="Logo Compu House" style="max-width:300px; height:auto;" />
             <div>
             <asp:Button ID="btnCanjearVoucher" CssClass="btn btn-primary mt-3" runat="server" OnClick="btnCanjearVoucher_Click" Text="Canjear" />  
         </div>
                 <br />
             </div>
        
 <br />
     </div>

</asp:Content>
