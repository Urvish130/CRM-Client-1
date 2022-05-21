<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="Role.aspx.cs" Inherits="Role" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">
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
           
                 $('[id*=grddata]').DataTable({
                "responsive": true,



            });
            
        });
    </script>
       <style type="text/css">
.messgealert {
width:50%;
position:fixed;
top:0;
z-index:10000000;
padding:0;
font-size:15px;
}
.btn.focus, .btn:focus, .btn:hover {
    color: white;
    text-decoration: none;
}
</style>
      <script type="text/javascript">
function ShowMessage(message, messagetype) {
    var cssclass;
    debugger;
switch (messagetype) {
case 'Success':
cssclass = 'alert alert-success'
break;
case 'Error':
cssclass = 'alert alert-danger'
break;
case 'Warning':
cssclass = 'alert alert-warning'
break;
default:
cssclass = 'alert alert-info'
}
$('#alert_container').append('<div id="alert_div" style="margin:0 0.5%; -webkit-box-shadow:3px 4px 6px #999;" class="' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + message + '</strong></div>');
setTimeout(function() { $("#alert_container").hide(); }, 2000);}
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
    <section class="content-header">
            <h1>Role</h1>
            <ol class="breadcrumb">
                <li><a href="Default.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="Demo.master">Master</a></li>
                <li class="active">Role</li>
                 <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
               <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
            </ol>
        </section>
         <section class="content">
              <div class="row">
                 <div class="col-md-6">
                     <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                 </div>
             </div>
             <div class="row">
                   <div class="col-md-6">
                        <div class="box box-primary">
                             <div id="alert_container"></div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label class="control-label">
                                    Role<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtName" class="form-control" TabIndex="1" runat="server" placeholder="Enter Name"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                    Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group pull-right">
                                <asp:LinkButton ID="btnSave" runat="server" TabIndex="19" OnClick="btnSave_Click" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
                                <asp:LinkButton ID="btnUpdate" Visible="false" runat="server"  TabIndex="19" OnClick="btnUpdate_Click" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                                <asp:LinkButton ID="btnDelete" OnClick="btnReset_Click" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>                

                            </div>
                        </div>
                    </div>
                </div>
                   <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h4>Role Details</h4>
                        </div>
                        <div class="box-body">
                            <asp:GridView ID="grddata" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                AutoGenerateColumns="False" BorderWidth="1px" OnRowCommand="grddata_RowCommand" ShowHeaderWhenEmpty="true"
                                CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5"  HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                <AlternatingRowStyle BackColor="White" />
                                <PagerStyle CssClass="csspager" />
                                <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                <Columns>
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("Role") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Edit">
                                        <ItemTemplate>
                                           <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("id") %>'
                                                CommandName="editdata" CausesValidation="False" />
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Delete" Visible="false">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="btnDelete" ImageUrl="images/delete.png" ToolTip="Click here to delete"
                                                runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("id") %>'
                                                CommandName="deletedata" CausesValidation="False"  OnClientClick = " return confirm('Do you want to delete ?');"/>
                                         
                                        
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />

                                    </asp:TemplateField>
                                    </Columns>
                            <EditRowStyle HorizontalAlign="Center"></EditRowStyle>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
                </div>


             <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-body" id="Inserttbl" runat="server">
                            <asp:GridView ID="grdpagelist" runat="server" AllowPaging="True" AllowSorting="false" AutoGenerateColumns="False"
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


                        <%--<div class="box-body" id="Updatetbl" runat="server" visible="false">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="false" AutoGenerateColumns="False"
                                CssClass="table table-bordered dataTable no-footer" CellPadding="3" OnRowDataBound="GridView1_RowDataBound" EditRowStyle-HorizontalAlign="Center" PageSize="15"
                                GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" ShowHeaderWhenEmpty="true"
                                BorderWidth="2px" CellSpacing="1">
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <HeaderStyle BackColor="#205081" Font-Bold="True" ForeColor="#FFFFFF" />
                                <PagerStyle CssClass="csspager" BackColor="#205081" ForeColor="White" HorizontalAlign="Left" Font-Size="large" />
                                <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                <Columns>
                                    <asp:TemplateField HeaderText="Page Name">
                                        <ItemTemplate>
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
                        </div>--%>
                    </div>
                </div>
                
            </div>
        </section>
         </div>
</asp:Content>

