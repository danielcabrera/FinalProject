<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master"
 CodeBehind="Opciones.aspx.cs" Inherits="FinalProject.Pestañas.Opciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--  #############          JavaScript        #############      --%>
    <script src="../Scripts/jquery-2.1.3.js" type="text/javascript" ></script>
    <script src="../Scripts/bootstrap.js" type="text/javascript" ></script>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server"  >
    <asp:Panel ID="pan1" runat="server">
<asp:LoginStatus ID="LoginStatus1" CssClass="btn btn-primary" runat="server" LogoutText="Cerrar sesion" />

<br />
<br />

    <asp:Button ID="Btnborr" runat="server" CssClass="btn btn-primary" 
        Text="Borrar cuenta" onclick="Btnborr_Click"  />
        <br />
        <br />
        <asp:Button ID="Btnecont" runat="server" CssClass="btn btn-primary" 
        Text="Editar contraseña" onclick="Btnecont_Click" />    
    
    </asp:Panel>
    <div class="col-sm-12">
    <div class="col-sm-6">
    <asp:Panel ID="pan2" runat="server" Visible="false">
    <p class="lead">¡ATENCIÓN!</p>
    <br />
    <p id="p1" class="lead">¿Estás seguro que quieres borrar tu cuenta? 
    una vez borrada no se podra recuperar</p>
    
   <br />
   <br />
        <asp:Button ID="Btnacep" CssClass="btn btn-primary" runat="server" 
            Text="Aceptar" onclick="Btnacep_Click" />
        <asp:Button ID="Btncanc" CssClass="btn btn-default" runat="server" 
            Text="Cancelar" onclick="Btncanc_Click" />
    </asp:Panel>
    <asp:Panel ID="pan3" Visible="false" runat="server">
        <asp:Label ID="lantiguacont" CssClass="lead" runat="server" Text="Contraseña antigua"></asp:Label>
        <br />
        <asp:TextBox ID="tantiguacont" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lnuevacont" CssClass="lead" runat="server" Text="Nueva contraseña"></asp:Label>
        <br />
        <asp:TextBox ID="tnuevacont" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lRnuevacont" CssClass="lead" runat="server" Text="Repita la nueva contraseña"></asp:Label>
        <br />
        <asp:TextBox ID="tRnuevacont" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Btnconf" CssClass="btn btn-primary" runat="server" 
            Text="Aceptar" onclick="Btnconf_Click" />
        <asp:Button ID="Btncancel" CssClass="btn btn-default" runat="server" Text="Cancelar"
        onclick="Btncanc_Click" />
        <br />
        <br />
        <asp:Label ID="lblERR" ForeColor="White" Visible="false" CssClass="label-danger"
        runat="server" />
    </asp:Panel> 
    </div>
    </div>

</asp:Content>
