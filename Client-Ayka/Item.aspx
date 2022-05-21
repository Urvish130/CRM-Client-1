<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.master" AutoEventWireup="true" CodeFile="Item.aspx.cs" Inherits="Item" %>

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
    <script type="text/javascript" src="plugins/jQuery/jquery-2.2.3.min.js"></script>
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
        <section class="content-header">
            <h1>Item</h1>
            <ol class="breadcrumb">
                <li><a href="Default.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="Demo.master">Master</a></li>
                <li class="active">Item</li>
                <asp:Label ID="lblcomno" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblloginid" Visible="false" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblrole" Visible="false" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblid" Visible="false" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblBOM" Visible="false" runat="server" Text="No"></asp:Label>
                <asp:Label ID="lblmbom" Visible="false" runat="server" Text=""></asp:Label>
                <asp:Label ID="lbltotal" Visible="false" runat="server" Text="0"></asp:Label>
                <asp:Label ID="lbltemp" Visible="false" runat="server" Text="0"></asp:Label>
            </ol>
        </section>

        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div id="alert_container"></div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label>Select Group<span class="required">* </span></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="ddlgroup" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlgroup_SelectedIndexChanged" CssClass="form-control select2" TabIndex="1" data-placeholder="Select Group"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlgroup"
                                            Display="Dynamic" ErrorMessage="Please Select Item Group" InitialValue="0" Text="(*) Required" ValidationGroup="ItemGrp" SetFocusOnError="true" ForeColor="Red"
                                            CssClass="validate"></asp:RequiredFieldValidator>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lbtncreategroupname" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                    </div>

                                </div>
                                <div class="col-md-6 form-group">
                                    <label>Select Sub Group<span class="required">* </span></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="ddlsubgroup" runat="server" class="form-control select2" TabIndex="2" data-placeholder="Select SubGroup"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlsubgroup"
                                            Display="Dynamic" ErrorMessage="Please Select Item Sub-Group" InitialValue="0" Text="(*) Required" ValidationGroup="ItemGrp" SetFocusOnError="true" ForeColor="Red"
                                            CssClass="validate"></asp:RequiredFieldValidator>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lbtncreatesubgroupname" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                    </div>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label>Model No</label>
                                    <asp:TextBox ID="txtModalNo" placeholder="Enter Model No" CssClass="form-control" TabIndex="3" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>

                                </div>
                                <div class="col-md-3 form-group">
                                    <label>Status</label>
                                  
                                    <asp:DropDownList ID="ddlItemStatus" runat="server" class="form-control select2" TabIndex="2" data-placeholder="Select Statud">
                                  
                                        <asp:ListItem Text="Active" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="InActive" Value="2"></asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                                <div class="col-md-6 form-group">
                                    <label>Item Name<span class="required">* </span></label>
                                    <asp:TextBox ID="txtItemName" placeholder="Enter Item Name" CssClass="form-control" TabIndex="4" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtItemName"
                                        Display="Dynamic" ErrorMessage="Please Enter Item Name" Text="(*) Required" ValidationGroup="ItemGrp" SetFocusOnError="true" ForeColor="Red"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Item Final Name</label>
                                    <asp:TextBox ID="txtFinalName" placeholder="Enter Item Final Name" CssClass="form-control" TabIndex="5" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label>Item Alias</label>
                                    <asp:TextBox ID="txtAlias" placeholder="Enter Item Alias" CssClass="form-control" TabIndex="6" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label>Item Catalogue Number</label>
                                    <asp:TextBox ID="txtitemcategoryno" placeholder="Enter Item Catalogue Number" CssClass="form-control" TabIndex="6" runat="server" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px;">
                                <div class="col-md-3">
                                    <label>UOM<span class="required">* </span></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="ddluom" runat="server" CssClass="form-control select2" TabIndex="7" data-placeholder="Select UOM"></asp:DropDownList>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lbtncreatuom" runat="server" CssClass="btn btn-dropbox btn-flat" CausesValidation="false"><i class="fa fa-plus"></i></asp:LinkButton></span>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddluom"
                                        Display="Dynamic" ErrorMessage="Please Select UOM" Text="(*)Required" ValidationGroup="ItemGrp" ForeColor="Red" SetFocusOnError="true"
                                        CssClass="validate" InitialValue="0"></asp:RequiredFieldValidator>
                                </div>


                                <div class="col-md-3 form-group">
                                    <label>Rate<span class="required">* </span></label>
                                    <asp:TextBox ID="txtRate" TextMode="Number" placeholder="Enter Rate" CssClass="form-control" TabIndex="10" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtRate"
                                        Display="Dynamic" ErrorMessage="Please Enter Rate" Text="(*)Required" ValidationGroup="ItemGrp" ForeColor="Red" SetFocusOnError="true"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label>GST (%)<span class="required">* </span></label>
                                    <asp:TextBox ID="txtGST" TextMode="Number" Placeholder="Enter GST" CssClass="form-control" TabIndex="11" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtGST"
                                        Display="Dynamic" ErrorMessage="Please Enter GST" Text="(*)Required" ValidationGroup="ItemGrp" ForeColor="Red" SetFocusOnError="true"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label>HSN Code<span class="required">* </span></label>
                                    <asp:TextBox ID="txtHSN" placeholder="HSN Code" CssClass="form-control" TabIndex="12" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtHSN"
                                        Display="Dynamic" ErrorMessage="Please Enter HSN" Text="(*)Required" ValidationGroup="ItemGrp" ForeColor="Red" SetFocusOnError="true"
                                        CssClass="validate"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <!-- BOM -->
                            <div class="row">
                                <div class="col-md-3 form-group">
                                    <label>IS BOM?</label>
                                    <asp:CheckBox ID="chkbom" AutoPostBack="true" OnCheckedChanged="chkbom_CheckedChanged" TabIndex="10" runat="server"></asp:CheckBox>
                                </div>
                            </div>
                            <div runat="server" visible="false" id="BOMdiv">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>BOM Name<span class="required">* </span></label>
                                        <asp:TextBox ID="txtBOMName" placeholder="Enter BOM Name" CssClass="form-control" TabIndex="5" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtBOMName"
                                            Display="Dynamic" ErrorMessage="Please Enter BOM Name" Text="(*) Required" ValidationGroup="ItemSub" SetFocusOnError="true" ForeColor="Red"
                                            CssClass="validate"></asp:RequiredFieldValidator>
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>Sub Item<span class="required">* </span></label>
                                        <asp:DropDownList ID="ddlsubItem" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlsubItem_SelectedIndexChanged" CssClass="form-control select2" TabIndex="1" data-placeholder="Select Sub Item"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlsubItem"
                                            Display="Dynamic" ErrorMessage="Please Select Sub-Item" InitialValue="0" Text="(*) Required" ValidationGroup="ItemSub" SetFocusOnError="true" ForeColor="Red"
                                            CssClass="validate"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-3">
                                        <label>QTY<span class="required">* </span></label>
                                        <asp:TextBox ID="txtSubqty" placeholder="Enter QTY" TextMode="Number" CssClass="form-control" TabIndex="5" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtSubqty"
                                            Display="Dynamic" ErrorMessage="Please Enter QTY" Text="(*) Required" ValidationGroup="ItemSub" SetFocusOnError="true" ForeColor="Red"
                                            CssClass="validate"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-3">
                                        <label>Rate<span class="required">* </span></label>
                                        <asp:TextBox ID="txtSubrate" placeholder="Enter Rate" Enabled="false" TextMode="Number" CssClass="form-control" TabIndex="5" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtSubrate"
                                            Display="Dynamic" ErrorMessage="Please Enter Rate" Text="(*) Required" ValidationGroup="ItemSub" SetFocusOnError="true" ForeColor="Red"
                                            CssClass="validate"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-2" style="padding-top: 20px">

                                        <asp:Button ID="btnBOM" OnClick="btnBOM_Click" ValidationGroup="ItemSub" CssClass="btn btn-bitbucket btn-flat" Text="Add BOM" runat="server" />
                                        <asp:Button ID="btnBOMUpdate" OnClick="btnBOMUpdate_Click" Visible="false" ValidationGroup="ItemSub" CssClass="btn btn-bitbucket btn-flat" Text="Update BOM" runat="server" />
                                        <asp:LinkButton ID="btnReset" runat="server" TabIndex="41" OnClick="btnReset_Click" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:GridView ID="BOMGrid" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                            AutoGenerateColumns="False" BorderWidth="1px" ShowHeaderWhenEmpty="true" OnRowCommand="BOMGrid_RowCommand"
                                            CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2"
                                            CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                            <AlternatingRowStyle BackColor="White" />
                                            <PagerStyle CssClass="csspager" />
                                            <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField HeaderText="BOM Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBOM" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Sub Item Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("Itemname") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Rate">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSubItem" runat="server" Text='<%# Eval("SubRate") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" CssClass="grdhead" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Qty">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblqty" runat="server" Text='<%# Eval("Exrta2") %>'></asp:Label>
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
                                                <asp:TemplateField HeaderStyle-CssClass="lblfamt" HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="btnDelete" ImageUrl="images/delete.png" ToolTip="Click here to delete"
                                                            runat="server" CssClass="imgbtnalign1" CommandArgument='<%# Eval("id")+","+Eval("SubRate")%>'
                                                            CommandName="deletedata" CausesValidation="False" OnClientClick=" return confirm('Do you want to delete ?');" />

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
                            <div class="row" style="margin-top: 10px;">
                                <div class="col-md-12 form-group">
                                    <label>Description</label>
                                    <asp:TextBox ID="txtDescp" placeholder="Enter Description" CssClass="form-control" TabIndex="34" runat="server" Rows="4" TextMode="MultiLine" onkeyup="myFunction(this.id)"></asp:TextBox>
                                </div>


                                <div class="row" style="padding-left: 15px; margin-top: 15px">
                                    <div class="col-md-2 form-group">
                                        <label>Upload Item Pic.</label>
                                        <asp:FileUpload runat="server" ID="fuItemPic" onchange="UploadFile(this);" TabIndex="35" />
                                    </div>
                                    <div class="col-md-6 form-group" style="margin-top: 17px">
                                        <asp:Button ID="btnitemimg" OnClick="btnitemimg_Click" CssClass="btn btn-bitbucket btn-flat" Text="Add Item Image" runat="server" CausesValidation="false" />
                                    </div>
                                    <asp:HiddenField ID="hfItemPic" runat="server" />
                                    <asp:Image ID="ImgPrv" runat="server" CssClass="imgStud" Style="margin-top: 5px;" />


                                </div>

                                <div class="row">

                                    <div class="box-body">
                                        <asp:GridView ID="grditem" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                            AutoGenerateColumns="False" BorderWidth="1px" OnRowCommand="grditem_RowCommand" ShowHeaderWhenEmpty="true"
                                            CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2" DataKeyNames="DocumentPath"
                                            CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                            <AlternatingRowStyle BackColor="White" />
                                            <PagerStyle CssClass="csspager" />
                                            <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField HeaderText="Document Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("Filename") %>'></asp:Label>
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


                                <div class="row" style="padding-left: 15px">
                                    <div class="col-md-2 form-group">
                                        <label>Upload Item Broucher</label>
                                        <asp:FileUpload runat="server" ID="fuBroucher" onchange="UploadFile(this);" TabIndex="36" />
                                    </div>
                                    <div class="col-md-6 form-group" style="margin-top: 17px">
                                        <asp:Button ID="btnadditembro" OnClick="btnadditembro_Click" CssClass="btn btn-bitbucket btn-flat" Text="Add Item Broucher" runat="server" CausesValidation="false" />
                                    </div>
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                    <asp:Image ID="Image1" runat="server" CssClass="imgStud" Style="margin-top: 5px;" />


                                </div>

                                <div class="row">

                                    <div class="box-body">
                                        <asp:GridView ID="grditembro" runat="server" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="false" AllowSorting="false"
                                            AutoGenerateColumns="False" BorderWidth="1px" OnRowCommand="grditembro_RowCommand" ShowHeaderWhenEmpty="true"
                                            CssClass="table table-striped table-bordered table-hover dataTable no-footer" CellPadding="2" DataKeyNames="DocumentPath"
                                            CellSpacing="2" EditRowStyle-HorizontalAlign="Center" PageSize="5" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-ForeColor="White">
                                            <AlternatingRowStyle BackColor="White" />
                                            <PagerStyle CssClass="csspager" />
                                            <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField HeaderText="Document Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("fileName") %>'></asp:Label>
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

                                <div class="col-md-2 form-group pull-right" style="text-align: right; margin-top: 5%">
                                    <asp:LinkButton ID="btnSave" OnClick="btnSave_Click" ValidationGroup="ItemGrp" runat="server" TabIndex="37" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
                                    <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click" TabIndex="38" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <!-- BOM -->

                    </div>
                </div>
            </div>

        </section>



        <asp:ModalPopupExtender ID="mpdesign" runat="server" PopupControlID="pnldesign" TargetControlID="lbtncreategroupname"
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
                                    <h4 class="modal-title" style="text-align: center">Create Group</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Name<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtgroupname" class="form-control" TabIndex="39" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtgroupname"
                                                            Display="Dynamic" ErrorMessage="Please Group Name" ValidationGroup="cgroup" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtncreategroup" OnClick="lbtncreategroup_Click" ValidationGroup="cgroup" runat="server" TabIndex="40" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="lbtnresetgroup" runat="server" OnClick="GroupReset" TabIndex="41" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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

        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlsubgroup" TargetControlID="lbtncreatesubgroupname"
            CancelControlID="btnclosesubgroup" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlsubgroup" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btnclosesubgroup" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create SubGroup</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Name<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtsubgroupnamemp" class="form-control" TabIndex="42" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsubgroupnamemp"
                                                            Display="Dynamic" ErrorMessage="Please SubGroup Name" ValidationGroup="csgroup" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Under Item Group
                                                        </label>
                                                        <asp:DropDownList ID="dlgroupnamemp" class="form-control" runat="server"></asp:DropDownList>
                                                    </div>

                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtcreatesubgroup" OnClick="lbtcreatesubgroup_Click" ValidationGroup="csgroup" runat="server" TabIndex="43" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="resetsubgroup" TabIndex="44" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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
                </div>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Close" />
        </asp:Panel>

        <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnluom" TargetControlID="lbtncreatuom"
            CancelControlID="btncloseunit" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnluom" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div style="height: 60px">
                <div class="example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="btncloseunit" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" style="text-align: center">Create UOM</h4>

                                    <div class="modal-body">
                                        <div class="col-md-12">
                                            <div class="box box-primary">

                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label class="control-label">
                                                            Name<span class="required">* </span>
                                                        </label>
                                                        <asp:TextBox ID="txtuom" class="form-control" TabIndex="45" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtuom"
                                                            Display="Dynamic" ErrorMessage="Please Group Name" ValidationGroup="uomgroup" Text="(*) Required" SetFocusOnError="true" ForeColor="Red"
                                                            CssClass="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group pull-right">
                                                        <asp:LinkButton ID="lbtncreateuom" OnClick="lbtncreateuom_Click" ValidationGroup="uomgroup" runat="server" TabIndex="46" CssClass="btn btn-bitbucket btn-flat"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="ResetUOM" TabIndex="47" CssClass="btn btn-bitbucket bg-gray btn-flat" CausesValidation="false"><i class="fa fa-times"></i>&nbsp;Reset</asp:LinkButton>
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

    </div>
</asp:Content>

