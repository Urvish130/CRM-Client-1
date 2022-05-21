<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="UpdateEmployee.aspx.cs" Inherits="UpdateRegister" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Employee / Distributor Master
                    
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="#">Master</a></li>
                <li class="active">Distributor Master</li>
                <asp:Label ID="lblcomno" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
                 <asp:Label ID="lblpassword" runat="server" Visible="false" Text=""></asp:Label>
                 <asp:Label ID="lblflag" runat="server" Visible="false" Text="false"></asp:Label>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <!-- SELECT2 EXAMPLE -->
            <div class="box box-primary">

                <section class="content-header">
                    <div id="alert_container"></div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-md-12 form-group">
                                <label>Type<span class="required">* </span></label>
                                <asp:DropDownList ID="dptype" runat="server" class="form-control select2" TabIndex="1">
                                    <asp:ListItem Text="----Select Type----" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Employee" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Consultant" Value="2"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="dptype"
                                    Display="Dynamic" ErrorMessage="Please Select Gender" Text="(*) Required" ValidationGroup="Emst" InitialValue="0" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Name<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtName" class="form-control" TabIndex="2" runat="server" placeholder="Enter Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                    Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Father/Husband's Name<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtfhname" class="form-control" TabIndex="3" runat="server" placeholder="Enter Father/Husband Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfhname"
                                    Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Last Name<span class="required">* </span>

                                </label>
                                <asp:TextBox ID="txtsurname" class="form-control" TabIndex="4" runat="server" placeholder="Enter Last Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtsurname"
                                    Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Gender<span class="required">* </span></label>
                                <asp:DropDownList ID="ddlgen" runat="server" class="form-control select2" TabIndex="5">
                                    <asp:ListItem Text="----Select Gender----" Value="0"></asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlgen"
                                    Display="Dynamic" ErrorMessage="Please Select Gender" Text="(*) Required" ValidationGroup="Emst" InitialValue="0" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <label class="control-label">
                                    Present address<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtpaddress" class="form-control" TabIndex="6" TextMode="MultiLine" runat="server" placeholder="Enter Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpaddress"
                                    Display="Dynamic" ErrorMessage="Please Enter Address" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Country<span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="dpcountry" runat="server" AutoPostBack="true" data-placeholder="Select Country" OnSelectedIndexChanged="dpcountry_SelectedIndexChanged" CssClass="form-control select2" TabIndex="7"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="dpcountry" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select Country" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtnccountry" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>
                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    State<span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="dpstate" runat="server" AutoPostBack="true" data-placeholder="Select state" OnSelectedIndexChanged="dpstate_SelectedIndexChanged" CssClass="form-control select2" TabIndex="8"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="dpstate" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select State" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtncstate" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    City<span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="dpcity" runat="server" AutoPostBack="true" data-placeholder="Select city" CssClass="form-control select2" TabIndex="9"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="dpcity" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select City" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtncity" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>

                            </div>
                            <div class="col-md-6 form-group">
                                <label>District</label>
                                <asp:TextBox ID="txtdistrict" class="form-control" TabIndex="10" runat="server" placeholder="Enter District"></asp:TextBox>
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Pincode <span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtpincode" class="form-control" TabIndex="11" runat="server" placeholder="Eneter Pincode"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpincode"
                                    Display="Dynamic" ErrorMessage="Please Enter Pincode" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Phone No <span class="required">* </span></label>
                                <asp:TextBox ID="txtphno" class="form-control" TabIndex="12" runat="server" placeholder="Enter Phone No"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtphno"
                                    Display="Dynamic" ErrorMessage="Please Enter Phone No" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Mobile No Personal
                                </label>
                                <asp:TextBox ID="txtpmobileno" class="form-control" TabIndex="13" runat="server" placeholder="Enter Personal Mobile No"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" SetFocusOnError="true" Display="Dynamic"
                                    ControlToValidate="txtpmobileno" runat="server" ErrorMessage="Only 10 digit Mobile No" ForeColor="Red"
                                    ValidationExpression="[0-9]{10}" ValidationGroup="en"></asp:RegularExpressionValidator>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtpmobileno"
                                    Display="Dynamic" ErrorMessage="Please Enter  Mobile No" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Mobile No Official
                                </label>
                                <asp:TextBox ID="txtmobileoffice" class="form-control" TabIndex="14" runat="server" placeholder="Enter Official Mobile No"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" SetFocusOnError="true" Display="Dynamic"
                                    ControlToValidate="txtmobileoffice" runat="server" ErrorMessage="Only 10 digit Mobile No" ForeColor="Red"
                                    ValidationExpression="[0-9]{10}" ValidationGroup="en"></asp:RegularExpressionValidator>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label>Mobile No Official(whatsapp)</label>
                                <asp:TextBox ID="txtmobilenowhatsup" class="form-control" TabIndex="15" runat="server" placeholder="Enter whatsapp Mobile No"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" SetFocusOnError="true" Display="Dynamic"
                                    ControlToValidate="txtmobilenowhatsup" runat="server" ErrorMessage="Only 10 digit Mobile No" ForeColor="Red"
                                    ValidationExpression="[0-9]{10}" ValidationGroup="en"></asp:RegularExpressionValidator>

                            </div>

                            <div class="col-md-6 form-group">
                                <label>Select Role<span class="required">* </span></label>


                                <div class="input-group">
                                    <asp:DropDownList ID="ddlRole" runat="server" AutoPostBack="false" data-placeholder="Select Department" CssClass="form-control select2" TabIndex="16"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ddlRole" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select City" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtncindugrp" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>



                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    P.F No
                                </label>
                                <asp:TextBox ID="txtpfno" CssClass="form-control" TabIndex="17" runat="server" placeholder="Enter P.F No"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtpfno"
                                    Display="Dynamic" ErrorMessage="Please Enter P.F No" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>

                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Date of Appointment
                                </label>
                                <asp:TextBox ID="txtdoa" CssClass="form-control" ClientIDMode="Static" TabIndex="18" runat="server" data-inputmask="'alias': 'dd/mm/yyyy'" placeholder="Select Date"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender3" TargetControlID="txtdoa" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtdoa"
                                    Display="Dynamic" ErrorMessage="Please Enter  Date of Appointment" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Date of Joining<span class="required">*</span>
                                </label>
                                <asp:TextBox ID="txtdoj" CssClass="form-control" TabIndex="19" runat="server" data-inputmask="'alias': 'dd/mm/yyyy'" placeholder="Select Date"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender4" TargetControlID="txtdoj" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtdoj"
                                    Display="Dynamic" ErrorMessage="Please Enter  Date of Joining" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Date of Leaving
                                </label>
                                <asp:TextBox ID="txtdol" CssClass="form-control" TabIndex="20" runat="server" data-inputmask="'alias': 'dd/mm/yyyy'" placeholder="Select Date"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender5" TargetControlID="txtdol" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                <%--  <asp:RegularExpressionValidator runat="server" Display="Dynamic" ControlToValidate="txtdol" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                                ErrorMessage="Invalid date format." ForeColor="Red" SetFocusOnError="true" />--%>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Department <span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="ddlDept" runat="server" AutoPostBack="false" data-placeholder="Select Department" CssClass="form-control select2" TabIndex="21"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="ddlDept" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select Department" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lnbDept" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>

                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Designation <span class="required">* </span>
                                </label>
                                <div class="input-group">
                                    <asp:DropDownList ID="ddldesignation" runat="server" AutoPostBack="false" data-placeholder="Select Designation" CssClass="form-control select2" TabIndex="22"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="ddldesignation" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select Designation" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtncreatedesign" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6 form-group">
                                <label>Email ID<span class="required">*</span></label>
                                <asp:TextBox ID="txtEmail" class="form-control" TabIndex="23" runat="server" placeholder="Enter Email" ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" SetFocusOnError="true" Display="Dynamic"
                                    ControlToValidate="txtEmail" runat="server" ErrorMessage="abc@example.com" ForeColor="Red"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtEmail"
                                    Display="Dynamic" ErrorMessage="Please Select Designation" Text="(*) Required" SetFocusOnError="true" ValidationGroup="Emst" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>

                            <div class="col-md-6 form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtPwd" class="form-control" TabIndex="24" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidato4" runat="server" ControlToValidate="txtPwd" ValidationGroup="Emst"
                                    Display="Dynamic" ErrorMessage="Please Enter Password" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Emergency Contact Name
                                </label>
                                <asp:TextBox ID="txtecontatname" class="form-control" TabIndex="25" runat="server" placeholder="Enter Contact Name"></asp:TextBox>
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtecontatname" ValidationGroup="Emst"
                                    Display="Dynamic" ErrorMessage="Please Enter Password" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>

                            <div class="col-md-6 form-group">
                                <label>Emergency Contact Mobile No</label>
                                <asp:TextBox ID="txtecontactno" class="form-control" TabIndex="26" runat="server" placeholder="Enter Contact Mobile"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" SetFocusOnError="true" Display="Dynamic"
                                    ControlToValidate="txtEmail" runat="server" ErrorMessage="abc@example.com" ForeColor="Red"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtecontactno" ValidationGroup="Emst"
                                    Display="Dynamic" ErrorMessage="Please Enter Password" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label>Emergency Contact Relation</label>
                                <asp:TextBox ID="txtcontactrelation" class="form-control" TabIndex="27" runat="server" placeholder="Enter Contact Relation"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="txtcontactrelation" ValidationGroup="Emst"
                                    Display="Dynamic" ErrorMessage="Please Enter Relation" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">Status<span class="required">* </span></label>
                                <asp:RadioButtonList ID="rdbStatus" runat="server" CssClass="radioboxlist form-control" RepeatDirection="Horizontal" TabIndex="28">
                                    <asp:ListItem Selected="True">Active</asp:ListItem>
                                    <asp:ListItem>Inactive</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="rdbStatus"
                                    Display="Dynamic" ErrorMessage="Please Select Status" Text="(*) Required" SetFocusOnError="true" ValidationGroup="comgroup" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Bank Name 
                                </label>
                                <asp:TextBox ID="txtbankname" CssClass="form-control" TabIndex="29" runat="server" placeholder="Enter Bank Name"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="txtbankname" ValidationGroup="Emst"
                                    Display="Dynamic" ErrorMessage="Please Enter Bank" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>
                            <div class="col-md-3 form-group">
                                <label class="control-label">
                                    Account No
                                </label>
                                <asp:TextBox ID="txtaccno" CssClass="form-control" TabIndex="30" runat="server" placeholder="Enter Account No"></asp:TextBox>
                                <%--                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="txtaccno" ValidationGroup="Emst"
                                    Display="Dynamic" ErrorMessage="Please Enter Account" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>

                            <div class="col-md-3 form-group">
                                <label class="control-label">
                                    IFSC Code
                                </label>
                                <asp:TextBox ID="txtifsccode" CssClass="form-control" TabIndex="31" runat="server" placeholder="Enter  IFSC Code"></asp:TextBox>
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="txtifsccode" ValidationGroup="Emst"
                                    Display="Dynamic" ErrorMessage="Please Enter IFSC" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Date of Birth
                                </label>
                                <asp:TextBox ID="txtdob" onkeydown="return false;" CssClass="form-control" TabIndex="32" runat="server" placeholder="Select  Date of Birth "></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="txtdob" ValidationGroup="Emst"
                                    Display="Dynamic" ErrorMessage="Please Select  Date of Birth" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                                <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtdob" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>

                            </div>
                            <div class="col-md-6 form-group">
                                <label class="control-label">
                                    Date of Anniversary
                                </label>
                                <asp:TextBox ID="txtdoani" onkeydown="return false;" CssClass="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" TabIndex="33" runat="server" placeholder="Select  Date of Anniversary "></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="txtdoani" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                            </div>


                        </div>

                        <section class="content-header">
                            <h3>Upload Document
                    
                            </h3>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        Document Name
                                    </label>
                                    <asp:TextBox ID="txtdocument" CssClass="form-control" TabIndex="34" runat="server" placeholder="Enter  Doucment Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="txtdocument" ValidationGroup="docgrp"
                                    Display="Dynamic" ErrorMessage="Please Enter Document Name" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>

                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        Upload
                                    </label>
                                    <asp:FileUpload ID="FileUpload1" TabIndex="27" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ValidationGroup="docgrp"
                                    Display="Dynamic" ErrorMessage="Please Upload Document" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-3 form-group" style="margin-top: 15px; text-align: left">

                                    <asp:LinkButton ID="lbtnadddocument" ValidationGroup="docgrp" OnClick="lbtnadddocument_Click" runat="server" TabIndex="35" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Add Document</asp:LinkButton>


                                </div>
                            </div>




                            <div class="row">

                                <div class="box-body">
                                    <asp:GridView ID="grddocument" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                        AutoGenerateColumns="False" BorderWidth="1px" OnRowCommand="grddocument_RowCommand" ShowHeaderWhenEmpty="true"
                                        CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2" DataKeyNames="DocumentPath"
                                        CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                        <AlternatingRowStyle BackColor="White" />
                                        <PagerStyle CssClass="csspager" />
                                        <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                        <Columns>
                                            <asp:TemplateField HeaderText="Document Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("DocuName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Download">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btndownload" ImageUrl="~/images/icons8-download-24.png" ToolTip="Click here to Download"
                                                        runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("fileName") %>'
                                                        CommandName="Download" CausesValidation="False" />
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnDelete" ImageUrl="images/delete.png" ToolTip="Click here to delete"
                                                        runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Id") %>'
                                                        CommandName="deletedata" CausesValidation="False" />
                                                    <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" ConfirmText="Do You Want to Delete?" runat="server" TargetControlID="btnDelete"></asp:ConfirmButtonExtender>
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
                        <div class="row">
                            <div class="col-md-12 form-group" style="padding-top: 5px; text-align: right">
                               <asp:LinkButton ID="btnSave" runat="server" Visible="false"  ValidationGroup="Emst" TabIndex="36" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
                            <asp:LinkButton ID="btnUpdate"  OnClick="btnSave_Click" runat="server" TabIndex="37" ValidationGroup="Emst" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                            <asp:LinkButton ID="btnDelete" runat="server" TabIndex="38" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                            </div>
                        </div>
                    </div>

                </section>
    </div>
            <!-- /.row -->
        </section>



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
                                <h4 class="modal-title" style="text-align: center">Create Role</h4>

                                <div class="modal-body">
                                    <div class="col-md-12">
                                        <div class="box box-primary">

                                            <div class="box-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblrolmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">
                                                        Role Name<span class="required">* </span>
                                                    </label>
                                                    <asp:TextBox ID="txtrolename" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrolename"
                                                        Display="Dynamic" ErrorMessage="Please Group Name" ValidationGroup="rolegrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                        CssClass="validate"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group pull-right">
                                                    <asp:LinkButton ID="lbtncrole" OnClick="lbtncrole_Click" ValidationGroup="rolegrp" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                    <asp:LinkButton ID="LinkButton3" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <asp:Label ID="lblCountry" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <label class="control-label">
                                                        Country<span class="required">* </span>
                                                    </label>
                                                    <asp:TextBox ID="Txtcountry" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcountry"
                                                        Display="Dynamic" ErrorMessage="Please country Name" ValidationGroup="country" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                        CssClass="validate"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group pull-right">
                                                    <asp:LinkButton ID="lbtncountry" OnClick="lbtncreatecountry_Click" ValidationGroup="country" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                    <asp:LinkButton ID="LinkButton9" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <asp:Label ID="lblstate" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <label class="control-label">
                                                        State<span class="required">* </span>
                                                    </label>
                                                    <asp:TextBox ID="Txtstate" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="Txtstate"
                                                        Display="Dynamic" ErrorMessage="Please stateName" ValidationGroup="state" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                        CssClass="validate"></asp:RequiredFieldValidator>
                                                    <label class="control-label">
                                                            Country<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtSelectCountry" ReadOnly="true" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="form-group pull-right">
                                                    <asp:LinkButton ID="lbtnstate" OnClick="lbtncreatestate_Click" ValidationGroup="state" runat="server" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                    <asp:LinkButton ID="LinkButton10" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <asp:Label ID="lblcity" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <label class="control-label">
                                                        City<span class="required">* </span>
                                                    </label>
                                                    <asp:TextBox ID="Txtcity" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="TxtCity"
                                                        Display="Dynamic" ErrorMessage="Please City Name" ValidationGroup="citygrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                        CssClass="validate"></asp:RequiredFieldValidator>
                                                    <label class="control-label">
                                                            State<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtSelectSate" ReadOnly="true" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
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
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <asp:Label ID="lbldepartment" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <label class="control-label">
                                                        Department Name<span class="required">* </span>
                                                    </label>
                                                    <asp:TextBox ID="txtdeptname" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="txtdeptname"
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
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <asp:Label ID="lblDesignation" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <label class="control-label">
                                                        Designation Name<span class="required">* </span>
                                                    </label>
                                                    <asp:TextBox ID="txtdesign" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="txtdesign"
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
    <!-- End of Model PopUp -->

    </div>

</asp:Content>

