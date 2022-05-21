<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>AYKKA</title> 

    <!-- Tell the browser to be responsive to screen width -->
   
      <style type="text/css">
.messgealert {
width:50%;
position:fixed;
top:0;
z-index:10000000;
padding:0;
font-size:15px;
}
.btn.focus, .btn:focus, .btn:hover {
    color: white;
    text-decoration: none;
}
</style>
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
     <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap');

        html {
            box-sizing: border-box;
            font: 62.5% "Open Sans", sans-serif;
        }

        *,
        *::before,
        *::after {
            box-sizing: inherit;
        }

        body {
            color: #353b48;
            font-size: 1.6rem;
            margin: 0;
            padding: 0;
        }

        h1, h3, p {
            margin: 0;
        }

        /* login */

        section {
            display: flex;
        }

        .login-img {
            display: none;
        }

        .login-form {
            height: 100vh;
            max-width: 80%;
            margin: auto;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        #company-name {
            display: none;
        }

        .login-form h1 {
            color: #c31432;
            font-size: 5rem;
            padding-bottom: 20px;
        }

        .login-form p {
            font-size: 1.8rem;
        }

        .login-form h3 {
            padding-bottom: 10px;
        }

        form {
            display: flex;
            flex-wrap: wrap;
            margin: 25px 0;
        }

            form > * {
                flex: 100%;
            }

        input {
            border: 1px solid #dcdde1;
            margin-bottom: 15px;
        }

            input:focus {
                outline: none;
                border-color: rgba(195, 20, 50, 0.4);
                box-shadow: 0 0 4px rgba(195, 20, 50, 0.5);
            }

        label {
            margin-bottom: 5px;
        }

        input, button {
            border-radius: 5px;
            padding: 15px;
        }

        .button {
            background-color: #144f82;
            border: none;
            color: #f5f6fa;
            font-family: inherit;
            font-weight: 700;
            font-size: 1.5rem;
            text-transform: uppercase;
            transition: background-color linear .3s;
        }

            .button:active,
            .button:hover {
                background-color: #144f82;
            }

        .text-info {
            text-align: center;
        }

            .text-info a,
            .text-info p {
                font-size: 1.5rem;
            }

            .text-info p {
                padding-top: 10px;
            }

            .text-info a {
                color: #a21129;
                text-decoration: none;
                transition: color ease-in .3s;
            }

                .text-info a:active,
                .text-info a:hover {
                    color: #353b48;
                }

        /* media queries */
        @media screen and (min-width:990px) {
            .login-img,
            .login-form {
                padding: 5%;
            }

                .login-form #company-name {
                    display: inline;
                }

                .login-form h1 {
                    font-size: 3rem;
                }

                .login-form i {
                    font-size: 2.5rem;
                    vertical-align: super;
                }

            .login-img {
                width: 50%;
                background: linear-gradient(to bottom, rgb(37 26 96 / 74%), rgb(84 181 79 / 80%)), url(https://images.unsplash.com/photo-1521737711867-e3b97375f902?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80); background-position: center;
                background-size: cover;
                display: flex;
                flex-direction: column;
                justify-content: flex-end;
                align-items: flex-end;
            }

                .login-img h1,
                .login-img p {
                    width: 300px;
                }

                .login-img h1 {
                    color: #f5f6fa;
                    font-size: 3.5rem;
                }

                .login-img p {
                    color: #bebebe;
                    line-height: 1.5;
                }
        }
    </style>
      <script type="text/javascript">
function ShowMessage(message, messagetype) {
    var cssclass;
    debugger;
switch (messagetype) {
case 'Success':
cssclass = 'alert alert-success'
break;
case 'Error':
cssclass = 'alert alert-danger'
break;
case 'Warning':
cssclass = 'alert alert-warning'
break;
default:
cssclass = 'alert alert-info'
}
$('#alert_container').append('<div id="alert_div" style="margin:0 0.5%; -webkit-box-shadow:3px 4px 6px #999;" class="' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + message + '</strong></div>');
setTimeout(function() { $("#alert_container").hide(); }, 2000);}
</script>
         
</head>

    <body>
       <div id="alert_container"></div>
        <section>
            <div class="login-form">
                <img src="images/logo.jpg" />

                <form runat="server">
                    <label for="name">Username</label>
                    <asp:TextBox ID="txtuname" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname"
                        Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" ValidationGroup="login" SetFocusOnError="true" ForeColor="Red"
                        CssClass="validate"></asp:RequiredFieldValidator>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>

                    <label for="password">Password</label>
                    <asp:TextBox ID="txtpwd" class="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
                        Display="Dynamic" ErrorMessage="Please password" Text="(*) Required" ValidationGroup="login" SetFocusOnError="true" ForeColor="Red"
                        CssClass="validate"></asp:RequiredFieldValidator>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>

                     <asp:Button ID="Button1" class="button" ValidationGroup="login" OnClick="btnlogin_Click" runat="server" Text="Login" />
                </form>

                <div class="text-info">
                    <a href="Forgotpassword.aspx">Forgot password?</a>
                   
                </div>
            </div>
            <div class="login-img">
              
            </div>
        </section>
    
</body>

</html>