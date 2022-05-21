<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="TaskRegister.aspx.cs" Inherits="TaskRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        Input {
            color: black !important;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            
            debugger;
            var table = $('[id*=grddata]').DataTable(
                {
                    orderCellsTop: true,
                    fixedHeader: true
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Task  Register    
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="#">Master</a></li>
                <li class="active">Task  Register</li>
                <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblcompanyno" runat="server" Visible="false" Text=""></asp:Label>
            </ol>
        </section>
        <section class="content">
             <div id="alert_container"></div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group pull-right">
                        <asp:LinkButton ID="btncreate" runat="server" OnClick="btncreate_Click" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Create Task</asp:LinkButton>

                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 1%">
                <div class="col-md-12">
                    <div class="table-responsive" style="border: 0px">
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <asp:HiddenField ID="hfAttachment" runat="server" />
                        <asp:HiddenField ID="hfFinished" runat="server" />
                        <asp:HiddenField ID="hfToday" runat="server" />
                        <asp:GridView ID="grdData" runat="server"
                            AllowPaging="false" AllowSorting="false"
                            AutoGenerateColumns="False" BorderWidth="1px" BackColor="White" ShowHeaderWhenEmpty="true" OnRowCommand="grddata_RowCommand"
                            CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2" OnRowDataBound="grdData_RowDataBound" DataKeyNames="EmployeeID"
                            CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White" OnRowCreated="grdData_RowCreated">
                            <%--OnRowCommand="grdData_RowCommand"--%>
                            <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="ID" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lblID" runat="server" Text='<%#  Eval("Noseries") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <%--<asp:TemplateField HeaderText="Select">
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="checkAll" runat="server" Onclick="javascript:SelectAllCheckboxes1(this);" />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chk" runat="server" />
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>--%>
                                <asp:TemplateField HeaderText="Entry No">
                                    <ItemTemplate>
                                        <asp:Label ID="lblEntNo" runat="server" Text='<%#  Eval("TaskNo") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Entry Date">
                                    <ItemTemplate>
                                        <asp:Label ID="lblentrydate" runat="server" Text='<%#  Eval("TaskCreatedDate") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Task Date">
                                    <ItemTemplate>
                                        <asp:Label ID="lbltaskdate" runat="server" Text='<%#  Eval("TaskDate") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Due Date">
                                    <ItemTemplate>
                                        <asp:Label ID="lblduedate" runat="server" Text='<%#  Eval("DueDate") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Work Detail" SortExpression="WorkType">
                                    <ItemTemplate>
                                        <asp:Label ID="lblWt" runat="server" Text='<%#  Eval("TaskDetails") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Assign To">
                                    <ItemTemplate>
                                        <asp:Label ID="lblAssignTo" runat="server" Text='<%#  Eval("Ename") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Assign By Status">
                                    <ItemTemplate>
                                        <asp:Label ID="lblStatus" runat="server" Text='<%#  Eval("ABStat") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Assign To Status">
                                    <ItemTemplate>
                                        <asp:Label ID="lblAssignStatus" runat="server" Text='<%#  Eval("ATStat") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-CssClass="lblenid" HeaderText="Task Edit">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btnedit" ImageUrl="~/images/viewIcon.png" ToolTip="Click here to Edit Work Entry"
                                            runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Noseries") %>'
                                            CommandName="editdata" CausesValidation="False" />
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="center" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-CssClass="lblenid" HeaderText="Status Edit">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btnedit1" ImageUrl="~/images/viewIcon.png" ToolTip="Click here to Edit Work Entry"
                                            runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("EmployeeID") +","+ Eval("Noseries") %>'
                                            CommandName="editStatus" CausesValidation="False" />
                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="center" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-CssClass="lblenid" HeaderText="Task Update" Visible="false">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btnDelete" ImageUrl="~/images/viewIcon.png" ToolTip="Click here to Update Work Entry"
                                            runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("EmployeeID")+","+ Eval("Noseries") %>'
                                            CommandName="TaskUpdate" CausesValidation="False" />

                                    </ItemTemplate>
                                    <ItemStyle Wrap="true" HorizontalAlign="center" />
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

