<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="UpdateCompany.aspx.cs" Inherits="UpdateCompany" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
      <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>


    <style>
        .example-modal .modal {
            position: relative;
            top: auto;
            bottom: auto;
            right: auto;
            left: auto;
            text-align: left;
            display: block;
            z-index: 1;
        }

        .example-modal .modal {
            background: transparent !important;
        }
    </style>
    <style type="text/css">
        .messgealert {
            width: 50%;
            position: fixed;
            top: 0;
            z-index: 10000000;
            padding: 0;
            font-size: 15px;
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
            setTimeout(function () { $("#alert_container").hide(); }, 2000);
        }
    </script>
    <style>
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        input[type=number] {
            -moz-appearance: textfield;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Company Master
                    
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="#">Master</a></li>
                <li class="active">Company Master</li>
                <asp:Label ID="lblcomno" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>

            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <!-- SELECT2 EXAMPLE -->
            <div class="box box-primary">
                 <div id="alert_container"></div>
                <!-- /.box-header -->
                <div class="box-body">
                    <section class="content-header">
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <label class="control-label">
                                    Name<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtName" class="form-control" TabIndex="1" runat="server" placeholder="Enter Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                    Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Address<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtaddress" TextMode="MultiLine" class="form-control" TabIndex="2" runat="server" placeholder="Enter Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtaddress"
                                    Display="Dynamic" ErrorMessage="Please Enter Address" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>


                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Country<span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="dpcountry" runat="server" AutoPostBack="true" data-placeholder="Select Country" OnSelectedIndexChanged="dpcountry_SelectedIndexChanged" CssClass="form-control select2" TabIndex="3"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="dpcountry" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select Country" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtnccountry" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    State<span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="dpstate" runat="server" AutoPostBack="true" data-placeholder="Select state" OnSelectedIndexChanged="dpstate_SelectedIndexChanged" CssClass="form-control select2" TabIndex="4"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="dpstate" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select State" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtncstate" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>
                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    City<span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="dpcity" runat="server" AutoPostBack="true" data-placeholder="Select city" CssClass="form-control select2" TabIndex="5"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="dpcity" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select City" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtncity" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    District 
                                </label>
                                <asp:TextBox ID="txtdistrict" class="form-control" TabIndex="5" runat="server" placeholder="Enter District"></asp:TextBox>
                                
                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">Pincode<span class="required">*</span> </label>
                                <asp:TextBox ID="txtpincode" class="form-control" TabIndex="6" runat="server" placeholder="Enter Pincode"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtpincode"
                                    Display="Dynamic" ErrorMessage="Please Enter Pincode" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Phone No 
                                </label>
                                <asp:TextBox ID="txtphno" CssClass="form-control" TabIndex="7" runat="server" placeholder="Enter  Phone No"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ControlToValidate="txtphno" ErrorMessage="Enter Correct Phn No."
                                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </div>

                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Email<span class="required">*</span>
                                </label>
                                <asp:TextBox ID="txtemail" CssClass="form-control" ClientIDMode="Static" TabIndex="8" runat="server" OnUnload="CheckName" placeholder="Enter Email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail"
                                    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                    Display="Dynamic" ErrorMessage="Invalid email address" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtemail"
                                    Display="Dynamic" ErrorMessage="Please Enter Email" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Business type<span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="dpbusstype" runat="server" AutoPostBack="false" data-placeholder="Select Business type" CssClass="form-control select2" TabIndex="9"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="dpbusstype" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select Business type" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtncreatebtype" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>


                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Industry Group<span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="dpindustry" runat="server" AutoPostBack="false" data-placeholder="Select Industry Group" CssClass="form-control select2" TabIndex="10"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="dpindustry" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select Industry Group" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtncindugrp" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label>URL</label>
                                <asp:TextBox ID="txturl" CssClass="form-control" TabIndex="11" runat="server" placeholder="Enter URL"></asp:TextBox>

                            </div>
                            <div class="col-md-6 form-group">

                                <label class="control-label">Status</label>
                                <asp:RadioButtonList ID="rbtnstatus" runat="server" CssClass="radioboxlist form-control" RepeatDirection="Horizontal" TabIndex="12">
                                    <asp:ListItem Selected="True">Active</asp:ListItem>
                                    <asp:ListItem>Inactive</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    GST No<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtgstno" CssClass="form-control" TabIndex="13" runat="server" placeholder="Enter GST No"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtgstno"
                                    Display="Dynamic" ErrorMessage="Please Enter GST No" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>

                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Bank Name<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtbankname" CssClass="form-control" ClientIDMode="Static" TabIndex="14" runat="server" placeholder="Enter  Bank Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtbankname"
                                    Display="Dynamic" ErrorMessage="Please Enter Bank Name" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Account No<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtaccno" CssClass="form-control" TabIndex="15" runat="server" placeholder="Enter Account No"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtaccno"
                                    Display="Dynamic" ErrorMessage="Please Enter Account No" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>

                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    IFSC code<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtifsccode" CssClass="form-control" ClientIDMode="Static" TabIndex="16" runat="server" placeholder="Enter  IFSC code"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtifsccode"
                                    Display="Dynamic" ErrorMessage="Please Enter IFSC code" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </section>
                </div>
            </div>

            <div class="box box-primary">
                <div class="box-body">
                    <section class="content-header">
                        <h3>Contact Person
                    
                        </h3>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="lblmsg2" runat="server" Text="" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 form-group">
                                <label class="control-label">
                                    Name<span class="required">*</span>
                                </label>
                                <asp:TextBox ID="txtcontactname" CssClass="form-control" TabIndex="16" runat="server" placeholder="Enter  Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcontactname"
                                    Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgcontactroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>


                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">
                                    Email<span class="required">*</span>
                                </label>
                                <asp:TextBox ID="txtcontactemail" CssClass="form-control" TabIndex="17" runat="server" placeholder="Enter  Email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcontactemail"
                                    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                    Display="Dynamic" ErrorMessage="Invalid email address" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtcontactemail"
                                    Display="Dynamic" ErrorMessage="Please Enter Email" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgcontactroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">
                                    Phone No
                                </label>
                                <asp:TextBox ID="txtcontactphno" CssClass="form-control" TabIndex="18" runat="server" placeholder="Enter Phone No"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                    ControlToValidate="txtcontactphno" ErrorMessage="RegularExpressionValidator"
                                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-4 form-group">
                                <label class="control-label">
                                    Mobile No(1)<span class="required">*</span>
                                </label>
                                <asp:TextBox ID="txtcontactmno1" CssClass="form-control" TabIndex="19" runat="server" placeholder="Enter    Mobile No(1)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtcontactmno1"
                                    Display="Dynamic" ErrorMessage="Please Enter  Mobile No(1)" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgcontactroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
                                    ControlToValidate="txtcontactmno1" ErrorMessage="RegularExpressionValidator"
                                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">
                                    Mobile No(2)
                                </label>
                                <asp:TextBox ID="txtcontactmno2" CssClass="form-control" TabIndex="20" runat="server" placeholder="Enter    Mobile No(2)"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
                                    ControlToValidate="txtcontactmno2" ErrorMessage="RegularExpressionValidator"
                                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">
                                    Department <span class="required">*</span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="ddlDept" runat="server" AutoPostBack="false" data-placeholder="Select Department" CssClass="form-control select2" TabIndex="21"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="ddlDept" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select Department" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgcontactroup" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lnbDept" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>

                            </div>


                        </div>

                        <div class="row">

                            <div class="col-md-4 form-group">
                                <label class="control-label">
                                    Designation <span class="required">*</span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="ddldesign" runat="server" AutoPostBack="false" data-placeholder="Select Designation" CssClass="form-control select2" TabIndex="22"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="ddldesign" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please select Designation" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgcontactroup" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtncreatedesign" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>
                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">
                                    Date of Birth<span class="required">*</span>
                                </label>
                                <asp:TextBox ID="txtdob" onkeydown="return false;" CssClass="form-control" TabIndex="23" runat="server" placeholder="Enter Date of Birth"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="txtdob"
                                    Display="Dynamic" ErrorMessage="Please Enter Date of Birth" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgcontactroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                                <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtdob" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>


                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">
                                    Date of Anniversary
                                </label>
                                <asp:TextBox ID="txtdoani" onkeydown="return false;" CssClass="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" TabIndex="24" runat="server" placeholder="Enter Date of Anniversary"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender3" TargetControlID="txtdoani" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>

                            </div>

                        </div>

                        <div class="row" style="text-align: right">
                            <div class="col-md-12 form-group" style="text-align: right">
                                <asp:LinkButton ID="lbtnaddcontact" Style="margin-top: 25px" OnClick="lbtnaddcontact_Click" ValidationGroup="comgcontactroup" runat="server" TabIndex="27" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Add contact </asp:LinkButton>
                                <asp:LinkButton ID="lbtnupdatecontact" Visible="false" runat="server" OnClick="lbtnupdatecontact_Click" ValidationGroup="comgcontactroup" TabIndex="28" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                                <asp:LinkButton ID="lbtnresetcontact" runat="server" TabIndex="29" OnClick="lbtnresetcontact_Click" Style="margin-top: 25px" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>

                            </div>
                        </div>

                        <div class="row">

                            <div class="box-body">
                                <asp:GridView ID="grdcontact" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                    AutoGenerateColumns="False" BorderWidth="1px" OnRowCommand="grdcontact_RowCommand" ShowHeaderWhenEmpty="true"
                                    CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                    CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                    <AlternatingRowStyle BackColor="White" />
                                    <PagerStyle CssClass="csspager" />
                                    <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Email">
                                            <ItemTemplate>
                                                <asp:Label ID="lblemail" runat="server" Text='<%# Eval("ContactEmail") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PhoneNo">
                                            <ItemTemplate>
                                                <asp:Label ID="lblContactPhone" runat="server" Text='<%# Eval("ContactPhone") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mobileno1">
                                            <ItemTemplate>
                                                <asp:Label ID="lblContactMobileno1" runat="server" Text='<%# Eval("ContactMobileno1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mobileno2">
                                            <ItemTemplate>
                                                <asp:Label ID="lblContactMobileno2" runat="server" Text='<%# Eval("ContactMobileno2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Department">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDeptName" runat="server" Text='<%# Eval("DeptName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Designation">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDesigName" runat="server" Text='<%# Eval("DesigName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Date of Birth">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldob" runat="server" Text='<%# Eval("Extra1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Date of Anniversary">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldoani" runat="server" Text='<%# Eval("Extra2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                    runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Id") %>'
                                                    CommandName="editdata" CausesValidation="False" />
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btnDelete" ImageUrl="images/delete.png" ToolTip="Click here to delete"
                                                    runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Id") %>'
                                                    CommandName="deletedata" CausesValidation="False" OnClientClick = " return confirm('Do you want to delete ?');" />
                                              

                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <EditRowStyle HorizontalAlign="Center"></EditRowStyle>
                                </asp:GridView>
                            </div>
                        </div>

                    </section>
                </div>
            </div>



            <div class="row" style="text-align: right">

                <div class="col-md-12 form-group" style="padding-top: 5px">
                    <asp:LinkButton ID="btnSave" runat="server" TabIndex="30" OnClick="btnSave_Click" ValidationGroup="comgroup" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                    <asp:LinkButton ID="btnUpdate" runat="server" Visible="false" TabIndex="31" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                    <asp:LinkButton ID="btnDelete1" runat="server" OnClick="btnDelete_Click" TabIndex="32" CssClass="btn btn-danger" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Delete</asp:LinkButton>
                    <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" ConfirmText="Do You Want to Delete?" runat="server" TargetControlID="btnDelete1"></asp:ConfirmButtonExtender>
                </div>
            </div>
            <!-- /.row -->
        </section>


        <asp:ModalPopupExtender ID="mpbtype" runat="server" PopupControlID="pnlnbussinesstype" TargetControlID="lbtncreatebtype"
            CancelControlID="btnclosebtype" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlnbussinesstype" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosebtype" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Bussiness Type</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Business type Name<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtbtypename" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbtypename"
                                                            Display="Dynamic" ErrorMessage="Please Enter Name" ValidationGroup="btype" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtncbytype" OnClick="lbtncbytype_Click" ValidationGroup="btype" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton5" OnClick="LinkButton5_Click" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
            </div>
            <asp:Button ID="btnClose" runat="server" Text="Close" />
        </asp:Panel>



        <asp:ModalPopupExtender ID="mpindutype" runat="server" PopupControlID="pnlindugrp" TargetControlID="lbtncindugrp"
            CancelControlID="btncloseindugrp" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlindugrp" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btncloseindugrp" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Industry Group</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Industry Group<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtgroupname" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtgroupname"
                                                            Display="Dynamic" ErrorMessage="Please Group Name" ValidationGroup="indugrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtncreateindugroup" OnClick="lbtncreateindugroup_Click" ValidationGroup="indugrp" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton3" OnClick="LinkButton3_Click" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Close" />
        </asp:Panel>

        <%--Country--%>

        <asp:ModalPopupExtender ID="mpcountry" runat="server" PopupControlID="pnlcountry" TargetControlID="lbtnccountry"
            CancelControlID="btnclosecountry" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlcountry" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosecountry" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Country</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Country<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="Txtcountry" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcountry"
                                                            Display="Dynamic" ErrorMessage="Please country Name" ValidationGroup="country" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtncountry" OnClick="lbtncreatecountry_Click" ValidationGroup="country" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton9" OnClick="LinkButton9_Click" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
            </div>
            <asp:Button ID="btncClose" runat="server" Text="Close" />
        </asp:Panel>

        <%--Country--%>

        <%-- state --%>
        <asp:ModalPopupExtender ID="mpstate" runat="server" PopupControlID="pnlstate" TargetControlID="lbtncstate"
            CancelControlID="btnclosestate" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlstate" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosestate" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create state</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            State<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="Txtstate" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txtstate"
                                                            Display="Dynamic" ErrorMessage="Please stateName" ValidationGroup="state" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                         <label class="control-label">
                                                            Country<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtSelectCountry" readonly="true" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtnstate" OnClick="lbtncreatestate_Click" ValidationGroup="state" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton10"  runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
            </div>
            <asp:Button ID="Button4" runat="server" Text="Close" />
        </asp:Panel>



        <%--   state--%>

        <%-- city--%>
        <asp:ModalPopupExtender ID="mpcity" runat="server" PopupControlID="pnlcity" TargetControlID="lbtncity"
            CancelControlID="btnclosecity" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlcity" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosecity" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create City</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            City<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="Txtcity" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtCity"
                                                            Display="Dynamic" ErrorMessage="Please City Name" ValidationGroup="citygrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                        <label class="control-label">
                                                            State<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtSelectSate" readonly="true" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtnccity" OnClick="lbtncreatecity_Click" ValidationGroup="citygrp" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton11" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
            </div>
            <asp:Button ID="Button5" runat="server" Text="Close" />
        </asp:Panel>
        <%-- city--%>

        <asp:ModalPopupExtender ID="mpdept" runat="server" PopupControlID="pnldept" TargetControlID="lnbDept"
            CancelControlID="btnclosedept" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnldept" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosedept" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Department</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Department Name<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtdeptname" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdeptname"
                                                            Display="Dynamic" ErrorMessage="Please Department Name" ValidationGroup="deptgrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtncreatedept" OnClick="lbtncreatedept_Click" ValidationGroup="deptgrp" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton4" OnClick="LinkButton4_Click" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
            </div>
            <asp:Button ID="Button2" runat="server" Text="Close" />
        </asp:Panel>



        <asp:ModalPopupExtender ID="mpdesign" runat="server" PopupControlID="pnldesign" TargetControlID="lbtncreatedesign"
            CancelControlID="btnclosedesign" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnldesign" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosedesign" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Designation</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Designation Name<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtdesign" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdesign"
                                                            Display="Dynamic" ErrorMessage="Please Department Name" ValidationGroup="designgrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtndesigncreate" OnClick="lbtndesigncreate_Click" ValidationGroup="designgrp" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
            </div>
            <asp:Button ID="Button3" runat="server" Text="Close" />
        </asp:Panel>



    </div>
</asp:Content>

