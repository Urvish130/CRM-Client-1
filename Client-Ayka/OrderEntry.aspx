<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="OrderEntry.aspx.cs" Inherits="OrderEntry" %>
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
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
       <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">

        function tSpeedValue(txt) {

            debugger;

            var qty = txtqty.value;
            var rate = txtrate.value;
            var Amount = qty * rate;
            var GST = txtItemGST.value;
             var Discount = txtItemDiscount.value;
            txtamount.value = Amount;
            txtItemFinal.value = Amount;              
            if (Discount > 0 && Discount!="")
            {
                if (Discount > 0 && Discount < 100)
                {
                    var DiscountPrice= (Amount * Discount) / 100;
                    var AmountU = Amount - DiscountPrice;
                   txtItemFinal.value = AmountU.toFixed(2);
                    var Benifitu = (AmountU * 0.4) * 0.25;
                    var fix=Number(Benifitu).toFixed(2);
                    txtItemBenefit.value = fix;
                    var NetValue = AmountU - fix;
                    txtItemNetValue.value = NetValue.toFixed(2);
                    var GSTPrice = (AmountU * GST) / 100;
                    var TotalValue = +AmountU + +GSTPrice;
                    txtItemTotalValue.value = TotalValue.toFixed(2);
                    txtItemGSTTotal.value= GSTPrice.toFixed(2);
                }
                else
                {
                    var Difference = Discount-100 ;
                    var Margin= (Amount * Difference) / 100;
                    var AmountU = +Amount + +Margin;
                    txtItemFinal.value = AmountU.toFixed(2);
                    var Benifitu = (AmountU * 0.4) * 0.25;
                    var fix = Number(Benifitu).toFixed(2);
                    var NetValue = AmountU - fix;
                    txtItemBenefit.value = fix;
                    txtItemNetValue.value = NetValue.toFixed(2);
                       var GSTPrice = (AmountU * GST) / 100;
                    var TotalValue = +AmountU + +GSTPrice;
                    txtItemTotalValue.value = TotalValue.toFixed(2);
                       txtItemGSTTotal.value= GSTPrice.toFixed(2);
                }
            }

            else
            {
                 
                   var AmountU = Amount;
                    var Benifitu = (AmountU * 0.4) * 0.25;
                var fix = Number(Benifitu).toFixed(2);
                 txtItemFinal.value = parseFloat(AmountU).toFixed(2);
                    txtItemBenefit.value = fix;
                    var Finalprice = Amount - fix;
                txtItemNetValue.value = Finalprice.toFixed(2);
                 var GSTPrice = (AmountU * GST) / 100;
                    var TotalValue = +AmountU + +GSTPrice;
                txtItemTotalValue.value = TotalValue.toFixed(2);
                   txtItemGSTTotal.value= GSTPrice.toFixed(2);
            }

        }
        function CountData(txt) {
            debugger;
            var Discount = txtItemDiscount.value;
            var Amount = txtamount.value;
            var GST = txtItemGST.value;
           
            if (Discount > 0 && Discount!="")
            {
                if (Discount > 0 && Discount < 100)
                {
                    var DiscountPrice= (Amount * Discount) / 100;
                    var AmountU = Amount - DiscountPrice;
                   txtItemFinal.value = AmountU.toFixed(2);
                    var Benifitu = (AmountU * 0.4) * 0.25;
                    var fix=Number(Benifitu).toFixed(2);
                    txtItemBenefit.value = fix;
                    var NetValue = AmountU - fix;
                    txtItemNetValue.value = NetValue.toFixed(2);
                    var GSTPrice = (AmountU * GST) / 100;
                    var TotalValue = +AmountU + +GSTPrice;
                    txtItemTotalValue.value = TotalValue.toFixed(2);
                       txtItemGSTTotal.value= GSTPrice.toFixed(2);
                }
                else
                {
                    var Difference = Discount-100 ;
                    var Margin= (Amount * Difference) / 100;
                    var AmountU = +Amount + +Margin;
                    txtItemFinal.value = AmountU.toFixed(2);
                    var Benifitu = (AmountU * 0.4) * 0.25;
                    var fix = Number(Benifitu).toFixed(2);
                    var NetValue = AmountU - fix;
                    txtItemBenefit.value = fix;
                    txtItemNetValue.value = NetValue.toFixed(2);
                       var GSTPrice = (AmountU * GST) / 100;
                    var TotalValue = +AmountU + +GSTPrice;
                    txtItemTotalValue.value = TotalValue.toFixed(2);
                       txtItemGSTTotal.value= GSTPrice.toFixed(2);
                }
            }
            else
            {
                 
                    var AmountU = Amount;
                var Benifitu = (AmountU * 0.4) * 0.25;
                 txtItemFinal.value = parseFloat(AmountU).toFixed(2);
                    var fix=Number(Benifitu).toFixed(2);
                    txtItemBenefit.value = fix;
                    var Finalprice = Amount - fix;
                txtItemNetValue.value = Finalprice.toFixed(2);
                 var GSTPrice = (AmountU * GST) / 100;
                   var TotalValue = +AmountU + +GSTPrice;
                txtItemTotalValue.value = parseFloat(TotalValue).toFixed(2);
                   txtItemGSTTotal.value= GSTPrice.toFixed(2);
            }
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

        .modal1 {
            display: block;
            position: fixed;
            z-index: 10000;
            padding-top: 100px;
            left: 35%;
            top: 25%;
            width: 50%;
            height: 100%;
            overflow: auto;
            /* background-color: rgb(0,0,0); */
            /* background-color: rgba(0,0,0,0.4); */
        }

        .modal1 {
            background: none;
        }

        /* Modal Content */
        .modal-content1 {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        .box.box-primary {
            border-top-color: #3c8dbc;
            margin: 17px 0;
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

        function ShowModel() {
            document.getElementById("myModal").style.display = "block"
        }

        function HideModel() {
            debugger;
            var modal = document.getElementById("myModal");
            modal.style.display = "none";
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
            <h1>Order Entry</h1>
            <ol class="breadcrumb">
                <li><a href="Default.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="OrderRegistry.aspx">Order</a></li>
                <li class="active">Order Entry</li>
                <asp:Label ID="lblqno" runat="server" Text=""></asp:Label>

                <asp:Label ID="lblcomno" runat="server" Visible="true" Text=""></asp:Label>
                <asp:Label ID="lblid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblloginid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblrole" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblbomid" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="lblSubGridTotal" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Label ID="gridcount" runat="server" Visible="false" Text=""></asp:Label>
                 <asp:Label ID="lblInq" runat="server" Visible="false" Text=""></asp:Label>
            </ol>
        </section>

        <section class="content">
            <div id="myModal" runat="server" visible="false" class="modal1">

                <!-- Modal content -->
                <div class="modal-content1">


                    <h4 class="modal-title" style="text-align: center">Update BOM Data</h4>
                    <asp:Button runat="server" ID="closebtn" Text="×" OnClick="closebtn_Click"></asp:Button>

                    <div class="box-body" style="opacity: 1">
                        <div class="box box-primary">
                            <div class="col-md-12">
                            </div>
                            <div class="row" style="margin-top: 25px">
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        Qty:<span class="required">* </span>
                                    </label>
                                    <asp:TextBox runat="server" TextMode="Number"  class="form-control" ID="txtmodelqty"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmodelqty"
                                Display="Dynamic" ErrorMessage="Please Enter Qty" Text="(*) Required" ValidationGroup="mdl" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        Rate:<span class="required">* </span>
                                    </label>
                                    <asp:TextBox runat="server" ReadOnly="true" TextMode="Number"  class="form-control" ID="txtmodelrate"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtmodelrate"
                                Display="Dynamic" ErrorMessage="Please Enter Rate" Text="(*) Required" ValidationGroup="mdl" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-12 form-group" style="text-align: right">
                                    <asp:LinkButton ID="btnBOMUpdate" OnClick="btnBOMUpdate_Click"  ValidationGroup="mdl" runat="server" TabIndex="35" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton6" Visible="false" runat="server"  CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Reset</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <div id="TermsModel" runat="server" visible="false" class="modal1">

                <!-- Modal content -->
                <div class="modal-content1">
                     <asp:Label ID="TermsID" runat="server" Visible="false" Text=""></asp:Label>

                    <h4 class="modal-title" style="text-align: center">Update Terms And Condition</h4>
                    <asp:Button runat="server" ID="Button3" Text="×" CausesValidation="false" OnClick="Button3_Click"></asp:Button>

                    <div class="box-body" style="opacity: 1">
                        <div class="box box-primary">
                            
                            <div class="row">
              
                         <div class="col-md-12">
                   
                     
                            <div class="form-group" >
                                <label class="control-label">
                                    Title:<span class="required">* </span>
                                </label>
                               
                                <asp:TextBox ID="txtName" CssClass ="form-control" TabIndex="1" runat="server" placeholder="Enter Title"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="txtName"
                                    Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required" ValidationGroup="termgrp" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                                <div class="box-body ">
                                     <label class="control-label">
                                    Description:<span class="required">* </span>
                                </label>
                          <asp:TextBox ID="Txttandc" runat="server" Height="250px" Width="100%" BorderStyle="Double" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="Txttandc"
                                Display="Dynamic" ErrorMessage="Please Enter Rate" Text="(*) Required" ValidationGroup="termgrp" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                                    <asp:HtmlEditorExtender ID="HtmlEditorExtender1" TargetControlID="Txttandc" EnableSanitization="false" runat="server"  ></asp:HtmlEditorExtender>
                            </div> </div> 
                        
                          <asp:LinkButton ID="LinkButton7" runat="server" OnClick="BtnUpdate_Click" ValidationGroup="termgrp" TabIndex="19" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton8" runat="server" TabIndex="20" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>                

                            </div>
                    
                     
               
                               
             </div>
                        </div>
                    </div>

                </div>

            </div>
            <div class="box box-primary">

                 <div id="alert_container"></div>
                <!-- /.box-header -->
                <div class="box-body">

                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                No:<span class="required">* </span>
                            </label>
                            <asp:TextBox ID="txtno"  class="form-control" TabIndex="1" ReadOnly="true" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtno"
                                Display="Dynamic" ErrorMessage="Please Enter Name" Text="(*) Required"  ValidationGroup="quot"  SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                Date:<span class="required">*</span>
                            </label>
                            <asp:TextBox ID="txtdate" onkeydown="return false;" class="form-control" TabIndex="2" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender3" TargetControlID="txtdate" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtdate"
                                Display="Dynamic" ErrorMessage="Please Enter Date" Text="(*) Required"  ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Name of Customer <span class="required">* </span></label>
                            <div class="input-group">
                                <asp:DropDownList ID="dpcust" runat="server" OnSelectedIndexChanged="dpcust_SelectedIndexChanged" AutoPostBack="true" data-placeholder="Select Customer" CssClass="form-control select2" TabIndex="3"></asp:DropDownList>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="dpcust"
                                Display="Dynamic" ErrorMessage="Please Select Customer" InitialValue="0" Text="(*) Required" ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                                <span class="input-group-btn">
                                    <asp:HyperLink ID="Custbtn" runat="server" href="Customer.aspx" Target="_blank" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:HyperLink>
                                    <asp:LinkButton ID="lbtncust" runat="server" OnClick="RefreshCustGroup" CssClass="btn btn-success btn-flat" CausesValidation="false"><i class="fa fa-refresh"></i></asp:LinkButton></span>
                            </div>


                        </div>
                        <div class="col-md-6 form-group">
                            <label>Status <span class="required">* </span></label>


                            <div class="input-group">
                                <asp:DropDownList ID="dpstatus" runat="server" AutoPostBack="false" data-placeholder="Select Customer" CssClass="form-control select2" TabIndex="4"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="dpstatus"
                                Display="Dynamic" ErrorMessage="Please Select Status" InitialValue="0" Text="(*) Required"  ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                                <span class="input-group-btn">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                            </div>


                        </div>
                    </div>



                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Contact Person<span class="required">* </span></label>


                            <div class="input-group">
                                <asp:DropDownList ID="dpcontactper" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dpcontactper_SelectedIndexChanged" data-placeholder="Select Contact Person" CssClass="form-control select2" TabIndex="5"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="dpcontactper"
                                Display="Dynamic" ErrorMessage="Please Select Contact" InitialValue="0" Text="(*) Required" ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                                <span class="input-group-btn">
                                    <asp:HyperLink ID="CustContactbtn" runat="server" href="AddCustomerContact.aspx" Target="_blank" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:HyperLink>
                                    <asp:LinkButton ID="lbtncustcontact" runat="server" OnClick="RefreshCustCOntactGroup" CssClass="btn btn-success btn-flat" CausesValidation="false"><i class="fa fa-refresh"></i></asp:LinkButton>
                                </span>
                            </div>


                        </div>
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                Contact no
                            </label>
                            <asp:TextBox ID="txtcontactno" class="form-control" TabIndex="6" runat="server"></asp:TextBox>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Department<span class="required">*</span></label>


                            <asp:DropDownList ID="ddlDept" runat="server" AutoPostBack="false" Enabled="true" data-placeholder="Select Department" CssClass="form-control select2" TabIndex="7"></asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="ddlDept"
                                Display="Dynamic" ErrorMessage="Please Select Department" InitialValue="0" Text="(*) Required"  ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                            
                        </div>
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                Designation<span class="required">*</span>
                            </label>
                            <asp:DropDownList ID="ddldesign" runat="server" AutoPostBack="false" Enabled="true" data-placeholder="Select Designation" CssClass="form-control select2" TabIndex="8"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="ddldesign"
                                Display="Dynamic" ErrorMessage="Please Select Designation" InitialValue="0" Text="(*) Required"  ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                Email Id<span class="required">*</span>
                            </label>
                            <asp:TextBox ID="txtemail" class="form-control" TabIndex="9" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
                                ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                Display="Dynamic" ErrorMessage="Invalid email address" />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtemail"
                                Display="Dynamic" ErrorMessage="Please Enter Email" Text="(*) Required" ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Source<span class="required">*</span></label>


                            <div class="input-group">
                                <asp:DropDownList ID="dpsource" runat="server" AutoPostBack="false" data-placeholder="Select Source" CssClass="form-control select2" TabIndex="10"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="dpsource"
                                Display="Dynamic" ErrorMessage="Please Select Source" InitialValue="0" Text="(*) Required" ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                                <span class="input-group-btn">
                                    <asp:LinkButton ID="lbtnsource" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                            </div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                MobileNo:<span class="required">* </span>
                            </label>
                            <asp:TextBox ID="txtmobileno" class="form-control" TabIndex="11" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmobileno"
                                Display="Dynamic" ErrorMessage="Please Enter MobileNo" Text="(*) Required" ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                MobileNo(2)
                            </label>
                            <asp:TextBox ID="txtmobileno2" class="form-control" TabIndex="12" runat="server"></asp:TextBox>

                        </div>
                    </div>
                    <div class="row" style="display:none">
                        <div class="col-md-6 form-group">
                            <label class="control-label">
                                Cover Letter<span class="required">* </span>
                            </label>
                            <asp:DropDownList ID="dpcoverletter" runat="server" AutoPostBack="false" Enabled="true" data-placeholder="Select Cover letter" CssClass="form-control select2" TabIndex="13"></asp:DropDownList>
                      
                        </div>

                          <div class="col-md-6 form-group">
                            <label class="control-label">
                                Quotation For<span class="required">* </span>
                            </label>
                             <asp:TextBox ID="txtquotfor" class="form-control" TabIndex="12" runat="server"></asp:TextBox>
                       
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label class="control-label">
                                Remarks
                            </label>
                            <asp:TextBox ID="txtremarks" class="form-control" TabIndex="14" TextMode="MultiLine" runat="server"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <div class="box box-primary">
                        <div class="row">

                            <div class="col-md-4 form-group">
                                <label>Select Product <span class="required">* </span></label>


                                <div class="input-group">
                                    <asp:DropDownList ID="dpitem" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dpitem_SelectedIndexChanged" data-placeholder="Select Product" CssClass="form-control select2" TabIndex="15"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dpitem"
                                        Display="Dynamic" ErrorMessage="Please Select Item" InitialValue="0" Text="(*) Required" ValidationGroup="Itemgrp" SetFocusOnError="true" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:HyperLink ID="HyperLink2" runat="server" href="Item.aspx" Target="_blank" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:HyperLink>
                                        <asp:LinkButton ID="LinkButton15" runat="server" OnClick="RefreshItem" CssClass="btn btn-success btn-flat" CausesValidation="false"><i class="fa fa-refresh"></i></asp:LinkButton>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-4 form-group">
                                <label>Select BOM </label>


                                <div class="input-group">
                                    <asp:DropDownList ID="ddlBOM" runat="server" AutoPostBack="true" data-placeholder="Select Product" CssClass="form-control select2" TabIndex="16"></asp:DropDownList>

                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="HyperLink1" runat="server" OnClick="HyperLink1_Click"  CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="RefreshItem" CssClass="btn btn-success btn-flat" CausesValidation="false"><i class="fa fa-refresh"></i></asp:LinkButton>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-4 form-group">
                                <label>UOM <span class="required">* </span></label>


                                <div class="input-group">
                                    <asp:DropDownList ID="dpuom" runat="server" AutoPostBack="true" data-placeholder="Select UOM" CssClass="form-control select2" TabIndex="17"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dpuom"
                                        Display="Dynamic" ErrorMessage="Please Select UOM" InitialValue="0" Text="(*) Required" ValidationGroup="Itemgrp" SetFocusOnError="true" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                    <span class="input-group-btn">
                                        <asp:LinkButton ID="lbtnuom"  runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                </div>
                            </div>


                        </div>
                        <div class="row">
                            <div class=" col-md-2 form-group">
                                <label class="control-label">
                                    HSN Code:<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txthsncode" ReadOnly="true" ClientIDMode="Static" class="form-control" TabIndex="18" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txthsncode"
                                    Display="Dynamic" ErrorMessage="Please Enter  HSN Code" Text="(*) Required" ValidationGroup="Itemgrp" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-2 form-group">
                                <label class="control-label">
                                    Qty:<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtqty" ClientIDMode="Static" onkeyup="tSpeedValue(this)" class="form-control" TabIndex="19" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtqty"
                                    Display="Dynamic" ErrorMessage="Please Enter Qty" Text="(*) Required" ValidationGroup="Itemgrp" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-2 form-group">
                                <label class="control-label">
                                    Rate:<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtrate" ReadOnly="true" ClientIDMode="Static" class="form-control" TabIndex="20" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtrate"
                                    Display="Dynamic" ErrorMessage="Please Enter Rate" Text="(*) Required" ValidationGroup="Itemgrp" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-2 form-group">
                                <label class="control-label">
                                    Amount:<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtamount" ClientIDMode="Static"  class="form-control" TabIndex="21" runat="server"></asp:TextBox>
                               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtamount"
                                    Display="Dynamic" ErrorMessage="Please Enter Amount" Text="(*) Required" ValidationGroup="Itemgrp" SetFocusOnError="true" ForeColor="Red"
                                    CssClass="validate"></asp:RequiredFieldValidator>--%>
                            </div>
                            <div class="col-md-2 form-group">
                            <label class="control-label">
                                Discount/Margin
                            </label>
                            <asp:TextBox ID="txtItemDiscount" ClientIDMode="Static" Text="0" onkeyup="CountData(this)" class="form-control" TabIndex="6" runat="server"></asp:TextBox>

                        </div>
                            <div class="col-md-2 form-group">
                            <label class="control-label">
                                Final Basic Price
                            </label>
                            <asp:TextBox  ClientIDMode="Static" ID="txtItemFinal" class="form-control" TabIndex="6" runat="server"></asp:TextBox>
                                <div style="display:none">
                                    <asp:TextBox   ClientIDMode="Static" ID="txtItemGSTTotal" class="form-control" TabIndex="6" runat="server"></asp:TextBox>
                                </div>
                                
                        </div>
                            
                            
                            <div class="col-md-2 form-group">
                            <label class="control-label">
                                AD Benefit
                            </label>
                            <asp:TextBox    ClientIDMode="Static" ID="txtItemBenefit" class="form-control" TabIndex="6" runat="server"></asp:TextBox>

                        </div>
                            <div class="col-md-2 form-group">
                            <label class="control-label">
                              Net Value
                            </label>
                            <asp:TextBox  ClientIDMode="Static" ID="txtItemNetValue" class="form-control" TabIndex="6" runat="server"></asp:TextBox>

                        </div>

                            <div class="col-md-2 form-group">
                            <label class="control-label">
                               GST%(on Final Basic Price)
                            </label>
                            <asp:TextBox  ClientIDMode="Static" ID="txtItemGST" class="form-control" TabIndex="6" runat="server"></asp:TextBox>

                        </div>
                            <div class="col-md-2 form-group">
                            <label class="control-label">
                             Total Value
                            </label>
                            <asp:TextBox  ClientIDMode="Static" ID="txtItemTotalValue" class="form-control" TabIndex="6" runat="server"></asp:TextBox>

                        </div>
                            <div class="col-md-2 form-group" style="margin-top: 25px; text-align: left">

                                <asp:LinkButton ID="btnaddproduct" runat="server"  OnClick="btnaddproduct_Click" ValidationGroup="Itemgrp" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Add Product</asp:LinkButton>
                                <asp:LinkButton ID="lbtnupdatecontact" Visible="false" runat="server" OnClick="lbtnupdatecontact_Click"  ValidationGroup="Itemgrp" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                                <asp:LinkButton ID="lbtnresetcontact" runat="server"  CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                            </div>
                        </div>




                        <div class="row">

                            <div class="box-body">
                                <asp:GridView ID="grdproduct" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                    AutoGenerateColumns="False" BorderWidth="1px" OnRowCommand="grdproduct_RowCommand" ShowHeaderWhenEmpty="true"
                                    CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2" OnRowDataBound="grdproduct_RowDataBound" DataKeyNames="no"
                                    CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                    <AlternatingRowStyle BackColor="White" />
                                    <PagerStyle CssClass="csspager" />
                                    <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                    <Columns>

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <img alt="" style="cursor: pointer" src="images/plus.png" />
                                                <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                                                    <asp:GridView ID="BOMGrid" runat="server" AutoGenerateColumns="False" BorderWidth="1px" BackColor="White" ShowHeaderWhenEmpty="true"
                                                        CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2" OnRowCommand="BOMGrid_RowCommand"
                                                        CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                                        <Columns>
                                                            <asp:BoundField ItemStyle-Width="150px" DataField="Name" HeaderText="BOM Name" />
                                                            <asp:BoundField ItemStyle-Width="150px" DataField="Itemname" HeaderText="Sub Item" />
                                                            <asp:BoundField ItemStyle-Width="150px" DataField="Qty" HeaderText="Qty" />
                                                            <asp:BoundField ItemStyle-Width="150px" DataField="SubRate" HeaderText="Rate" />
                                                            <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Edit">
                                                                <ItemTemplate>

                                                                   
                                                                        <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                                            runat="server" CssClass="imgbtnalign1"  CommandArgument='<%# Eval("Id") %>'
                                                                        CommandName="editbom" CausesValidation="False" />
                                                                  


                                                                </ItemTemplate>
                                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Delete">
                                                                <ItemTemplate>
                                                                    <asp:ImageButton ID="btnDelete2" ImageUrl="images/delete.png" ToolTip="Click here to delete"
                                                                        runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Id")+","+ Eval("ItemNo") %>'
                                                                        CommandName="deletebom" CausesValidation="False" OnClientClick=" return confirm('Do you want to delete ?');" />

                                                                </ItemTemplate>
                                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                            </asp:TemplateField>
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

                                                <%-- <asp:Label ID="lblNo" runat="server" Visible="false" Text='<%# Eval("no") %>'></asp:Label>--%>
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
                                        <asp:TemplateField HeaderText="Rate">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRate" runat="server" Text='<%# Eval("Rate") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        
                                        <asp:TemplateField HeaderText="Amount">
                                            <ItemTemplate>
                                                <asp:TextBox ID="txtAmountTotal" Text='<%# Eval("Amount") %>' onchange="sumBudgetedValues(this)" runat="server" Visible="false"></asp:TextBox>
                                                <asp:Label ID="lblAmount" runat="server" CssClass="yourclass" Text='<%# Eval("Amount") %>' onblur="calculation(this.value)"></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Discount/Margin">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldisc" runat="server" Text='<%# Eval("Discount") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Final base Price">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFinal" runat="server" Text='<%# Eval("FinalbasePrice") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="GST Price">
                                            <ItemTemplate>
                                                <asp:Label ID="lblgstprice" runat="server" Text='<%# Eval("GST") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="ADBenefit">
                                            <ItemTemplate>
                                                <asp:Label ID="lblADBenefit" runat="server" Text='<%# Eval("ADBenefit") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Net Value">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNetValue" runat="server" Text='<%# Eval("NetValue") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Total Value">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTotalValue" runat="server" Text='<%# Eval("TotalValue") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Edit">
                                            <ItemTemplate>

                                                <asp:Label ID="Label1" runat="server" Visible="false" Text='<%# Eval("no") %>'></asp:Label>
                                                <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                    runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Id") %>'
                                                    CommandName="editdata" CausesValidation="False" />

                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btnDelete1" ImageUrl="images/delete.png" ToolTip="Click here to delete"
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


                    </div>

                </div>
                <div class="box-body">
                    <div class="box box-primary" >
                        <div class="row">
                            
                            <div class="col-md-3 form-group">
                                <label class="control-label">
                                    Total Cost:<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txttotalcost"  ClientIDMode="Static"  class="form-control" TabIndex="22" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txttotalcost"
                                Display="Dynamic" ErrorMessage="Please Enter Total Cost" Text="(*) Required" ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3 form-group" style="display:none">
                                <label class="control-label">
                                    Discount/Margin:<span class="required">* </span>
                                </label>
                                 <asp:TextBox ID="txtMain" runat="server" Visible="false" Text=""></asp:TextBox>
                                <asp:TextBox ID="txtTotalDiscount" Text="0" onkeyup="CountData(this.id)" ClientIDMode="Static" class="form-control" TabIndex="23" runat="server"></asp:TextBox>
                            
                            </div>
                            <div class="col-md-3 form-group">
                                <label class="control-label">
                                  Total  AD Benefit:<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtTotalBenefit"  Text="0" ClientIDMode="Static" class="form-control" TabIndex="24" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtTotalBenefit"
                                Display="Dynamic" ErrorMessage="Please Enter  AD Benefit" Text="(*) Required"  ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                            <div class="col-md-3 form-group">
                                <label class="control-label">
                                    Final Net Price:<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtfinalprice"   Text="0" ClientIDMode="Static" class="form-control" TabIndex="25" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="txtfinalprice"
                                Display="Dynamic" ErrorMessage="Please Enter Final Price" Text="(*) Required"  ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                     
                            <div class="col-md-3 form-group" style="display:none">
                                <label class="control-label">
                                    GST(%):<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtGST"   onkeyup="CountGST(this.id)" Text="0" ClientIDMode="Static" TextMode="Number" class="form-control" TabIndex="26" runat="server"></asp:TextBox>
                            
                            </div>
                            <div class="col-md-3 form-group">
                                <label class="control-label">
                                    Final Price(With GST):<span class="required">* </span>
                                </label>
                                <asp:TextBox ID="txtFinalpriceGST" Text="0"  ClientIDMode="Static" class="form-control" TabIndex="27" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="txtFinalpriceGST"
                                Display="Dynamic" ErrorMessage="Please Enter Final Price(With GST)" Text="(*) Required"  ValidationGroup="quot" SetFocusOnError="true" ForeColor="Red"
                                CssClass="validate"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    
                        
                        
                        <div class="box box-primary" style="display: inline">
                    <div class="box-body margin">
                        <div class="row">
                            <div class="col-md-6 " style="align-content: center; font-size: 20px">
                                <label style="align-content: center">
                                    Select Terms & Conditions <span class="required">* </span>
                                </label>
                            </div>
                            <div class="col-md-3 "></div>
                            <div class="col-md-3 " style="align-content: center; font-size: 20px; padding-left: 60px">
                                <label>Refresh Terms</label>
                                <label style="align-content: center">
                                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="RefreshTermsdata" CssClass="btn btn-success btn-flat" CausesValidation="false"><i class="fa fa-refresh"></i></asp:LinkButton>
                                </label>
                            </div>

                        </div>
                        <div class="box box-primary">
                            <div class="box-body margin">
                                <div class="col-md-12">

                                    <asp:GridView ID="grddata1" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                        AutoGenerateColumns="False" BorderWidth="1px" ShowHeaderWhenEmpty="true" OnRowCommand="grddata1_RowCommand" OnRowDataBound="grddata1_RowDataBound1"
                                        CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                        CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                        <AlternatingRowStyle BackColor="White" />
                                        <PagerStyle CssClass="csspager" />
                                        <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                        <Columns>

                                            <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btnedit" ImageUrl="images/viewIcon.png" ToolTip="Click here to update"
                                                    runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("Id") %>'
                                                    CommandName="editdata" CausesValidation="False" />
                                            </ItemTemplate>
                                            <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                        </asp:TemplateField>
                                            <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="select">
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="btnchkbox"
                                                        runat="server" CommandArgument='<%# Eval("Id") %>'
                                                        CausesValidation="False" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField Visible="false" HeaderText="id">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblid" Visible="false" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Title">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblstatus" runat="server" Visible="false" Text='<%# Eval("Status") %>'></asp:Label>
                                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("Termstitle") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Description">
                                                
                                                <ItemTemplate>
                                                    <asp:Label ID="lbltandc" runat="server" Text='<%# Eval("TermsDescription") %>'></asp:Label>
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





                        <div class="row">
                            <div class="col-md-12 form-group" style="padding-top: 5px; text-align: right">
                                <asp:LinkButton ID="btnSave" runat="server"   OnClick="btnSave_Click" ValidationGroup="quot"  CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
                                <asp:LinkButton ID="btnUpdate" Visible="false" runat="server"  CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Update</asp:LinkButton>
                                <asp:LinkButton ID="btnDelete" runat="server"  CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                            </div>



                        </div>
                    </div>






                </div>
            </div>
                    
        </section>

    </div>



     <asp:ModalPopupExtender ID="mpstatus" runat="server" PopupControlID="pnlstatus" TargetControlID="LinkButton1"
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
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="txtcreatestatus"
                                                            Display="Dynamic" ErrorMessage="Please Enter Status " ValidationGroup="statusgrp" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtncreatedept" OnClick="lbtncreatestatus_Click" ValidationGroup="sgrp" runat="server" TabIndex="2" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton4" OnClick="LinkButton6_Click" runat="server" TabIndex="3" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="txtsource"
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
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="txtcreateuom"
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

</asp:Content>


