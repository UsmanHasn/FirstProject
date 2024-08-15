<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="learning_pratice.aspx.cs" Inherits="FirstProject.learning_pratice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .header {
            background-color: #CCCCCC;
            font-size: 35px;
            text-align: center;
        }
    </style>
    <title>Lerning_project</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <script src="../js/jquery.js"></script>
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-select.min.js"></script>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group"></div>
                    <div class="header">
                        <label>Customer Form</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group"></div>
                    <asp:Button ID="btnAdd" runat="server" Text="Add Record" CssClass="btn btn-primary active" />
                    <asp:Button ID="btnUpload" runat="server" Text="Upload File" CssClass="btn btn-primary active" />
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group"></div>
                    <asp:Label ID="lblstudentid" runat="server" Text="Student_id"></asp:Label>
                    <asp:TextBox ID="txtstudentid" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-lg-6">
                    <div class="form-group"></div>
                    <asp:Label ID="lblstudentCus" runat="server" Text="StudentCus#"></asp:Label>
                    <asp:TextBox ID="txtstudentCus" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group"></div>
                    <asp:Label ID="lblstudentname" runat="server" Text="Studentname"></asp:Label>
                    <asp:TextBox ID="txtstudentname" runat="server" CssClass="form-control"></asp:TextBox>

                </div>

                <div class="col-lg-6">
                    <div class="form-group"></div>
                    <asp:Label ID="lblstudentfname" runat="server" Text="Studentname"></asp:Label>
                    <asp:TextBox ID="txtstudentfname" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group"></div>
                    <asp:Label ID="lblstudentfrmdate" runat="server" Text="Studentfrmdate"></asp:Label>
                    <asp:TextBox ID="txtstudentfrmdate" runat="server" CssClass="form-control"></asp:TextBox>

                </div>

                <div class="col-lg-6">
                    <div class="form-group"></div>
                    <asp:Label ID="lblstudenttodate" runat="server" Text="Studentodate"></asp:Label>
                    <asp:TextBox ID="txtstudenttodate" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
            </div>

            <div class="row">
                <div class="form-group">  </div>
                    <div class="col-lg-12">
                        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-info active" />
                        <asp:Button ID="btndelete" runat="server" Text="Delete" CssClass="btn btn-info active" />
                        <asp:Button ID="btnreset" runat="server" Text="Reset" CssClass="btn btn-info active" />
                    </div>
              
            </div>
        </div>
    </form>

</body>
</html>
