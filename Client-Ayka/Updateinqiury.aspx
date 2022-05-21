<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="Updateinqiury.aspx.cs" Inherits="Updateinqiury" %>

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
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        function tSpeedValue(txt) {
            var qty = txtqty.value;
            var rate = txtrate.value;
            var amount = qty * rate;
            txtamount.value = amount;
        }
    </script>
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
        <section class="content-header">
            <h1>Inquiry Update
                    
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="InquiryRegistry.aspx">Inqiury</a></li>
                <li class="active">Inquiry Entry</li>
                <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblcomno" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
                 <asp:Label ID="lblstatus" runat="server" Visible="false" Text=""></asp:Label>
            </ol>
        </section>

        <section class="content">
            <!-- SELECT2 EXAMPLE -->
            <div class="box box-primary">
                  <div id="alert_container"></div>
                <!-- /.box-header -->
                <div class="box-body">

                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                No<span class="required">* </span>
                            </label>
                            <asp:TextBox ID="txtno" class="form-control" TabIndex="1" ReadOnly="true" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtno"
                                Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                Date<span class="required">* </span>
                            </label>
                            <asp:TextBox ID="txtdate" onkeydown="return false;" class="form-control" TabIndex="2" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender3" TargetControlID="txtdate" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtdate"
                                Display="Dynamic" ErrorMessage="Please Enter Date" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Name of Customer <span class="required">* </span></label>
                            
                                <asp:DropDownList ID="dpcust" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dpcust_SelectedIndexChanged" data-placeholder="Select Customer" CssClass="form-control select2" TabIndex="3"></asp:DropDownList>
                                <span class="input-group-btn" style="display:none" >
                                     <asp:HyperLink ID="Custbtn"  runat="server" href="Customer.aspx" Target="_blank" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:HyperLink>
                                             <asp:LinkButton  ID="lbtncust" runat="server"  OnClick="RefreshCustGroup" CssClass="btn btn-success btn-flat" CausesValidation="false"><i class="fa fa-refresh"></i></asp:LinkButton></span>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="dpcust" InitialValue="0"
                                Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Status <span class="required">* </span></label>
                            
                                <asp:DropDownList ID="dpstatus" runat="server" AutoPostBack="false" data-placeholder="Select Customer" CssClass="form-control select2" TabIndex="4"></asp:DropDownList>
                                <span class="input-group-btn" style="display:none">
                                    <asp:LinkButton ID="lbtnstatus" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="dpcust" InitialValue="0"
                                Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Contact Person<span class="required">* </span></label>
                           
                                <asp:DropDownList ID="dpcontactper" OnSelectedIndexChanged="dpcontactper_SelectedIndexChanged" runat="server" AutoPostBack="true" data-placeholder="Select Conatct Person" CssClass="form-control select2" TabIndex="5"></asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="dpcontactper"
                                Display="Dynamic" ErrorMessage="Please Select Contact" InitialValue="0" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                                <span class="input-group-btn" style="display:none">
                                    <asp:LinkButton ID="lbtncontactperson" OnClick="lbtncontactperson_Click" OnClientClick="aspnetForm.target ='_blank';" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                          
                        </div>
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                Contact no
                            </label>
                            <asp:TextBox ID="txtcontactno" class="form-control" TabIndex="6" runat="server" placeholder="Enter Contact"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                ControlToValidate="txtcontactno" ErrorMessage="Minimum 10 numbers required"
                                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Department<span class="required">*</span></label>
                            <asp:DropDownList ID="ddlDept" runat="server" AutoPostBack="false" Enabled="true" data-placeholder="Select Department" CssClass="form-control select2" TabIndex="7"></asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="ddlDept"
                                Display="Dynamic" ErrorMessage="Please Select Department" InitialValue="0" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                Designation<span class="required">*</span>
                            </label>
                            <asp:DropDownList ID="ddldesign" runat="server" AutoPostBack="false" Enabled="true" data-placeholder="Select Designation" CssClass="form-control select2" TabIndex="8"></asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="ddldesign"
                                Display="Dynamic" ErrorMessage="Please Select Designation" InitialValue="0" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                Email Id<span class="required">* </span>
                            </label> 
                            <asp:TextBox ID="txtemail" class="form-control" placeholder="Enter Email" TabIndex="9" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
                                ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                Display="Dynamic" ErrorMessage="Invalid email address" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtemail"
                                Display="Dynamic" ErrorMessage="Please Enter Email" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Source<span class="required">* </span></label>
                            
                                <asp:DropDownList ID="dpsource" runat="server" AutoPostBack="false" data-placeholder="Select Source" CssClass="form-control select2" TabIndex="10"></asp:DropDownList>
                                <span class="input-group-btn" style="display:none">
                                    <asp:LinkButton ID="lbtnsource" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="dpsource" InitialValue="0"
                                Display="Dynamic" ErrorMessage="Please Select Source" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                MobileNo:<span class="required">* </span>
                            </label>
                            <asp:TextBox ID="txtmobileno" placeholder="Enter Mobile No" class="form-control" TabIndex="11" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmobileno"
                                Display="Dynamic" ErrorMessage="Please Enter Mobile" Text="(*) Required" ValidationGroup="Emst" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                MobileNo(2)
                            </label>
                            <asp:TextBox ID="txtmobileno2"  placeholder="Enter Mobile No" class="form-control" TabIndex="12" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label class="control-label">
                                Remarks
                            </label>
                            <asp:TextBox ID="txtremarks"  placeholder="Enter Remarks" class="form-control" TabIndex="13" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <div class="box box-primary">
                        <div class="row" style="margin-top: 10px">
                            <div class="col-md-6">
                                <label>Select Product <span class="required">* </span></label>
                               
                                    <asp:DropDownList ID="dpitem"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="dpitem_SelectedIndexChanged" data-placeholder="Select Product" CssClass="form-control select2" TabIndex="14"></asp:DropDownList>
                                    <span class="input-group-btn" style="display:none">
                                        <asp:HyperLink ID="AddItmBtn" runat="server" href="Item.aspx" Target="_blank" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:HyperLink>
                                       <asp:LinkButton ID="AddItmBtnRefresh" runat="server" OnClick="RefreshItmdataGroup" CssClass="btn btn-success btn-flat" CausesValidation="false"><i class="fa fa-refresh"></i></asp:LinkButton></span>    
                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="dpitem" InitialValue="0"
                                    Display="Dynamic" ErrorMessage="Please Select Product" Text="(*) Required" ValidationGroup="item" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3"  style="display:none">
                                <label>Select BOM</label>
                               
                                    <asp:DropDownList ID="ddlBOM" runat="server"  Enabled="false"  data-placeholder="Select BOM" CssClass="form-control select2"  TabIndex="14"></asp:DropDownList>
                                   
                              
                               
                            </div>
                            <div class="col-md-3">
                                <label>UOM <span class="required">* </span></label>
                               
                                    <asp:DropDownList ID="dpuom" runat="server" AutoPostBack="true" data-placeholder="Select UOM" CssClass="form-control select2" TabIndex="15"></asp:DropDownList>
                                    <span class="input-group-btn" style="display:none">
                                        <asp:LinkButton ID="lbtnuom" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="dpuom" InitialValue="0"
                                    Display="Dynamic" ErrorMessage="Please Select UOM" Text="(*) Required" ValidationGroup="item" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3">
                                <label class="control-label">
                                    Qty:<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtqty" TextMode="Number" Placeholder="Enter Qty" ClientIDMode="Static" onkeyup="tSpeedValue(this)" class="form-control" TabIndex="16" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="txtqty" 
                                    Display="Dynamic" ErrorMessage="Please Enter Quantity" Text="(*) Required" ValidationGroup="item" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>

                        </div>

                        <div class="row" style="margin-left: 2px; margin-right: 2px">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Manufacturer Name</label>
                                    <asp:TextBox ID="txtManufacturer" placeholder="Enter Manufacturer Name" CssClass="form-control" TabIndex="17" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label>Equipment Type</label>
                                    <asp:TextBox ID="txtEquipment"  placeholder="Enter Equipment Type" CssClass="form-control" TabIndex="18" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label>Manufactured Date</label>
                                    <asp:TextBox ID="txtManufacturedDate" CssClass="form-control" TabIndex="19" runat="server"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="txtManufacturedDate" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px;">
                                <div class="col-md-3">
                                    <label>Application Type<span class="required">*</span></label>
                                    
                                        <asp:DropDownList ID="ddlapplicationtype" runat="server" CssClass="form-control select2" TabIndex="20" data-placeholder="Select Application"></asp:DropDownList>
                                        <span class="input-group-btn" style="display:none">
                                            <asp:LinkButton ID="lbtnapplicationtype" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                   
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlapplicationtype" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select Application" Text="(*) Required" ValidationGroup="item" SetFocusOnError="true" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-3" runat="server" visible="false">
                                    <label class="control-label">Is ?</label>
                                    <asp:RadioButtonList ID="RadioButtonListApp" runat="server" CssClass="radioboxlist form-control" RepeatDirection="Horizontal" TabIndex="21">
                                        <asp:ListItem Selected="True">No</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <div class="col-md-3" runat="server" visible="false" style="margin-top: 27px;">
                                    <asp:LinkButton ID="lbtnatype" runat="server" CausesValidation="false" TabIndex="22" CssClass="btn btn-adn btn-flat"><i class="fa fa-edit"></i>&nbsp;Create</asp:LinkButton>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label>Serial No</label>
                                    <asp:TextBox ID="txtSerialno" placeholder="Enter Serial No" CssClass="form-control" TabIndex="23" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label>Power Unit Consuption</label>
                                    <asp:TextBox ID="txtPowerunitconsuption" placeholder="Enter Power Unit Consuption" CssClass="form-control" TabIndex="24" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label>Cooling Capacity</label>
                                    <asp:TextBox ID="txtCoolingcapacity" placeholder="Enter Cooling Capacity" CssClass="form-control" TabIndex="25" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px;">
                                <div class="col-md-6 form-group">
                                    <label>Machine Type<span class="required">* </span></label>
                                  
                                        <asp:DropDownList ID="ddlmachinetype" runat="server" CssClass="form-control select2" TabIndex="26" data-placeholder="Select Type"></asp:DropDownList>
                                        <span class="input-group-btn" style="display:none">
                                            <asp:LinkButton ID="lbtncreatemachinetype" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                               
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="ddlmachinetype" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" ValidationGroup="item" SetFocusOnError="true" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label>Compressor Type<span class="required">* </span> </label>
                                    
                                        <asp:DropDownList ID="ddlcompressortype" runat="server" class="form-control select2" TabIndex="27" data-placeholder="Select Type"></asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="ddlcompressortype" InitialValue="0"
                                        Display="Dynamic" ErrorMessage="Please Select Compressor" Text="(*) Required" ValidationGroup="item" SetFocusOnError="true" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                        <span class="input-group-btn" style="display:none">
                                            <asp:LinkButton ID="lbtncompressortype" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                   
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px;">
                                <div class="col-md-6">
                                    <label>Number of Composers in one circuit</label>
                                    <asp:TextBox ID="txtNumberofcomposers" TextMode="Number" placeholder="Enter Number of Composers" CssClass="form-control" TabIndex="28" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label>Number of circuits</label>
                                    <asp:TextBox ID="txtNumberofcircuits" TextMode="Number" placeholder="Enter Number of circuits" CssClass="form-control" TabIndex="29" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label>Hot gas discharge line size</label>
                                    <asp:TextBox ID="txtHotgas" placeholder="Enter Hot gas line size"  CssClass="form-control" TabIndex="30" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px;">
                                <div class="col-md-6">
                                    <label>Type of refrigerant</label>
                                    <asp:TextBox ID="txtRefrigeranttype" placeholder="Enter Type of refrigerant" CssClass="form-control" TabIndex="31" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label>Annual power usage</label>
                                    <asp:TextBox ID="txtAnualpusage" placeholder="Enter Annual power usage" CssClass="form-control" TabIndex="32" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label>Average daily hours</label>
                                    <asp:TextBox ID="txtAveragedhrs" TextMode="Number" placeholder="Enter Average daily hours" CssClass="form-control" TabIndex="33" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px;">
                                <div class="col-md-6 form-group">
                                    <label>Days run per year</label>
                                    <asp:TextBox ID="txtDayspyear" placeholder="Enter Days run per year" CssClass="form-control" TabIndex="34" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>

                                </div>
                                <div class="col-md-6 form-group">
                                    <label>Electricty rate per KWH</label>
                                    <asp:TextBox ID="txtEratepkwh" TextMode="Number" placeholder="Enter Electricty rate per KWH" CssClass="form-control" TabIndex="35" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px;">
                                <div class="col-md-6 form-group">
                                    <label>Percentage of Operation per hour</label>
                                    <asp:TextBox ID="txtPoophr"  placeholder="Enter Percentage of Operation per hour" CssClass="form-control" TabIndex="36" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label>Estimate distance from compressors to proposed Falkon Air Panels Sitting area</label>
                                    <asp:TextBox ID="txtEstdistance" placeholder="Enter Estimate distance from compressors" CssClass="form-control" TabIndex="37" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px; margin-bottom: 10px">
                                <div class="col-md-8 form-group">
                                    <label class="control-label">
                                        Description:<span class="required">* </span>
                                    </label>
                                    <asp:TextBox ID="txtdescription" placeholder="Enter Description" class="form-control" TabIndex="38" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtdescription"
                                        Display="Dynamic" ErrorMessage="Please Enter remarks" Text="(*) Required" ValidationGroup="item" SetFocusOnError="true" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-2 form-group" style="margin-top: 25px; text-align: center">
                                    <asp:FileUpload ID="fileitemlevel" AllowMultiple="true" TabIndex="39" runat="server" />
                                    <%--<input type="file" id="File2" multiple="multiple" name="myfile" runat="server" size="100" style="margin: 10px" />--%>
                                    <asp:HiddenField ID="hffileitemlevel" runat="server" />
                                </div>
                                <div class="col-md-2 form-group" style="margin-top: 35px; text-align: center">
                                    <asp:LinkButton ID="btnaddproduct" runat="server" TabIndex="40" OnClick="btnaddproduct_Click" ValidationGroup="item" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Add Product</asp:LinkButton>
                                    <asp:LinkButton ID="lbtnupdatecontact" Visible="false" runat="server" OnClick="lbtnupdatecontact_Click" ValidationGroup="item" TabIndex="40" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                                    <asp:LinkButton ID="lbtnresetcontact" runat="server" TabIndex="41" OnClick="lbtnresetcontact_Click" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px">
                                <div class="box-body">
                                    <asp:GridView ID="grdproduct" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                        AutoGenerateColumns="False" BorderWidth="1px" OnRowCommand="grdproduct_RowCommand" ShowHeaderWhenEmpty="true"
                                        CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                        CellSpacing="2" EditRowStyle-HorizontalAlign="Center" OnRowDataBound="grdproduct_RowDataBound" DataKeyNames="no" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                        <AlternatingRowStyle BackColor="White" />
                                        <PagerStyle CssClass="csspager" />
                                        <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                        <Columns>
                                            <asp:TemplateField Visible="false">
                                                     <ItemTemplate>
                                                           <img alt = "" style="cursor: pointer" src="images/plus.png" />
                                                             <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                                                            <asp:GridView ID="BOMGrid" runat="server"  AutoGenerateColumns="False" BorderWidth="1px" BackColor="White" ShowHeaderWhenEmpty="true"
                                                CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                                CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White" Visible="false">
                                                                    <Columns>
                                                                            
                                                                            <asp:BoundField ItemStyle-Width="150px" DataField="Itemname" HeaderText="Sub Item" />
                                                                            <asp:BoundField ItemStyle-Width="150px" DataField="Exrta2" HeaderText="Qty" />
                                                                            <asp:BoundField ItemStyle-Width="150px" DataField="SubRate" HeaderText="Rate" />
                                                                    </Columns>
                                                             </asp:GridView>
                                                            </asp:Panel>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                            <asp:TemplateField HeaderText="ItemName">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblItemName" runat="server" Text='<%# Eval("Itemname") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="UOM">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblUOM" runat="server" Text='<%# Eval("UnitofMeasurement") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Qty">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblQty" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>       
                                            
                                            <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Visible="false"  Text='<%# Eval("no") %>'></asp:Label>
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
                    <div class="box box-primary">
                        <div class="row" style="margin-top: 10px">
                            <div class="col-md-3">
                                <label class="control-label">
                                    Next Followup Date
                                </label>
                                <asp:TextBox ID="txtfdate" onkeydown="return false;" class="form-control" TabIndex="42" runat="server"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtfdate" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtfdate"
                                    Display="Dynamic" ErrorMessage="Please Enter remarks" Text="(*) Required" ValidationGroup="followup" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3">
                                <label>Followup Type<span class="required">* </span></label>
                                
                                    <asp:DropDownList ID="dpfollowuptype" runat="server" AutoPostBack="false" data-placeholder="Select Contact Person" CssClass="form-control select2" TabIndex="43"></asp:DropDownList>
                                    <span class="input-group-btn" style="display:none">
                                        <asp:LinkButton ID="lbtnfollowuptype" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="dpfollowuptype" InitialValue="0"
                                    Display="Dynamic" ErrorMessage="Please Enter remarks" Text="(*) Required" ValidationGroup="followup" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            
                            <div class="col-md-3">
                                <label>Status<span class="required">* </span></label>
                              
                                    <asp:DropDownList ID="dpfollowstatus" runat="server" AutoPostBack="false" data-placeholder="Select Conatct Person" CssClass="form-control select2" TabIndex="44"></asp:DropDownList>
                                    <span class="input-group-btn" style="display:none">
                                        <asp:LinkButton ID="lbtnststus2" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="dpfollowstatus" InitialValue="0"
                                    Display="Dynamic" ErrorMessage="Please Enter remarks" Text="(*) Required" ValidationGroup="followup" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="row" style="padding-left: 15px; padding-top: 20px">
                                <div class="col-md-8 form-group">
                                    <label class="control-label">
                                        Remarks:<span class="required">* </span>
                                    </label>
                                    <asp:TextBox ID="txtfremarks" class="form-control" TabIndex="45" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfremarks"
                                        Display="Dynamic" ErrorMessage="Please Enter remarks" Text="(*) Required" ValidationGroup="followup" SetFocusOnError="true" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-4 form-group" style="margin-top: 25px; padding-right: 15px; text-align: center">
                                    <asp:LinkButton ID="lbtnaddfollowup" runat="server" ValidationGroup="followup" OnClick="lbtnaddfollowup_Click" TabIndex="46" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Add Followup</asp:LinkButton>
                                    <asp:LinkButton ID="lbtnupdatefollowup" Visible="false" ValidationGroup="followup" OnClick="lbtnupdatefollowup_Click" runat="server" TabIndex="46" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update Followup</asp:LinkButton>
                                    <asp:LinkButton ID="lbtnresetfollowup" Style="margin: 15px" OnClick="lbtnresetfollowup_Click" runat="server" TabIndex="47" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px; margin-left: 5px">
                                <asp:GridView ID="grdfollowup" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                    AutoGenerateColumns="False" BorderWidth="1px" OnRowCommand="grdfollowup_RowCommand" ShowHeaderWhenEmpty="true"
                                    CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                    CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                    <AlternatingRowStyle BackColor="White" />
                                    <PagerStyle CssClass="csspager" />
                                    <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="NextFolldate">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNextFolldate" runat="server" Text='<%# Eval("NextFolldate") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Followup Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFollowupName" runat="server" Text='<%# Eval("FollowUpType") %>'></asp:Label>
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
                    </div>
                    <div class="box box-primary" style="margin-top: 30px">
                        <div class="row" style="margin-top: 10px">
                            <div class="col-md-12 ">
                                <label class="control-label">Upload Document<span class="required">* </span></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5" style="margin-top: 10px">
                                <%--<input type="file" id="myfile" multiple="multiple" name="myfile" runat="server" size="100" />--%>
                                <asp:FileUpload runat="server" AllowMultiple="true"  TabIndex="48" ID="fupload"  />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="fupload"
                                    Display="Dynamic" ErrorMessage="Please Enter remarks" Text="(*) Required" ValidationGroup="Filegrp" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                                <asp:Label ID="filename" Text="" runat="server" />
                                <asp:HiddenField ID="hffileno" runat="server" />
                            </div>
                            <div class="col-md-5">
                                <asp:Button ID="Button12" runat="server" ValidationGroup="Filegrp" Text="Add" TabIndex="49" OnClick="Button1_Click" CssClass="btn btn-bitbucket btn-flat" />
                                <asp:LinkButton ID="btnresetfile" Style="margin: 15px" OnClick="btnresetfile_Click" runat="server" TabIndex="50" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Cancel</asp:LinkButton>
                                <br />
                                <asp:Label ID="Span1" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px; margin-left: 5px">
                            <asp:GridView ID="grdfiles" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                AutoGenerateColumns="False" BorderWidth="1px" OnRowCommand="grdfiles_RowCommand" ShowHeaderWhenEmpty="true"
                                CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                <AlternatingRowStyle BackColor="White" />
                                <PagerStyle CssClass="csspager" />
                                <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                <Columns>
                                    <asp:TemplateField HeaderText="File Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("FileName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="File Path">
                                        <ItemTemplate>
                                            <asp:Label ID="lblpath" runat="server" Text='<%# Eval("FilePath") %>'></asp:Label>
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
                    <div class="box box-primary" style="margin-top: 30px">
                        <div class="row" style="margin-top: 10px">
                            <div class="col-md-10"></div>
                            <div class="col-md-2">
                                <asp:LinkButton ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" ValidationGroup="Emst" TabIndex="51" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                                <asp:LinkButton ID="btnresetinq" Style="margin: 15px" OnClick="btnresetinq_Click" runat="server" TabIndex="52" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                
           </div>
        </section>
    </div>
    
     <asp:ModalPopupExtender ID="mpstatus" runat="server" PopupControlID="pnlstatus" TargetControlID="lbtnstatus"
            CancelControlID="btnclosestatus" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlstatus" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosestatus" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Status</h4>
                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Status <span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtcreatestatus" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcreatestatus"
                                                            Display="Dynamic" ErrorMessage="Please Enter Status " ValidationGroup="statusgrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtncreatedept" OnClick="lbtncreatestatus_Click" ValidationGroup="sgrp" runat="server" TabIndex="2" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton6" OnClick="LinkButton6_Click" runat="server" TabIndex="3" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
        <asp:ModalPopupExtender ID="mpcustomer" runat="server" PopupControlID="pnlsource" TargetControlID="lbtnsource"
            CancelControlID="btnclosesource" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlsource" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosesource" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Source</h4>
                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <label class="control-label">
                                                                Source<span class="required">* </span>
                                                            </label>
                                                            <asp:TextBox ID="txtsource" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtsource"
                                                                Display="Dynamic" ErrorMessage="Please Department Name" ValidationGroup="sourcegrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                                CssClass="validate"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group pull-right">
                                                    <asp:LinkButton ID="LinkButton9" OnClick="lbtncreatesource_Click" ValidationGroup="sourcegrp" runat="server" TabIndex="2" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton10" OnClick="LinkButton10_Click" runat="server" TabIndex="3" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
            <asp:Button ID="Button1" runat="server" Text="Close" />
        </asp:Panel>
        <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnluom" TargetControlID="lbtnuom"
            CancelControlID="btncloseuom" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnluom" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btncloseuom" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Unit of Mesurement</h4>
                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <label class="control-label">
                                                                Unit<span class="required">* </span>
                                                            </label>
                                                            <asp:TextBox ID="txtcreateuom" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcreateuom"
                                                                Display="Dynamic" ErrorMessage="Please Department Name" ValidationGroup="atgrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                                CssClass="validate"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group pull-right">
                                                    <asp:LinkButton ID="LinkButton19" OnClick="createuom_Click" ValidationGroup="uomgrp" runat="server" TabIndex="2" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                    <asp:LinkButton ID="LinkButton11" OnClick="LinkButton11_Click" runat="server" TabIndex="3" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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

            <asp:Button ID="Button4" runat="server" Text="Close" />
        </asp:Panel>
        <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" PopupControlID="pnlapplicationtype" TargetControlID="lbtnapplicationtype"
            CancelControlID="btncloseapplicationtype" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlapplicationtype" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btncloseapplicationtype" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Application Type</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <label class="control-label">
                                                              Application  Type<span class="required">* </span>
                                                            </label>
                                                            <asp:TextBox ID="txtapplicationtype" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtapplicationtype"
                                                                Display="Dynamic" ErrorMessage="Please Department Name" ValidationGroup="ApGrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                                CssClass="validate"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group pull-right">
                                                    <asp:LinkButton ID="LinkButton90" OnClick="lbtncreateapplicationtype_Click" ValidationGroup="ApGrp" runat="server" TabIndex="2" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                    <asp:LinkButton ID="LinkButton4" OnClick="LinkButton4_Click" runat="server" TabIndex="3" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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

            <asp:Button ID="Button8" runat="server" Text="Close" />
        </asp:Panel>
        <asp:ModalPopupExtender ID="ModalPopupExtender4" runat="server" PopupControlID="pnlmachinetype" TargetControlID="lbtncreatemachinetype"
            CancelControlID="btnclosemachinetype" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlmachinetype" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosemachinetype" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Machine Type</h4>
                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                           Machine Type <span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtmachinetype" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtmachinetype"
                                                            Display="Dynamic" ErrorMessage="Please Group Name" ValidationGroup="mtgroup" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="LinkButton13" OnClick="lbtncreatmachinetype_Click" ValidationGroup="mtgroup" runat="server" TabIndex="2" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton14" OnClick="LinkButton14_Click" runat="server" TabIndex="3" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
        <asp:ModalPopupExtender ID="ModalPopupExtender5" runat="server" PopupControlID="pnlcompressortype" TargetControlID="lbtncompressortype"
            CancelControlID="btnclosecompressortype" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlcompressortype" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosecompressortype" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Compressor Type</h4>
                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                           Compressor Type <span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtcompressortype" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtcompressortype"
                                                            Display="Dynamic" ErrorMessage="Please Group Name" ValidationGroup="ctgroup" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="LinkButton15" OnClick="lbtncreatecompressortype_Click" ValidationGroup="ctgroup" runat="server" TabIndex="2" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton16" OnClick="LinkButton16_Click" runat="server" TabIndex="3" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
            <asp:Button ID="Button6" runat="server" Text="Close" />
        </asp:Panel>
        <asp:ModalPopupExtender ID="ModalPopupExtender7" runat="server" PopupControlID="pnlfollowup" TargetControlID="lbtnfollowuptype"
            CancelControlID="btnclosefollowup" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlfollowup" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosefollowup" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Followup Type</h4>
                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                          Followup  Type<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtfollowup" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtfollowup"
                                                            Display="Dynamic" ErrorMessage="Please Enter Status " ValidationGroup="ftgrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="LinkButton18" OnClick="lbtnaddfollowuptype_Click" ValidationGroup="ftgrp" runat="server" TabIndex="2" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton20" OnClick="LinkButton20_Click" runat="server" TabIndex="3" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
            <asp:Button ID="Button10" runat="server" Text="Close" />
        </asp:Panel>
        <asp:ModalPopupExtender ID="ModalPopupExtender8" runat="server" PopupControlID="pnlststus2" TargetControlID="lbtnststus2"
            CancelControlID="btnclosepnlststus2" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlststus2" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosepnlststus2" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create Status</h4>
                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Status<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtcreatestatus2" class="form-control" TabIndex="1" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtcreatestatus2"
                                                            Display="Dynamic" ErrorMessage="Please Enter Status " ValidationGroup="s2grp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="LinkButton5" OnClick="lbtnaddstatus2_Click" ValidationGroup="s2grp" runat="server" TabIndex="2" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton21" OnClick="LinkButton21_Click" runat="server" TabIndex="3" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
            <asp:Button ID="Button11" runat="server" Text="Close" />
        </asp:Panel>


</asp:Content>

