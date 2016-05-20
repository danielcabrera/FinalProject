<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master"
 CodeBehind="Usuarios.aspx.cs" Inherits="FinalProject.Pestañas.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--  #############          JavaScript        #############      --%>
    <script src="../Scripts/jquery-2.1.3.js" type="text/javascript" ></script>
    <script src="../Scripts/bootstrap.js" type="text/javascript" ></script>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server"  >
    <div >
<div class="col-sm-8">
<asp:Panel ID="Pan1" Visible="true" runat="server">
<%-- OnRowCommand="gv1_RowCommand"
OnRowDataBound="gv1_RowDataBound" 
                    OnPageIndexChanging="gv1_PageIndexChanging"--%>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Visible="true" BackColor="White" BorderColor="#66FFFF" CellSpacing="5" 
                    CssClass="GridRowAlterna" Width="100%" AllowPaging="True"
                    OnRowCommand="gv1_RowCommand"
                    OnRowDataBound="gv1_RowDataBound" 
                     OnPageIndexChanging="gv1_PageIndexChanging"        
                     PageSize="20"
                     ToolTip="seleccionar">
                     
                     <SelectedRowStyle CssClass="success" BackColor="#99CCFF" 
                         BorderColor="#0066FF" />
                     <HeaderStyle BackColor="#33CCFF" BorderColor="#0066FF" 
                        BorderWidth="2px" HorizontalAlign="Left" />
                     <EmptyDataTemplate>
                        <asp:Label ID="lblEmpty" runat="server" ></asp:Label>
                    </EmptyDataTemplate>
                    
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
                        <asp:BoundField DataField="fnacimiento" HeaderText="FECHA DE NACIMIENTO">
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
                        <asp:BoundField DataField="ecuenta" HeaderText="ESTADO CUENTA">
                            <HeaderStyle CssClass="text-center" />
                            <ItemStyle CssClass="text-center" />
                        </asp:BoundField>
                        
                        <asp:ButtonField Visible="false" CommandName="Select" /> 
                    </Columns>
                    
                </asp:GridView>
                <br />
                <br />
                
            </asp:Panel>
</div>
<div class="col-sm-4">
<div class="col-sm-8">
<asp:TextBox ID="tbuscar" Cssclass="form-control" runat="server" placeholder="Buscar usuarios..."></asp:TextBox>
</div>
<asp:Button ID="btnbuscar" Cssclass="btn btn-default" Text="Buscar" runat="server" />
<div class="col-sm-10">
<asp:Panel ID="panAcciones" Visible="false" runat="server">
<br />
<br />
<br />
<br />
<div class="panel panel-primary text-center" style="border-style: solid">
                    <br />
                    <br />
                    <br />
                    <asp:Panel ID="panseg" Visible="false" runat="server">
                    <asp:Button runat="server" ID="Btnseguir" CssClass="btn btn-primary" Text="Seguir" 
                            onclick="Btnseguir_Click"  />
                    &nbsp;&nbsp;
                    <asp:Button runat="server" ID="Btndseguir" CssClass="btn btn-primary" 
                            Text="Dejar de seguir" onclick="Btndseguir_Click"  />
                    </asp:Panel>
                    
                    <asp:Panel ID="panbloq" Visible="false"  runat="server">
                    <asp:Button runat="server" ID="Btnbloc" CssClass="btn btn-primary" Text="Bloquear" 
                            onclick="Btnbloc_Click"  />
                    &nbsp;&nbsp;
                    <asp:Button runat="server" ID="Btndesbloc" CssClass="btn btn-primary" 
                            Text="Desbloquear" onclick="Btndesbloc_Click"  />
                    </asp:Panel>
                    <br />
                    <br />
                    <asp:Button ID="btncancsel" CssClass="btn btn-default" runat="server" 
                        Text="Cancelar" onclick="btncancsel_Click" />
                    
                    <br />
                    <br />
                    <br />

                    
                </div>
                </asp:Panel>
                </div>
                
</div>
</div>

</asp:Content>