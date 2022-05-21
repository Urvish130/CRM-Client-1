<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="userregister.aspx.cs" Inherits="userregister" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .modalBackground {
            background-color: black;
            filter: alpha(opacity=90);
            opacity: 0.8;
            z-index: 99 !important;
        }

        .modalPopup2 {
            background-color: #FFFFFF;
            border: 3px solid black;
            padding-top: 10px;
            padding-left: 10px;
            width: 60%;
            height: auto;
            z-index: 100 !important;
        }

            .modalPopup2 .heading {
                background-color: white;
                /*height: 30px;*/
                /*color: red;*/
                /*line-height: 30px;*/
                text-align: center;
                font-weight: bold;
            }

        .closeimg2 {
            position: absolute;
            top: 1px;
            right: 1px;
            display: block;
            width: 30px;
            height: 30px;
            font-size: 30px;
            /*text-indent: -9999px;*/
        }
    </style>
    <link href="https://code.jquery.com/ui/1.12.0/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <script>
        var eventsFired = 0;
        $(document).ready(function () {
            $("#txtToDate").val($.datepicker.formatDate("dd/mm/yy", new Date()));
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <section class="content-header">
            <h1>User Rights Register</h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="#">User Rights</a></li>
                <li class="active">User Rights Register</li>
                <asp:Label ID="lblcomno" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
            </ol>
        </section>
        <hr />
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group pull-right">
                        <asp:LinkButton ID="btncreate" runat="server" OnClick="btncreate_Click" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Create New</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="grduserreg" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                            AutoGenerateColumns="False" BorderWidth="1px" ShowHeaderWhenEmpty="true" OnRowCommand="grduserreg_RowCommand"
                                            CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                            CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="100" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                            <AlternatingRowStyle BackColor="White" />
                                            <PagerStyle CssClass="csspager" />
                                            <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField HeaderText="No" Visible="false">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblsrno" runat="server" Text='<%# Eval("Noseries") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Employee Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblendDate" runat="server" Text='<%# Eval("Ename") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Reporting Person">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblstrtDate" runat="server" Text='<%# Eval("Report") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                            runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Noseries") %>'
                                                            CommandName="editdata" CausesValidation="False" />
                                                    </ItemTemplate>
                                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

