<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transction.aspx.cs" Inherits="FirstProject.transction" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <script type="text/javascript">




        function SelectAll(id) {
            //var frm1 = document.getElementById('<%= this.gridCrud.ClientID %>');--%>
            var frm = document.forms[0];
            for (i = 0; i < frm.elements.length; i++) {
                if (frm.elements[i].type == "checkbox") {
                    frm.elements[i].checked = document.getElementById(id).checked;
                }
            }
        }
        function funConfirm() {
            var frm = document.forms[0];
            var checked = '';
            for (i = 0; i < frm.elements.length; i++) {
                if (frm.elements[i].type == "checkbox") {
                    if (frm.elements[i].checked == true) {
                        checked = 'yes';
                    }
                }
            }
            if (checked == 'yes') {
                var a = confirm('Are you sure to Execute?');
                if (a == true) {
                    return true;
                }
                else {
                    return false;
                }
            }
            else {
                alert("Please check mark any one.");
                return false;
            }
        }




    </script>
    <style>
        .header {
            font-size: 35px;
            text-align: center;
            background-color: /*skyblue*/;
            color: black;
        }
    </style>

    <title>myfirstpage</title>
    <!-- Bootstrap Core CSS -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <script src="../js/jquery.js"></script>
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-select.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <%--  <div class="col-lg-12 "></div>
            <div class="form-group"></div>--%>
        <div class="col-lg-12 " style="text-align: center; background-color: /*skyblue*/">
            <div>
                <div class="form-group"></div>
                <label class="header">Crud Form</label>
            </div>
        </div>
        <div class="col-lg-12 col-lg-12 ">
            <div class="form-group"></div>

            <div class="form-group">
                <asp:Button ID="btnAdd" runat="server" Text="Add Record" Class="btn btn-primary active" OnClick="btnAdd_Click" />
                <asp:Button ID="btnupload" runat="server" Text="Upload File" Class="btn btn-primary active" OnClick="btnupload_Click" />
                <asp:Button ID="btnsearch" runat="server" Text="Search" Class="btn btn-primary active" OnClick="btnsearch_Click" />
                <asp:Button ID="btnlogout" runat="server" Text="LogOut" Class="btn btn-primary active" Style="float: right" OnClick="btnlogout_Click" />


                <asp:Label ID="lbluser" runat="server"></asp:Label>


            </div>
        </div>

        <div id="formAdd" style="display: none;" runat="server">

            <div class="col-lg-6 col-md-6">
                <div class="form-group">
                    <label id="lblxpin" runat="server">XPIN</label>
                    <asp:TextBox ID="txtxpin" runat="server" Class="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-lg-6 col-md-6">
                <div class="form-group">
                    <label id="lblcusref" runat="server">Customer Reference No.</label>
                    <asp:TextBox ID="txtcusref" runat="server" Class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="form-group">
                    <label id="lblbenName" runat="server">Beneficiary Name</label>
                    <asp:TextBox ID="txtbeneficiaryName" runat="server" Class="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-lg-6 col-md-6">
                <div class="form-group">
                    <label id="lblSendname" runat="server">Sender Name</label>
                    <asp:DropDownList ID="DropDownSender" Class="form-control" runat="server">
                    </asp:DropDownList>
                </div>
            </div>

            <div class="col-lg-6 col-md-6">
                <div class="form-group">
                    <label id="lblFrmdate" runat="server">From Date</label>
                    <asp:TextBox ID="txtfrmdate" runat="server" Class="form-control" placeholder="From Date" AutoPostBack="true"></asp:TextBox>


                    <%--                <asp:CalendarExtender ID="txtFromDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtFromDate">
                        </asp:CalendarExtender>
                </div>--%>
                </div>
            </div>


            <div class="col-lg-6 col-md-6">
                <div class="form-group">
                    <label id="lblTodate" runat="server">To Date</label>
                    <asp:TextBox ID="txttodate" runat="server" Class="form-control" placeholder="To Date" AutoPostBack="true"></asp:TextBox>


                    <%--                                     <asp:CalendarExtender ID="txtToDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtToDate">
                        </asp:CalendarExtender>--%>
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <asp:Button ID="btnSave" runat="server" Text="Save" Class="btn btn-primary Active" OnClick="btnSave_Click" />
                    <asp:Button ID="btndelete" runat="server" Text="Delete" Class="btn btn-primary Active" OnClick="btndelete_Click" />
                    <br />

                </div>
            </div>
        </div>
        <div>
            <div class="col-lg-12 col-lg-12"></div>
            <div class="form-group">
                <asp:FileUpload ID="FileUploaded" runat="server" Class="btn btn-default" Visible="false" />
                <asp:Button ID="uploadbtn" Text="Upload File" runat="server" OnClick="uploadbtn_Click" Visible="false" Class="btn btn-default" />
                <asp:Label ID="lblmesg" runat="server"></asp:Label>
                <%--<asp:GridView ID="gridalldata" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:TemplateField HeaderText="XPIN">
                            <ItemTemplate>
                                <asp:Label ID="lblxpin" runat="server" Text='<%# Eval("xpin") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Cusrefrence_number">
                            <ItemTemplate>
                                <asp:Label ID="lblcusref" runat="server" Text='<%# Eval("Cusrefrence_number") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bneficiency_name">
                            <ItemTemplate>
                                <asp:Label ID="lblbeneficinet" runat="server" Text='<%# Eval("Bneficiency_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sender_name">
                            <ItemTemplate>
                                <asp:Label ID="lblsender" runat="server" Text='<%# Eval("Sender_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FromDate">
                            <ItemTemplate>
                                <asp:Label ID="lblfrmdate" runat="server" Text='<%# Eval("FromDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ToDate">
                            <ItemTemplate>
                                <asp:Label ID="lbltodate" runat="server" Text='<%# Eval("ToDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>--%>
            </div>
        </div>
        <div class="col-lg-12 col-md-12">
            <div class="text-left">

                <asp:GridView ID="gridCrud" Width="100%" runat="server" AutoGenerateColumns="False" PageSize="20" CellPadding="4"
                    ForeColor="#333333" GridLines="None"
                    OnRowCancelingEdit="gridCrud_RowCancelingEdit"
                    OnRowEditing="gridCrud_RowEditing"
                    OnRowUpdating="gridCrud_RowUpdating" OnRowDataBound="gridCrud_RowDataBound">



                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="XPIN">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtxpin" runat="server" Text='<%# Eval("xpin") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblxpin" runat="server" Text='<%# Eval("xpin") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer Refrence No.">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcusrefno" runat="server" Text='<%# Eval("Cusrefrence_number") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblcusrefno" runat="server" Text='<%# Eval("Cusrefrence_number") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Beneficiary Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtBeneficiaryname" runat="server" Text='<%# Eval("Bneficiency_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblbenfname" runat="server" Text='<%# Eval("Bneficiency_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sender Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtsendername" runat="server" Text='<%# Eval("Sender_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblsendername" runat="server" Text='<%# Eval("Sender_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="From date">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtfromdate" runat="server" Text='<%# Eval("FromDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblfromdate" runat="server" Text='<%# Eval("FromDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="To date">
                            <EditItemTemplate>
                                <asp:TextBox ID="txttodate" runat="server" Text='<%# Eval("ToDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbltodate" runat="server" Text='<%# Eval("ToDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Label ID="lblMessage" runat="server" Text='<%# Eval("Status")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <EditItemTemplate>
                                <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />
                                <asp:Button ID="btncancel" runat="server" Text="Cancel" CommandName="Cancel" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="Ckb_Select" runat="server" />
                            </ItemTemplate>
                            <HeaderTemplate>
                                <asp:CheckBox ID="Ckb_SelectALL" runat="server" />
                            </HeaderTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField></asp:TemplateField>
                    </Columns>


                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />


                </asp:GridView>
            </div>
        </div>



        <%-- <div class="col-lg-1 col-md-1 ">
            <div class="form-group">
                <label>Amount</label>

                <asp:DropDownList ID="DropDownListAmount" runat="server" CssClass="form-control">
                <asp:ListItem Value=">">></asp:ListItem>
                <asp:ListItem Value=">"><</asp:ListItem>
                <asp:ListItem Value=">">=</asp:ListItem>
                </asp:DropDownList>
                
            </div>
            </div>--%>
    </form>
</body>
</html>
