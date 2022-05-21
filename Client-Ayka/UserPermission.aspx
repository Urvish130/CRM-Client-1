<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="UserPermission.aspx.cs" Inherits="UserPermission" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

         <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function ShowMessage(message, messagetype) {
            var cssclass;
            switch (messagetype) {
                case 'Success':
                    cssclass = 'alert-success'
                    break;
                case 'Error':
                    cssclass = 'alert-danger'
                    break;
                case 'Warning':
                    cssclass = 'alert-warning'
                    break;
                default:
                    cssclass = 'alert-info'
            }
            $('#alert_container').append('<div id="alert_div" style="margin: 0 0.5%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="hfSMID" runat="server" />
    <asp:HiddenField ID="hfsrno" runat="server" />
    <asp:HiddenField ID="hfMaxEntryNo" runat="server" />
    <div class="content-wrapper">
        <section class="content-header">
            <h1>User Rights Entry</h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="userregister.aspx">User Rights</a></li>
                <li class="active">User Rights Entry</li>
                <asp:Label ID="lblcomno" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                          <div id="alert_container"></div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-3 form-group">
                                    <label>No:</label>
                                    <asp:TextBox ID="txtinqno" CssClass="form-control" Enabled="false" runat="server" TabIndex="1"></asp:TextBox>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label>
                                        Date: <span class="required">* </span>
                                    </label>
                                    <asp:TextBox ID="txtdate" onkeydown="return false;" CssClass="form-control" Enabled="false" ValidationGroup="vgMain" TabIndex="2" runat="server" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender1" PopupButtonID="ibtnclass" TargetControlID="txtDate" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDate" ValidationGroup="vgMain"
                                        Display="Dynamic" ErrorMessage="Please Enter Date" Text="(*) Required" ForeColor="Red" SetFocusOnError="true"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ControlToValidate="txtDate" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                                        ErrorMessage="Invalid date format." ForeColor="Red" SetFocusOnError="true" />
                                </div>
                                <div class="col-md-3 form-group">
                                    <label>
                                        Employee Name: <span class="required">* </span>
                                    </label>
                                    <asp:DropDownList ID="ddlEmpName" runat="server" AutoPostBack="true"  OnSelectedIndexChanged="ddlEmpName_SelectedIndexChanged" CssClass="form-control select2" ValidationGroup="vgMain" data-placeholder="Select Employee" TabIndex="3"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="vgMain" ControlToValidate="ddlEmpName"
                                        Display="Dynamic" ErrorMessage="Please Select Employee Name" ForeColor="Red" SetFocusOnError="true"
                                        CssClass="validate" InitialValue="NA"></asp:RequiredFieldValidator>
                                </div>

                                <div class="col-md-3 form-group">
                                    <label>
                                       Repoting To: 
                                    </label>
                                    <asp:DropDownList ID="Reportddl" runat="server" AutoPostBack="true"   CssClass="form-control select2" ValidationGroup="vgMain" data-placeholder="Select Employee" TabIndex="3"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="vgMain" ControlToValidate="Reportddl"
                                        Display="Dynamic" ErrorMessage="Please Select Employee Name" ForeColor="Red" SetFocusOnError="true"
                                        CssClass="validate" InitialValue="NA"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-4 form-group">
                                    <label>
                                        Role : <span class="required">* </span>
                                    </label>
                                    <asp:DropDownList ID="ddlRole"  Enabled="false" runat="server" CssClass="form-control select2" ValidationGroup="vgMain" data-placeholder="Select Role" TabIndex="3"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="vgMain" ControlToValidate="ddlrole"
                                        Display="Dynamic" ErrorMessage="Please Select Role" ForeColor="Red" SetFocusOnError="true"
                                        CssClass="validate" InitialValue="NA"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box box-primary">
                        <div class="box-body" id="tbldiv" runat="server" visible="false">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="false" AutoGenerateColumns="False" 
                                CssClass="table table-bordered dataTable no-footer" CellPadding="3" EditRowStyle-HorizontalAlign="Center" PageSize="15"
                                GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" ShowHeaderWhenEmpty="true" OnRowDataBound="GridView1_RowDataBound"
                                BorderWidth="2px" CellSpacing="1">
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <HeaderStyle BackColor="#205081" Font-Bold="True" ForeColor="#FFFFFF" />
                                <PagerStyle CssClass="csspager" BackColor="#205081" ForeColor="White" HorizontalAlign="Left" Font-Size="large" />
                                <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                <Columns>
                                    <asp:TemplateField HeaderText="Page Name">
                                        <ItemTemplate>
                                             <asp:Label ID="Label1" Visible="false" runat="server" Text='<%# Bind("RecordID") %>'></asp:Label>
                                            <asp:Label ID="lblpname" runat="server" Text='<%# Bind("PageName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Create">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="Chkcreate" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="View">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="Chkview" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="View All"  Visible="false">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="Chkviewall" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="Chkedit" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="Chkdelete" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Print">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="Chkprint" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="E-Mail">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="Chkmail" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="row">
                            <div class="col-md-12" style="text-align: right;">
                                 <asp:LinkButton ID="btnupdate" runat="server" Visible="false" TabIndex="14" CssClass="btn btn-bitbucket btn-flat" OnClick="btnupdate_Click" ValidationGroup="vgMain"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                                <asp:LinkButton ID="btnSave" runat="server" TabIndex="14" OnClick="btnSave_Click" CssClass="btn btn-bitbucket btn-flat" ValidationGroup="vgMain"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
                                <asp:LinkButton ID="btnDelete" runat="server" TabIndex="15" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

