<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master"
 CodeBehind="Perfil.aspx.cs" Inherits="FinalProject.Pestañas.Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--  #############          JavaScript        #############      --%>
    <script src="../Scripts/jquery-2.1.3.js" type="text/javascript" ></script>
    <script src="../Scripts/bootstrap.js" type="text/javascript" ></script>
    
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >


     <%--<div class="jumbotron">
        <div class="container">--%>
        
            <asp:Panel ID="Pan1" Visible="true" runat="server">
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Visible="true" BackColor="White" BorderColor="#66FFFF" CellSpacing="1" 
                    CssClass="GridRowAlterna" Width="100%" >
                    <RowStyle BorderStyle="None" />
                    <Columns>
                        <asp:BoundField DataField="Nick" HeaderText="NICK">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Nombre" HeaderText="NOMBRE">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Apellidos" HeaderText="APELLIDOS">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Correo" HeaderText="CORREO">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="fnacimiento" HeaderText="FECHA DE NACIMIENTO">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="finicio" HeaderText="FECHA DE INICIO DE CUENTA">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Comunidad" HeaderText="COMUNIDAD">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Provincia" HeaderText="PROVINCIA">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idres" Visible="false" HeaderText="">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#33CCFF" BorderColor="#0066FF" BorderStyle="Solid" 
                        BorderWidth="2px" HorizontalAlign="Left" />
                </asp:GridView>
                </div>
                <br />
                <br />
                <div class="pull-right">
                <asp:Button ID="btneditperfil" CssClass="btn btn-primary" runat="server" Text="Editar perfil" 
                    onclick="btneditperfil_Click" />
                    
                    </div>
            </asp:Panel>
            
    <asp:Panel ID="pan2" Visible="false" runat="server">
        <div class="col-sm-12">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <asp:Label ID="lednick" CssClass="lead" runat="server" Text="Nick"></asp:Label>
                <br />
                <asp:TextBox ID="tednick" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lednom" CssClass="lead" runat="server" Text="Nombre"></asp:Label>
                <br />
                <asp:TextBox ID="tednom" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="ledapell" CssClass="lead" runat="server" Text="Apellidos"></asp:Label>
                <br />
                <asp:TextBox ID="tedapell" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="ledcorreo" CssClass="lead" runat="server" Text="Correo"></asp:Label>
                <br />
                <asp:TextBox ID="tedcorreo" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="ledfecha" CssClass="lead" runat="server" Text="Fecha de nacimiento"></asp:Label>
                <br />
                <asp:TextBox ID="tedfecha" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="ledcomprov" CssClass="lead" runat="server" Text="Comunidad/Provincia"></asp:Label>
                <br />
                <asp:DropDownList ID="dd1" runat="server" CssClass="form-control">
                <asp:ListItem>Madrid/Madrid</asp:ListItem>
                            <asp:ListItem Value="1">Madrid/Madrid</asp:ListItem>
                            <asp:ListItem Value="2">Castilla y León/León</asp:ListItem>
                            <asp:ListItem Value="3">Castilla y León/Palencia</asp:ListItem>
                            <asp:ListItem Value="4">Castilla y León/Burgos</asp:ListItem>
                            <asp:ListItem Value="5">Castilla y León/Soria</asp:ListItem>
                            <asp:ListItem Value="6">Castilla y León/Zamora</asp:ListItem>
                            <asp:ListItem Value="7">Castilla y León/Valladolid</asp:ListItem>
                            <asp:ListItem Value="8">Castilla y León/Segovia</asp:ListItem>
                            <asp:ListItem Value="9">Castilla y León/Salamanca</asp:ListItem>
                            <asp:ListItem Value="10">Castilla y León/Ávila</asp:ListItem>
                            <asp:ListItem Value="11">Castilla la Mancha/Guadalajara</asp:ListItem>
                            <asp:ListItem Value="12">Castilla la Mancha/Toledo</asp:ListItem>
                            <asp:ListItem Value="13">Castilla la Mancha/Ciudad Real</asp:ListItem>
                            <asp:ListItem Value="14">Castilla la Mancha/Cuenca</asp:ListItem>
                            <asp:ListItem Value="15">Castilla la Mancha/Albacete</asp:ListItem>
                            <asp:ListItem Value="16">Andalucía/Jaén</asp:ListItem>
                            <asp:ListItem Value="17">Andalucía/Córdoba</asp:ListItem>
                            <asp:ListItem Value="18">Andalucía/Sevilla</asp:ListItem>
                            <asp:ListItem Value="19">Andalucía/Huelva</asp:ListItem>
                            <asp:ListItem Value="20">Andalucía/Almería</asp:ListItem>
                            <asp:ListItem Value="21">Andalucía/Cádiz</asp:ListItem>
                            <asp:ListItem Value="22">Andalucía/Malaga</asp:ListItem>
                            <asp:ListItem Value="23">Andalucía/Granada</asp:ListItem>
                            <asp:ListItem Value="24">Galicia/La Coruña</asp:ListItem>
                            <asp:ListItem Value="25">Galicia/Lugo</asp:ListItem>
                            <asp:ListItem Value="26">Galicia/Pontevedra</asp:ListItem>
                            <asp:ListItem Value="27">Galicia/Ourense</asp:ListItem>
                            <asp:ListItem Value="28">Asturias/Asturias</asp:ListItem>
                            <asp:ListItem Value="29">Cantabria/Cantabria</asp:ListItem>
                            <asp:ListItem Value="30">País Vasco/Guipúzcoa</asp:ListItem>
                            <asp:ListItem Value="31">País Vasco/Vizcaya</asp:ListItem>
                            <asp:ListItem Value="32">País Vasco/Álava</asp:ListItem>
                            <asp:ListItem Value="33">Navarra/Navarra</asp:ListItem>
                            <asp:ListItem Value="34">Aragón/Huesca</asp:ListItem>
                            <asp:ListItem Value="35">Aragón/Zaragoza</asp:ListItem>
                            <asp:ListItem Value="36">Aragón/Teruel</asp:ListItem>
                            <asp:ListItem Value="37">La Rioja/La Rioja</asp:ListItem>
                            <asp:ListItem Value="38">Cataluña/Barcelona</asp:ListItem>
                            <asp:ListItem Value="39">Cataluña/Lérida</asp:ListItem>
                            <asp:ListItem Value="40">Cataluña/Gerona</asp:ListItem>
                            <asp:ListItem Value="41">Cataluña/Tarragona</asp:ListItem>
                            <asp:ListItem Value="42">Valencia/Valencia</asp:ListItem>
                            <asp:ListItem Value="43">Valencia/Castellón</asp:ListItem>
                            <asp:ListItem Value="44">Valencia/Alicante</asp:ListItem>
                            <asp:ListItem Value="45">Murcia/Murcia</asp:ListItem>
                            <asp:ListItem Value="46">Extremadura/Cáceres</asp:ListItem>
                            <asp:ListItem Value="47">Extremadura/Badajoz</asp:ListItem>
                            <asp:ListItem Value="48">Islas Baleares/Islas Baleares</asp:ListItem>
                            <asp:ListItem Value="49">Canarias/Santa Cruz de Tenerife</asp:ListItem>
                            <asp:ListItem Value="50">Canarias/Las Palmas</asp:ListItem>
                            <asp:ListItem Value="51">Ceuta/Ceuta</asp:ListItem>
                            <asp:ListItem Value="52">Melilla/Melilla</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <div class="col-sm-4"></div>
            </div>
        </div>
        <div class="col-sm-12">
        <div class="col-sm-4"></div>
        <div class="col-sm-4 ">
        <asp:Button ID="Btnedit" CssClass="btn btn-primary" runat="server" Text="Aceptar" 
                onclick="Btnedit_Click" />
        <asp:Button ID="Btncancel" CssClass="btn btn-default" runat="server" 
                Text="Cancelar" onclick="Btncancel_Click" />
        </div>
        
        <div class="col-sm-4"></div>
        </div>
        <asp:Label ID="lblERR" ForeColor="White" Visible="false" CssClass="label-danger"
        runat="server" />
    </asp:Panel>
        
 
</asp:Content>
