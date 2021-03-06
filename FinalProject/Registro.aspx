﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="FinalProject.Registro" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <script src="../Scripts/jquery-2.1.3.js" type="text/javascript"></script>

    <script src="../Scripts/bootstrap.js" type="text/javascript"></script>

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/Flatly.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--  #############          JavaScript        #############      --%>

        <script src="../Scripts/jquery-2.1.3.js" type="text/javascript"></script>

        <script src="../Scripts/bootstrap.js" type="text/javascript"></script>
<div class="jumbotron" style="background-color:Gray">
        <div class="container">
            <div class="col-sm-12 jumbotron">
                <asp:Panel ID="form" runat="server">
                    <%--<div class="container">--%>
                    <%-- <div class="jumbotron">--%>
                    <h2 style="color: Blue">
                        REGISTRO</h2>
                    <hr align="left" style="color:Black" />
                    <br />
                    <br />
                    <div class="col-sm-6">
                        <div class="col-sm-9">
                            <asp:Label ID="labelnick" CssClass="lead" runat="server" Text="Nick"></asp:Label>
                            <br />
                            <asp:TextBox ID="Boxnick" CssClass="form-control" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="labelnombre" CssClass="lead" runat="server" Text="Nombre"></asp:Label>
                            <br />
                            <asp:TextBox ID="boxnombre" CssClass="form-control" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="labelapellidos" CssClass="lead" runat="server" Text="Apellidos"></asp:Label>
                            <br />
                            <asp:TextBox ID="boxapellidos" CssClass="form-control" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="labelcorreo" CssClass="lead" runat="server" Text="Correo"></asp:Label>
                            <br />
                            <asp:TextBox ID="boxcorreo" CssClass="form-control" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="col-sm-9">
                        <asp:Label ID="labelfecha" CssClass="lead" runat="server" Text="Fecha de nacimiento"></asp:Label>
                            <br />
                            <asp:TextBox ID="boxfecha" CssClass="form-control" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="labelcomunidad" CssClass="lead" runat="server" Text="Comunidad/Provincia"></asp:Label>
                            <br />
                            <asp:DropDownList ID="dd1" runat="server" CssClass="form-control">
                            <asp:ListItem>Madrid/Madrid</asp:ListItem>
                            <asp:ListItem>Castilla y León/León</asp:ListItem>
                            <asp:ListItem>Castilla y León/Palencia</asp:ListItem>
                            <asp:ListItem>Castilla y León/Burgos</asp:ListItem>
                            <asp:ListItem>Castilla y León/Soria</asp:ListItem>
                            <asp:ListItem>Castilla y León/Zamora</asp:ListItem>
                            <asp:ListItem>Castilla y León/Valladolid</asp:ListItem>
                            <asp:ListItem>Castilla y León/Segovia</asp:ListItem>
                            <asp:ListItem>Castilla y León/Salamanca</asp:ListItem>
                            <asp:ListItem>Castilla y León/Ávila</asp:ListItem>
                            <asp:ListItem>Castilla la Mancha/Guadalajara</asp:ListItem>
                            <asp:ListItem>Castilla la Mancha/Toledo</asp:ListItem>
                            <asp:ListItem>Castilla la Mancha/Ciudad Real</asp:ListItem>
                            <asp:ListItem>Castilla la Mancha/Cuenca</asp:ListItem>
                            <asp:ListItem>Castilla la Mancha/Albacete</asp:ListItem>
                            <asp:ListItem>Andalucía/Jaén</asp:ListItem>
                            <asp:ListItem>Andalucía/Córdoba</asp:ListItem>
                            <asp:ListItem>Andalucía/Sevilla</asp:ListItem>
                            <asp:ListItem>Andalucía/Huelva</asp:ListItem>
                            <asp:ListItem>Andalucía/Almería</asp:ListItem>
                            <asp:ListItem>Andalucía/Cádiz</asp:ListItem>
                            <asp:ListItem>Andalucía/Malaga</asp:ListItem>
                            <asp:ListItem>Andalucía/Granada</asp:ListItem>
                            <asp:ListItem>Galicia/La Coruña</asp:ListItem>
                            <asp:ListItem>Galicia/Lugo</asp:ListItem>
                            <asp:ListItem>Galicia/Pontevedra</asp:ListItem>
                            <asp:ListItem>Galicia/Ourense</asp:ListItem>
                            <asp:ListItem>Asturias/Asturias</asp:ListItem>
                            <asp:ListItem>Cantabria/Cantabria</asp:ListItem>
                            <asp:ListItem>País Vasco/Guipúzcoa</asp:ListItem>
                            <asp:ListItem>País Vasco/Vizcaya</asp:ListItem>
                            <asp:ListItem>País Vasco/Álava</asp:ListItem>
                            <asp:ListItem>Navarra/Navarra</asp:ListItem>
                            <asp:ListItem>Aragón/Huesca</asp:ListItem>
                            <asp:ListItem>Aragón/Zaragoza</asp:ListItem>
                            <asp:ListItem>Aragón/Teruel</asp:ListItem>
                            <asp:ListItem>La Rioja/La Rioja</asp:ListItem>
                            <asp:ListItem>Cataluña/Barcelona</asp:ListItem>
                            <asp:ListItem>Cataluña/Lérida</asp:ListItem>
                            <asp:ListItem>Cataluña/Gerona</asp:ListItem>
                            <asp:ListItem>Cataluña/Tarragona</asp:ListItem>
                            <asp:ListItem>Valencia/Valencia</asp:ListItem>
                            <asp:ListItem>Valencia/Castellón</asp:ListItem>
                            <asp:ListItem>Valencia/Alicante</asp:ListItem>
                            <asp:ListItem>Murcia/Murcia</asp:ListItem>
                            <asp:ListItem>Extremadura/Cáceres</asp:ListItem>
                            <asp:ListItem>Extremadura/Badajoz</asp:ListItem>
                            <asp:ListItem>Islas Baleares/Islas Baleares</asp:ListItem>
                            <asp:ListItem>Canarias/Santa Cruz de Tenerife</asp:ListItem>
                            <asp:ListItem>Canarias/Las Palmas</asp:ListItem>
                            <asp:ListItem>Ceuta/Ceuta</asp:ListItem>
                            <asp:ListItem>Melilla/Melilla</asp:ListItem>
                            </asp:DropDownList>
                            <%--<select class="form-control" id="select">
                                <option>Madrid/Madrid</option>
                                <option>Andalucía/Sevilla</option>
                                <option>Castilla la Mancha/Ciudad Real</option>
                                <option>Castilla y León/Segovia</option>
                                <option>Aragón</option>
                            </select>--%>
                            <%--<asp:TextBox ID="boxcomunidad" CssClass="form-control right" runat="server"></asp:TextBox>--%>
                            <br />
                            <br />
                            <%--<asp:Label ID="labelprovincia" CssClass="lead" runat="server" Text="Provincia"></asp:Label>
                            <br />
                            <asp:TextBox ID="boxprovincia" CssClass="form-control" runat="server"></asp:TextBox>
                            <br />
                            <br />--%>
                            <asp:Label ID="labelcontraseña" CssClass="lead" runat="server" Text="Contraseña"></asp:Label>
                            <br />
                            <asp:TextBox ID="boxcontraseña" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="labelRcontraseña" CssClass="lead" runat="server" Text="Repetir contraseña"></asp:Label>
                            <br />
                            <asp:TextBox ID="boxRcontraseña" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                            <br />
                            <br />
                        </div>
                        </div>
                    
                    <asp:Panel ID="pan" runat="server">
                    <div class="col-sm-12" align="right">
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6 right">
                    <br />
                    <asp:Button ID="aceptarregistro" CssClass="btn btn-primary" runat="server" Text="Aceptar"
                        OnClick="aceptarregistro_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="cancelarregistro" type="reset" CssClass="btn btn-default" runat="server"
                        Text="Cancelar" onclick="cancelarregistro_Click" />
                        </div>
                       </div> 
                    </asp:Panel>
                    
                    
                    <br />
                    <br />
                    <br />
                    </asp:Panel>
                    
               <asp:Label ID="lblERR" ForeColor="White" Visible="false" CssClass="label-danger"
        runat="server" />     
            </div>
            
            <%--</div>--%>
            <%--</div>--%>
        </div>
        </div>
    </div>
    
    
    </form>
</body>
</html>
