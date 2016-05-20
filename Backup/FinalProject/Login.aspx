<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>CHATJuegos</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/Flatly.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="LoginForm" runat="server">
    
        <div class="container-fluid" style="height: 100px"></div>
        <div class="container-fluid">

                <div class="clearfix text-center">
                    <div class="text-primary">
                        <h1>CHATJuegos</h1>
                        <h2><small>Logueate para entrar en la aplicación</small></h2>
                        <br />
                        <br />
                    </div>

                    <div class="col-md-4" style="float: left">&nbsp;</div>
                    <div class="col-md-4 ">
                        <div class="col-md-offset-1 col-md-10 well well-sm text-center" style="background-color:Aqua">
                            <%--<img class="img-rounded" src="Images/logo_cartas_royal.JPG" width="80" height="80" alt="Login" />--%>
                            <p></p>
                            <br />
                            <asp:Login ID="Login1" runat="server" 
                                OnAuthenticate="Login1_Authenticate" 
                                VisibleWhenLoggedIn="False" 
                                DisplayRememberMe="False" 
                                TabIndex="1" 
                                
                                TitleText="" UserNameLabelText="Nick del usuario:"
                                >
                                <LoginButtonStyle CssClass="btn btn-primary"/>
                                <LabelStyle CssClass="control-label col-md-2" Wrap="False" />
                                <TextBoxStyle CssClass="form-control col-md-2" />
                            </asp:Login>
                        </div>
                        <div class="row">
                    <div class="form-group col-md-offset-4 col-md-4 text-right h6">
                        <hr />
                        <p>
                            
                                <a href = "Registro.aspx" >¿Aun no estas registrado? Registrate</a>
                        </p>
                    </div>
                </div>

                    </div>
                </div>

        </div>
        
    </form>
</body>
</html>