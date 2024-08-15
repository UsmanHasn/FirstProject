<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="FirstProject.Forms.Customer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Form</title>
    <style>
        .header {
            font-size: 25px;
            text-align: center;
            /*//background-color: lightcoral;*/
            color: black
        }

        .btnlogout {
            color: black;
            text-align: right;
            /*//background-color: lightcoral;*/
        }
    </style>


    <!-- Bootstrap Core CSS -->

    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-select.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">



        <div class="col-md-12">
            <div class="form-group"></div>
            <div class="header">
                <label>MessageResend form</label>
                <%--<asp:Button ID="btnlogout" runat="server" Text="logout" Style="float: right; color: black; /*background-color: lightcoral;*/" OnClick="btnlogout_Click" />--%>
            </div>
        </div>


        <div class="col-md-12">
            <div class="form-group"></div>
            <div class="form-group">
                <asp:button id="btnadd" runat="server" text="add record" cssclass="btn btn-primary active" />
               <asp:button id="btnupload" runat="server" text="upload file" cssclass="btn btn-primary active" />
            </div>
        </div>
        <div id="addform" runat="server" style="display: none;">
            <div class="form-group">
                <div class="col-md-6" runat="server">
                    <label>Xpin</label>
                    <asp:TextBox ID="txtmesagetype" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6" runat="server">
                    <label>Customer#</label>
                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-6" runat="server">
                    <div class="form-group"></div>
                    <label>Beneficiaryname</label>
                    <asp:TextBox ID="txtbeneficiary" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-6" runat="server">
                    <div class="form-group"></div>
                    <label>Sendername</label>
                    <asp:TextBox ID="txtSender" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-6" runat="server">
                    <div class="form-group"></div>
                    <label>Fromdate</label>
                    <asp:TextBox ID="txtfromdate" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-6" runat="server">
                    <div class="form-group"></div>
                    <label>Todate</label>
                    <asp:TextBox ID="txttodate" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>



            <div class="col-md-12">
                <div class="form-group"></div>
                <div class="form-group">
                    <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-primary active" OnClick="btnupdate_Click" />
                    <asp:Button ID="btndelete" runat="server" Text="Delete" CssClass="btn btn-primary active" OnClick="btndelete_Click" />
                    &nbsp;<asp:Label ID="lblmesg" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="form-group"></div>
            <asp:GridView ID="gridmesgresnd" AutoGenerateColumns="False" Width="100%" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="XPIN">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtxpin" runat="server" Text='<%# Eval("xpin") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lblxpin" runat="server" Text='<%# Eval("xpin") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Cusrefrence#">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtxpin" runat="server" Text='<%# Eval("Cusrefrence_number") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="lblxpin" runat="server" Text='<%# Eval("Cusrefrence_number") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="BeneName">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtxpin" runat="server" Text='<%# Eval("Bneficiency_name") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lblxpin" runat="server" Text='<%# Eval("Bneficiency_name") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SenderName">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtxpin" runat="server" Text='<%# Eval("Sender_name") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lblxpin" runat="server" Text='<%# Eval("Sender_name") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FromDate">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtxpin" runat="server" Text='<%# Eval("FromDate") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lblxpin" runat="server" Text='<%# Eval("FromDate") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                       <asp:TemplateField HeaderText="ToDate">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtxpin" runat="server" Text='<%# Eval("ToDate") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lblxpin" runat="server" Text='<%# Eval("ToDate") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
