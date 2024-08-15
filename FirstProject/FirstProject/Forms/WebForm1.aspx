<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FirstProject.Forms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My First Page:</title>
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
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-select.min.js"></script>

    <script type="text/javascript">
        //function submit() {


        //    debugger;
        //    //alert("Successfully Login");
        //    //var usrname = "";
        //    var UsrName = document.getElementById("username").value;
        //    var Paswrd = document.getElementById("Password").value;
        //    //console.log(Number(UsrName) + Number(Paswrd));

        //    //document.getElementById("btnlogin").onclick = function newvalue() {
        //    //    debugger;

        //    alert(UsrName.value + '' + Paswrd.value);

        function calculate() {
            debugger;
            let grade = "";
            let obtainedMark = document.getElementById("abc").value;
            let total = 850;

            let per = (obtainedMark / total) * 100;

            if (per >= 80) {
                grade += "A+";
                alert(" A+ grade" + ' ' + per)

            }
            else if (per >= 70) {
                grade += "A";
                alert('A grade' + ' ' + per);

            }
            else {
                grade += "Less than B";
                alert('Less than B' + ' ' + per);
            }
        }

        let data = [
            { id: "1", name = "Ali", Class="7th" },
            { id: "2", name = "Usman", Class="8th" },
        ];
        let rows = "";
        for (var let i = 0; i < data.length; i++) {
            rows = `<tr>
                <td>${data[i].id}</td>
                <td>${data[i].id}</td>
                <td>${data[i].id}</td>
                
            </tr>`;
        }
        console.log(rows);
        document.getElementByTagName('tbody')[0].innerHTML = rows;
    </script>


    <%--//document.getElementById("percentage").innerHTML = per;
            //document.getElementById("grade").innerHTML = grade;
        //}--%>
</head>
<body>
    <form id="form1" runat="server">
        <%-- <asp:Button ID="btninhertiance" runat="server" Text="Inheritance" Width="211px" OnClick="btninhertiance_Click" /><br />
        <asp:Button ID="btnsavearray" runat="server" OnClick="btnsavearray_Click" Text="SaveArray" Width="211px" /><br />
        <asp:Button ID="btnabstract" runat="server" Text="Abstraction" Width="211px" OnClick="btnabstract_Click" /><br />
        <asp:Button ID="btnencapsulation" runat="server" Text="Encapsulation" Width="211px" OnClick="btnencapsulation_Click" /><br />--%>

        <asp:TextBox ID="abc" runat="server" OnTextChanged="abc_TextChanged"></asp:TextBox>

        <%--<asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="calculate()" />--%>
        <div>
            <button id="btncalaculate" runat="server" text="Calculate" onclick="calculate();">Submit</button>
        </div>
        <br />
        <%--<div style="margin-top: 100px;">
            <div class="col-sm-12">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group"></div>



                    <div class="form-group">
                        <div class="login">
                            <%-- <label>loginForm</label>
                      <%--  </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>

            <div class="form-group"></div>
            <%--<div class="col-sm-12">
                <div class="form-group"></div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <label>Login id</label>
                    <input type="text" id="username" class="form-control" />
                    <%--<asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="loginid"></asp:TextBox>
                <%--</div>
               <%-- <div class="col-md-4"></div>
            </div>--%>

        <%--<div class="col-sm-12">
                <div class="form-group"></div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>password</label>
                        <input type="password" id="Password" class="form-control" placeholder="Paswrd" />

                        <%--<asp:TextBox ID="txtpaswrd" runat="server" Class="form-control" placeholder="Passwrd" TextMode="Password"></asp:TextBox>--%>
        <%--  </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="form-group"></div>

            <div class="col-sm-12">
                <div class="form-group">
                    <div class="col-md-4"></div>--%>
        <%--<div class="col-md-4">
                        <%--<div class="form-group"></div>--%>
        <%--<button id="btnlogin" runat="server" onclick="calculate();">Login</button>--%>
        <%--<asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-success btn-block active" onclick="submit()" Font-Size="Medium" />--%>
        <%--<asp:Label ID="lblError" runat="server" Text=""></asp:Label>--%>
        <%--</div>--%>
        <%--<div class="col-md-4"></div>--%>
        <%--</div>
            </div>
        </div>--%>
        <%-- <br />
        <div>
            <button id="btnlogin" runat="server" text="Submit">Login</button>--%>
        <%--<button id="btnlogin" runat="server" type="button" text="Login" onclick="submit();">Login</button>--%>

        <%--<asp:Button ID="Button1" runat="server" Text="Encapsulation" Width="" onclick="submit();" />--%><br />

        <%-- <p id="LoginId"></p>
        <p id="LoginPswd"></p>
        <p id="tablePrint"></p>
        <br />--%>
    </form>

</body>
</html>
