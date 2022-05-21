<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="InquiryRegistry.aspx.cs" Inherits="InquiryRegistry" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
       <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {

            $('[id*=grddata]').DataTable({
                "responsive": true,



            });

        });
    </script>
    <style>
        .btn.focus, .btn:focus, .btn:hover {
            color: white;
            text-decoration: none;
        }
    </style>
    <script type="text/javascript">
        $("[src*=plus]").live("click", function () {
            debugger;
            $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
            $(this).attr("src", "images/minus.png");
        });
        $("[src*=minus]").live("click", function () {
            debugger;
            $(this).attr("src", "images/plus.png");
            $(this).closest("tr").next().remove();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Inquiry  Register    
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="#">Master</a></li>
                <li class="active">Inquiry  Register</li>
                <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group pull-right">
                        <asp:LinkButton ID="btncreate" runat="server" OnClick="btncreate_Click" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Create Inquiry</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="box">
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-2">
                                <label class="control-label">
                                    From Date:
                                </label>
                                <asp:TextBox ID="txtfdate" onkeydown="return false;" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtfdate" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                            </div>
                            <div class="col-md-2">
                                <label class="control-label">
                                    To Date:
                                </label>
                                <asp:TextBox ID="txttdate" onkeydown="return false;"  class="form-control" TabIndex="2" runat="server"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="txttdate" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                            </div>
                            <div class="col-md-2">
                                <label class="control-label">
                                    Customer:
                                </label>
                                <asp:DropDownList ID="dpcust" runat="server" data-placeholder="Select Customer" CssClass="form-control select2" TabIndex="3"></asp:DropDownList>
                            </div>
                            <div class="col-md-2">
                                <label class="control-label">
                                    Employee:
                                </label>
                                <asp:DropDownList ID="ddlemployee" runat="server" data-placeholder="Select Employee" CssClass="form-control select2" TabIndex="3"></asp:DropDownList>
                            </div>
                            <div class="col-md-4" style="margin-top: 25px;">
                                <asp:LinkButton ID="btnfilter" runat="server" Style="margin-bottom: 50px;" TabIndex="4" OnClick="btnfilter_Click" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Filter</asp:LinkButton>
                                <asp:LinkButton ID="btnreset" runat="server" TabIndex="5" Style="margin-bottom: 50px;" OnClick="btnreset_Click" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                <asp:ImageButton ID="btnExportExcel" Style="margin-left: 20px" Width="47px" Height="47px" OnClick="btnExportExcel_Click" ImageUrl="~/images/Excel.png" runat="server" />
<%--                                <asp:ImageButton ID="btnExportPDF" Width="47px" Height="47px" OnClick="btnExportPDF_Click" ImageUrl="~/images/pdf.jpg" runat="server" />--%>
                                <asp:ImageButton ID="btnExportWord" Width="47px" Height="47px" OnClick="btnExportWord_Click" ImageUrl="~/images/Word.png" runat="server" />
                            </div>
                        </div>



                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="grddata" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                        AutoGenerateColumns="False" BorderWidth="1px" ShowHeaderWhenEmpty="true" OnRowCommand="grddata_RowCommand" OnRowCreated="grddata_RowCreated"
                                        CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2" OnRowDataBound="grddata_RowDataBound" DataKeyNames="Noseries"
                                        CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                        <AlternatingRowStyle BackColor="White" />
                                        <PagerStyle CssClass="csspager" />
                                        <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                        <Columns>

                                            <asp:TemplateField HeaderText="Detail">
                                                <ItemTemplate>
                                                    <img alt='' style='cursor: pointer' src='images/plus.png' />
                                                    <asp:Panel ID="pnlOrders" runat="server" style="display:none">
                                                        <asp:GridView ID="BOMGrid" runat="server" AutoGenerateColumns="False" BorderWidth="1px" BackColor="White" ShowHeaderWhenEmpty="true"
                                                            CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                                            CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                                            <Columns>
                                                                <asp:BoundField ItemStyle-Width="150px" DataField="Itemname" HeaderText="Product" />
                                                                <asp:BoundField ItemStyle-Width="150px" DataField="Qty" HeaderText="Qty" />
                                                                <asp:BoundField ItemStyle-Width="150px" DataField="MachineType" HeaderText="Machine Type" />
                                                                <asp:BoundField ItemStyle-Width="150px" DataField="ApplicationType" HeaderText="Application Type" />
                                                                <asp:BoundField ItemStyle-Width="150px" DataField="CompressorType" HeaderText="Compressor Type" />
                                                                <asp:BoundField ItemStyle-Width="150px" DataField="Inqiurypowerunitconsuption" HeaderText="Power Unit Consuption" />
                                                                <asp:BoundField ItemStyle-Width="150px" DataField="Inqiuryavergedailyhours" HeaderText="Average daily hours" />
                                                                <asp:BoundField ItemStyle-Width="150px" DataField="Inqiurydaysrunperyear" HeaderText="Days run per year" />
                                                                <asp:BoundField ItemStyle-Width="150px" DataField="InqiuryelectricityrateperKWH" HeaderText="Electricty rate per KWH" />
                                                            </Columns>
                                                        </asp:GridView>
                                                    </asp:Panel>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderStyle-CssClass="" HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                        runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Noseries") %>'
                                                        CommandName="editdata" CausesValidation="False" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderStyle-CssClass="" HeaderText="Convert">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnconvert" ImageUrl="images/viewIcon.png" ToolTip="Click here to Convert"
                                                        runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Noseries") %>'
                                                        CommandName="convertquotation" CausesValidation="False" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="No">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblno" runat="server" Text='<%# Eval("InqiuryNo") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Date">
                                                <ItemTemplate>

                                                    <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Inquirydate") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <%--<asp:TemplateField HeaderText="Customer Group">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcustgroup" runat="server" Text='<%# Eval("Custgroup") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>--%>
                                            <asp:TemplateField HeaderText="Customer">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcust" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <%--<asp:TemplateField HeaderText="Contact Person">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcontact" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>--%>
                                            <asp:TemplateField HeaderText="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblContactEmail" runat="server" Text='<%# Eval("ContactEmail") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Mobileno">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblmno" runat="server" Text='<%# Eval("ContactMno1") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Source">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblsource" runat="server" Text='<%# Eval("Source") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblStatusName" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Next Follow Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblfollowdate" runat="server" Text='<%# Eval("NextFollowDate") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Follow Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblfollowsatus" runat="server" Text='<%# Eval("FollowStatus") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Difference In Days">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblDiff" runat="server" Text='<%# Eval("Diff") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Difference In Days" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblCreate" runat="server" Text='<%# Eval("CreateBy") %>'></asp:Label>
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

        </section>
    </div>
</asp:Content>

