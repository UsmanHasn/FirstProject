<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FirstProject.Forms.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .login {
            font-size: 30px;
            text-align: center;
            background-color: lightcoral; 
            height: 60px;
            width: 100%;
            top: 50%;
        }

        .bg-img {
            /* The image used */
            min-height: 380px;
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }
    </style>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-select.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top: 100px;">
            <div class="col-sm-12">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group"></div>



                    <div class="form-group">
                        <div class="login">
                            <label>loginForm</label>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
            <div class="form-group"></div>
            <div class="col-sm-12">
                <div class="form-group"></div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <label>Login id</label>
                    <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="loginid"></asp:TextBox>
                </div>
                <div class="col-md-4"></div>
            </div>

            <div class="col-sm-12">
                <div class="form-group"></div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>password</label>
                        <asp:TextBox ID="txtpaswrd" runat="server" Class="form-control" placeholder="Passwrd" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="form-group"></div>

            <div class="col-sm-12">
                <div class="form-group">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class="form-group"></div>
                        <asp:Button ID="btnsave" runat="server" Text="Login" CssClass="btn btn-success btn-block active" OnClick="btnsave_Click" Font-Size="Medium" />
                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
