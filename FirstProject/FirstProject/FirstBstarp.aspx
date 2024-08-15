<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstBstarp.aspx.cs" Inherits="FirstProject.FirstBstarp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .header {
            font-size: 35px;
            text-align: center;
            background-color: skyblue;
            color: black;
        }
    </style>




    <title>my_first_page </title>
    <!-- Bootstarp css apply -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Bootstarp js apply --->
</head>
<body>
    <form runat="server">

        <div class="container-fluid">
            <div class="form-group"></div>

            <div class="header">
                <label>Employee Form</label>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="form-group"></div>
                    <asp:Button ID="btnadd" runat="server" Text="Add Record" CssClass="btn btn-primary active" OnClick="btnadd_Click" />
                    <asp:Button ID="btnupload" runat="server" Text="Upload File " CssClass="btn btn-primary active" OnClick="btnupload_Click" />

                </div>
            </div>

            <div id="formAdd" style="display: none" runat="server">
                <div class="row">
                    <div class="form-group"></div>
                    <div class="col-md-6" runat="server">

                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Label">Employee id</asp:Label>
                            <asp:TextBox ID="txtemployeeid" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>



                    <div class="col-md-6" runat="server">

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Label">Employee Name</asp:Label>
                            <asp:TextBox ID="txtemployeename" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6" runat="server">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Label">Employee Frmdate</asp:Label>
                            <asp:TextBox ID="txtemployeeFdate" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>


                    <div class="col-md-6" runat="server">
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Label">Employee Todate</asp:Label>
                            <asp:TextBox ID="txtemployeeTdate" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" runat="server">
                        <div class="form-group">
                            <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success active" />
                            <asp:Button ID="btndelete" runat="server" Text="Delete " CssClass="btn btn-success active" />
                            <asp:Button ID="btnreset" runat="server" Text="Reset " CssClass="btn btn-success active" />

                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <div class="form-group"></div>
                <div class="col-md-6" runat="server">
                    <div class="form-group">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn btn-default active" Visible="false" />
                        <asp:Button ID="uploadbtn" runat="server" Text="File Upload " CssClass="btn btn-default active" Visible="false" />
                    </div>
                </div>
            </div>

           
            </div>


        


    </form>

</body>
</html>
