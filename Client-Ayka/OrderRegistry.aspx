<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="OrderRegistry.aspx.cs" Inherits="OrderRegistry" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=grddata]'   ).DataTable({
                "responsive": true,
               
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="content-wrapper">
    <section class="content-header">
            <h1>Order registry</h1>
            <ol class="breadcrumb">
                <li><a href="Default.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="Demo.master">Order</a></li>
                <li class="active">Order registry</li>
                  <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
            </ol>
        </section>
           <section class="content">
          <div class="row">
                <div class="col-md-12">
                    <div class="box">
                         <div class="box-body">
                        <div class="row">
                            <div class="form-group ">
                       
                            <div class="col-md-2">
                                <label class="control-label">
                                    From Date:
                                </label>
                                <asp:TextBox ID="txtfdate" onkeydown="return false;" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                  <asp:CalendarExtender ID="CalendarExtender3" TargetControlID="txtfdate" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                            </div>
                            <div class="col-md-2">
                                <label class="control-label">
                                    To Date:
                                </label>
                                <asp:TextBox ID="txttdate" onkeydown="return false;" class="form-control" TabIndex="2" runat="server"></asp:TextBox>
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
                            <div class="col-md-4" style="margin-top: 15px">
                                   <asp:LinkButton ID="btnfilter" style="margin-top:-10%" runat="server" TabIndex="4" OnClick="btnfilter_Click" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Filter</asp:LinkButton>
                                <asp:LinkButton ID="btnreset" style="margin-top:-10%"  runat="server" TabIndex="5" OnClick="btnreset_Click" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                            <asp:ImageButton ID="btnExportExcel" style="margin-top:15px;margin-left:45px;" Width="47px" Height="47px" OnClick="btnExportExcel_Click" ImageUrl="~/images/Excel.png" runat="server" />
                            <asp:ImageButton ID="btnExportPDF" Width="47px" Height="47px" OnClick="btnExportPDF_Click" ImageUrl="~/images/pdf.jpg" runat="server" />
                            <asp:ImageButton ID="btnExportWord" Width="47px" Height="47px" OnClick="btnExportWord_Click" ImageUrl="~/images/Word.png" runat="server" />
                        <asp:LinkButton ID="btncreate" runat="server" OnClick="btncreate_Click" TabIndex="19" CssClass="btn btn-bitbucket btn-flat" style="margin-bottom:25px;"><i class="fa fa-save"></i>&nbsp;Create Order</asp:LinkButton>

                       </div>
                        
                    </div>
                            </div>
                    </div>
                    
                </div>
              </div>
            </div>
            <div class="row">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <asp:GridView ID="grddata" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                    AutoGenerateColumns="False" BorderWidth="1px" ShowHeaderWhenEmpty="true" OnRowCommand="grddata_RowCommand" OnRowCreated="grddata_RowCreated"
                                    CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                    CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                    <AlternatingRowStyle BackColor="White" />
                                    <PagerStyle CssClass="csspager" />
                                    <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                    <Columns>
                                     <asp:TemplateField HeaderStyle-CssClass="" HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                    runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("NoSeries") %>'
                                                    CommandName="editdata" CausesValidation="False" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderStyle-CssClass="" HeaderText="Print">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btnprint" ImageUrl="images/download1.png" ToolTip="Click here to Print"
                                                    runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Noseries") %>'
                                                    CommandName="printdata" CausesValidation="False" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblno" runat="server" Text='<%# Eval("OrderNo") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Date">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldate" runat="server" Text='<%# Eval("OrderDate") %>'></asp:Label>
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
                                        <asp:TemplateField HeaderText="Contact Person">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcontact" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
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
                                     

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
 
              </div>

</asp:Content>

