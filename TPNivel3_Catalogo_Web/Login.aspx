﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPNivel3_Catalogo_Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form {
            background: rgb(99, 89, 133);
            color: white;
            font-family: Georgia, 'Times New Roman', Times, serif;
            padding: 3px;
            margin-top: 60px;
        }


        .container-inputs {
            font-size: 28px;
            margin-bottom: 10px;
            padding: 50px;
            width: auto;
        }


        .input-field {
            width: 90%;
            font-size: 1.2rem;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }


        input[type="submit"] {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            font-family: Georgia, 'Times New Roman', Times, serif;
            text-align: center;
            background: rgb(68, 60, 104);
            color: white;
            border-radius: 4px;
            border: none;
        }

            input[type="submit"]:hover {
                background-color: royalblue;
                color: white;
                text-decoration: none;
                transition: all 0.4s linear;
            }


        .btnCancelar {
            display: inline-block;
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            font-family: Georgia, 'Times New Roman', Times, serif;
            text-decoration: none;
            text-align: center;
            background: rgb(68, 60, 104);
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            .btnCancelar:hover {
                background-color: indianred;
                color: white;
                text-decoration: none;
                transition: all 0.4s linear;
            }


        .link {
            color: white;
            text-decoration: none;
        }

            .link:hover {
                color: rgb(160, 190, 254);
                text-decoration: none;
                transition: all 0.4s linear;
            }

        .class-p {
            margin-top: 1rem;
            margin-bottom: 1rem;
            text-align: center;
        }

        .text-color {
            color: floralwhite;
        }

        @media screen and (min-width: 767px) {
            .form {
                margin: auto;
                width: 510px;
                margin-top: 60px;
                padding: 35px;
                border-radius: 80px;
                text-align: center;
            }

            .container-inputs {
                padding: 5px;
                font-size: 18px;
                margin-right: 20px;
                margin-left: 20px;
            }

            .input-field {
                width: 90%;
                font-size: 1.2rem;
            }

            input[type="submit"] {
                width: 35%;
                font-size: 1rem;
                border-radius: 20px;
                transition: all 0.3s linear;
            }

            .btnCancelar {
                width: 35%;
                font-size: 1rem;
                border-radius: 20px;
                transition: all 0.3s linear;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Iniciar Sesión</h1>

    <div class="form">
        <div class="row">
            <div class="col-4 container">
                <div class="mb-3 container-inputs">
                    <label class="form-label">Correo electrónico</label>
                    <asp:TextBox runat="server" CssClass="form-control input-field" ID="txtEmail" required=""/>
                    <asp:Label ID="lblErrorEmail" runat="server" CssClass="text-color" Visible="false"></asp:Label>
                </div>
                <div class="mb-3 container-inputs">
                    <label class="form-label">Contraseña</label>
                    <asp:TextBox runat="server" CssClass="form-control input-field" ID="txtPassword" TextMode="Password" required=""/>
                    <asp:Label ID="lblErrorPass" runat="server" CssClass="text-color" Visible="false"></asp:Label>
                </div>
                <asp:Button Text="Ingresar" class="" ID="btnLogin" OnClick="btnLogin_Click" runat="server" />
                <a class="btnCancelar" href="/">Cancelar</a>
                <p class="class-p">¿No tienes una cuenta? <a class="link" href="Registro.aspx">Registrarse</a></p>
            </div>
        </div>
    </div>

</asp:Content>
