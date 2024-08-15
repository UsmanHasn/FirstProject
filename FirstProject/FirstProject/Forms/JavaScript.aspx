<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JavaScript.aspx.cs" Inherits="FirstProject.Forms.JavaScript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Javascript Page</title>

    <script type="text/javascript">

        function submit() {
            debugger;
            alert("Login Successfully");
            //var usrname = "";
            var UsrName = document.getElementById("username").value;
            var Paswrd = document.getElementById("Password").value;

            if (UsrName === "Usman" && Paswrd === "123") {

                alert("Login Successfully");
            }
            else {
                alert("login failed");
            }

        }
            //console.log(Number(UsrName) +' '+ Number(Paswrd));

            //document.getElementById("btnlogin").onclick = function newvalue() {
            //    debugger;

            //alert(UsrName.value + '' + Paswrd.value);

    </script>
    <style>
        /*.login {
            font-size: 30px;
            text-align: center;
            background-color: lightcoral;
            height: 60px;
            width: 100%;
            top: 50%;
        }*/

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
    <!-- Bootstrap Core CSS -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <script src="../js/jquery.js"></script>
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/javascript" />
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
                            <%-- <label>loginForm</label>--%>
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
                    <input type="text" id="username" class="form-control" placeholder="Usrid"   />
                    <%--<asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="loginid"></asp:TextBox>--%>
                </div>
                <div class="col-md-4"></div>
            </div>

            <div class="col-sm-12">
                <div class="form-group"></div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>password</label>
                        <input type="text" id="Password" class="form-control" placeholder="Paswrd" />
                        <button id="btnlogin" runat="server" onclick="submit();">Login</button>


                        <%--<asp:TextBox ID="txtpaswrd" runat="server" Class="form-control" placeholder="Passwrd" TextMode="Password"></asp:TextBox>--%>
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
                        <%--<button id="btnlogin" runat="server" onclick="submit();">Login</button>--%>
                        <%--<asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-success btn-block active" onclick="submit()" Font-Size="Medium" />
                    <%--<asp:Label ID="lblError" runat="server" Text=""></asp:Label>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-4"></div>--%>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
