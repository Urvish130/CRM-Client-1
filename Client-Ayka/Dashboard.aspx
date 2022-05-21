<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">

        <section class="content-header">
            <h1><i class="fa fa-tachometer"></i>Dashboard</h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-tachometer"></i>Home</a></li>
                <li><a href="#">Master</a></li>
                <li class="active">Dashboard</li>
                <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
            </ol>
        </section>
        <div class="box-body">
            <div class="row">
                <div class="col-md-6">

                    <div style="margin-top: 0px;"></div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-primary" style="height: 400px;">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Today Pending Inquiry Follow-up </h3>
                                </div>
                                <div class="panel-body" style="margin: -14px">
                                    <div class="row">
                                        <div class="form-group">

                                            <div class="col-md-12">
                                                <div class="table-responsive">
                                                    <asp:GridView ID="grddata" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                                        AutoGenerateColumns="False" BorderWidth="1px" ShowHeaderWhenEmpty="true" OnRowCommand="grddata_RowCommand"
                                                        CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                                        CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <PagerStyle CssClass="csspager" />
                                                        <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                                        <Columns>
                                                            <asp:TemplateField HeaderStyle-CssClass="" HeaderText="Edit" Visible="false">
                                                                <ItemTemplate>
                                                                    <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                                        runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Noseries") %>'
                                                                        CommandName="editdata" CausesValidation="False" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Inquiry No">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="InquiryNo" runat="server" Text='<%# Eval("InqiuryNo") %>'></asp:Label>
                                                                </ItemTemplate>
                                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Date">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Date" runat="server" Text='<%# Eval("Inquirydate") %>'></asp:Label>
                                                                </ItemTemplate>
                                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Customer Name">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Customer" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                                </ItemTemplate>
                                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="FollowUp Date">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="FollowUpDate" runat="server" Text='<%# Eval("NextFolldate") %>'></asp:Label>
                                                                </ItemTemplate>
                                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="FollowUp Type">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="FollowUpType" runat="server" Text='<%# Eval("FollowUpType") %>'></asp:Label>
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
                                                            <asp:TemplateField HeaderText="Created By">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblStatusName" runat="server" Text='<%# Eval("Ename") %>'></asp:Label>
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

                    </div>


                </div>

                <div style="margin-top: 0px;"></div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-primary" style="height: 400px;">
                            <div class="panel-heading">
                                <h3 class="panel-title">Today Pending Quotation Follow-Up </h3>
                            </div>
                            <div class="panel-body" style="margin: -10px">
                                <div class="row">
                                    <div class="form-group">

                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                                    AutoGenerateColumns="False" BorderWidth="1px" ShowHeaderWhenEmpty="true" OnRowCommand="grddata1_RowCommand"
                                                    CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                                    CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <PagerStyle CssClass="csspager" />
                                                    <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                                    <Columns>
                                                        <asp:TemplateField HeaderStyle-CssClass="" HeaderText="Edit" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                                    runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Noseries") %>'
                                                                    CommandName="editdata" CausesValidation="False" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Quotation No">
                                                            <ItemTemplate>
                                                                <asp:Label ID="InquiryNo" runat="server" Text='<%# Eval("QuotationNo") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Date">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Date" runat="server" Text='<%# Eval("QuotationDate") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Customer Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Customer" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="FollowUp Date">
                                                            <ItemTemplate>
                                                                <asp:Label ID="FollowUpDate" runat="server" Text='<%# Eval("NextFolldate") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="FollowUp Type">
                                                            <ItemTemplate>
                                                                <asp:Label ID="FollowUpType" runat="server" Text='<%# Eval("FollowUpType") %>'></asp:Label>
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
                                                        <asp:TemplateField HeaderText="Created By">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblStatusName" runat="server" Text='<%# Eval("Ename") %>'></asp:Label>
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
                </div>
            </div>
            <div style="margin-top: 20px;"></div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-primary" style="height: 400px;">
                        <div class="panel-heading">
                            <h3 class="panel-title">Daily Task </h3>
                        </div>
                        <div class="panel-body" style="margin: -10px">
                            <div class="row">
                                <div class="form-group">

                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="TaskGrid" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                                AutoGenerateColumns="False" BorderWidth="1px" ShowHeaderWhenEmpty="true" OnRowCommand="TaskGrid_RowCommand"
                                                CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                                CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                                <AlternatingRowStyle BackColor="White" />
                                                <PagerStyle CssClass="csspager" />
                                                <EmptyDataTemplate>No Records Available</EmptyDataTemplate>

                                                <Columns>
                                                    <asp:TemplateField HeaderText="ID" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblID" runat="server" Text='<%#  Eval("Noseries") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                    </asp:TemplateField>

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

                                                    <asp:TemplateField HeaderStyle-CssClass="lblenid" HeaderText="Task Update" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="btnedit1" ImageUrl="~/images/viewIcon.png" ToolTip="Click here to Edit Work Entry"
                                                                runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("EmployeeID") +","+ Eval("Noseries") %>'
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
