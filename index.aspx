<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Repaso_41.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>
        *{
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size: 15px;
        }
        .validacion{
            color: red;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0">
                <tr>
                    <td><asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label></td>
                    <td><asp:TextBox ID="tbNombre" runat="server" Width="200px"></asp:TextBox></td>
                    <td style="width:200px">
                        <asp:RequiredFieldValidator ID="requiredNombre" runat="server" CssClass="validacion" ControlToValidate="tbNombre" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="regularNombre" runat="server" CssClass="validacion" ControlToValidate="tbNombre" ValidationExpression="^[a-wA-W\s]*$" ErrorMessage="😖 Solo letras y espacios"></asp:RegularExpressionValidator>
                    </td>
                    <td style="width:10px"><asp:Label ID="lblRaza" runat="server" Text="Raza:"></asp:Label></td>
                    <td><asp:TextBox ID="tbRaza" runat="server"></asp:TextBox></td>
                    <td style="width:200px"> 
                        <asp:RequiredFieldValidator ID="requiredRaza" runat="server" CssClass="validacion" ControlToValidate="tbRaza" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="regularRaza" runat="server" CssClass="validacion" ControlToValidate="tbRaza" ValidationExpression="^[a-wA-W\s]*$" ErrorMessage="😖 Solo letras y espacios"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblSexo" runat="server" Text="Sexo:"></asp:Label></td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Hembra" Checked="true" GroupName="sexo"/><br />
                        <asp:RadioButton ID="rbMacho" runat="server" Text="Macho" GroupName="sexo"/>
                    </td>
                    <td>
                    </td>
                    <td><asp:Label ID="lblFecha" runat="server" Text="Fecha:"></asp:Label></td>
                    <td><asp:TextBox ID="tbFecha" runat="server"></asp:TextBox></td>
                    <td> 
                        <asp:RequiredFieldValidator ID="requiredFecha" runat="server" CssClass="validacion" ControlToValidate="tbFecha" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="validacion" ControlToValidate="tbFecha" ValidationExpression="^[0-9]{2}/[0-9]{2}/[0-9]{4}$" ErrorMessage="😖 Formato no valido dd/mm/aaaa"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="9" style="text-align:center">
                        <strong><asp:Label ID="lblFechaNac" runat="server" Text="Fecha de Nacimiento" Width="400px"></asp:Label></strong>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblDia" runat="server" Text="Día:"></asp:Label></td>
                    <td><asp:TextBox ID="tbDia" runat="server" Width="200px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requiredDia" runat="server" CssClass="validacion" ControlToValidate="tbDia" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator><br />
                        <asp:RangeValidator ID="rangeDia" runat="server" CssClass="validacion" ControlToValidate="tbDia" MinimumValue="1" MaximumValue="31" ErrorMessage="😒 Solo numeros del 1 al 31"></asp:RangeValidator>
                    </td>
                    <td><asp:Label ID="lblMes" runat="server" Text="Mes:"></asp:Label></td>
                    <td><asp:TextBox ID="tbMes" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requiredMes" runat="server" CssClass="validacion" ControlToValidate="tbMes" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator><br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="validacion" ControlToValidate="tbMes" MinimumValue="1" MaximumValue="12" ErrorMessage="😒 Solo numeros del 1 al 12"></asp:RangeValidator>
                    </td>
                    <td><asp:Label ID="lblAno" runat="server" Text="Año:"></asp:Label></td>
                    <td><asp:TextBox ID="tbAno" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requiredAno" runat="server" CssClass="validacion" ControlToValidate="tbAno" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="validacion" ControlToValidate="tbFecha" ValidationExpression="^[0-9]{4}$" ErrorMessage="😖 Solo 4 numeros"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr> 
                    <td><asp:Label ID="lblDueno" runat="server" Text="Dueño:"></asp:Label></td>
                    <td><asp:TextBox ID="tbDueno" runat="server" Width="200px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requiredDueno" runat="server" CssClass="validacion" ControlToValidate="tbDueno" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="regularDueno" runat="server" CssClass="validacion" ControlToValidate="tbDueno" ValidationExpression="^[a-wA-W\s]*$" ErrorMessage="😖 Solo letras y espacios"></asp:RegularExpressionValidator>
                    </td>
                    <td><asp:Label ID="lblVet" runat="server" Text="Veterinario:"></asp:Label></td>
                    <td><asp:TextBox ID="tbVet" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="requiredVet" runat="server" CssClass="validacion" ControlToValidate="tbVet" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator> <br />
                        <asp:RegularExpressionValidator ID="regularVet" runat="server" CssClass="validacion" ControlToValidate="tbVet" ValidationExpression="^[a-wA-W\s]*$" ErrorMessage="😖 Solo letras y espacios"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="9" style="text-align:center">
                        <strong><asp:Label ID="lblCorreoDuenio" runat="server" Text="Correo electronico" Width="400px"></asp:Label></strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbCorreo" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="requiredCorreo" runat="server" CssClass="validacion" ControlToValidate="tbCorreo" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="regularCorreo" runat="server" CssClass="validacion" ControlToValidate="tbCorreo" ErrorMessage="😖 Formato de correo no valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        
                    </td>
                    <td>
                        <asp:Label ID="lblConfirmarCorreo" runat="server" Text="Confirmar Correo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbConfirmarCorreo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="requiredConfirmarCorreo" runat="server" CssClass="validacion" ControlToValidate="tbConfirmarCorreo" ErrorMessage="😡 Campo obligatorio"></asp:RequiredFieldValidator><br />
                        <asp:CompareValidator ID="compareCorreo" runat="server" CssClass="validacion" ControlToCompare="tbCorreo" ControlToValidate="tbConfirmarCorreo" ErrorMessage="😧 Los correos no coinciden"></asp:CompareValidator><br />
                        <asp:RegularExpressionValidator ID="regularConfirmarCorreo" runat="server" CssClass="validacion" ControlToValidate="tbConfirmarCorreo" ErrorMessage="😖 Formato de correo no valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btGuardar" runat="server" Text="Guardar" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
