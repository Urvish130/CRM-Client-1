USE [DB_A3D589_AYKKACRM]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Employee'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Employee'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Employee'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Record'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Record'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Record'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Contact'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Contact'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Company'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Company'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Company'

GO
ALTER TABLE [dbo].[SiteError] DROP CONSTRAINT [DF_SiteError_ModifiedON]
GO
/****** Object:  View [dbo].[V_Employee]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP VIEW [dbo].[V_Employee]
GO
/****** Object:  View [dbo].[V_Customer_Record]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP VIEW [dbo].[V_Customer_Record]
GO
/****** Object:  View [dbo].[V_Customer_Contact]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP VIEW [dbo].[V_Customer_Contact]
GO
/****** Object:  View [dbo].[V_Company]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP VIEW [dbo].[V_Company]
GO
/****** Object:  Table [dbo].[UnitofMeasurementTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[UnitofMeasurementTable]
GO
/****** Object:  Table [dbo].[TermsandConditions_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[TermsandConditions_Master]
GO
/****** Object:  Table [dbo].[tbl_Quotation_Followup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Quotation_Followup]
GO
/****** Object:  Table [dbo].[tbl_Order_Followup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Order_Followup]
GO
/****** Object:  Table [dbo].[tbl_Item_NoSeries]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Item_NoSeries]
GO
/****** Object:  Table [dbo].[tbl_Inqiury_Followup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Inqiury_Followup]
GO
/****** Object:  Table [dbo].[tbl_Employee_NoSeries]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Employee_NoSeries]
GO
/****** Object:  Table [dbo].[tbl_Employee_master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Employee_master]
GO
/****** Object:  Table [dbo].[tbl_Employee_Document_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Employee_Document_Master]
GO
/****** Object:  Table [dbo].[tbl_Customer_Noseries]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Customer_Noseries]
GO
/****** Object:  Table [dbo].[tbl_Customer_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Customer_Master]
GO
/****** Object:  Table [dbo].[tbl_Customer_Contact_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Customer_Contact_Master]
GO
/****** Object:  Table [dbo].[tbl_Company_NoSeries]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Company_NoSeries]
GO
/****** Object:  Table [dbo].[tbl_Company_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Company_Master]
GO
/****** Object:  Table [dbo].[tbl_Company_Contact_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[tbl_Company_Contact_Master]
GO
/****** Object:  Table [dbo].[StatusTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[StatusTable]
GO
/****** Object:  Table [dbo].[State_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[State_Master]
GO
/****** Object:  Table [dbo].[SourceTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[SourceTable]
GO
/****** Object:  Table [dbo].[SiteError]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[SiteError]
GO
/****** Object:  Table [dbo].[RoleTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[RoleTable]
GO
/****** Object:  Table [dbo].[Quotationstandc]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Quotationstandc]
GO
/****** Object:  Table [dbo].[Quotation_No_Series]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Quotation_No_Series]
GO
/****** Object:  Table [dbo].[Quotation_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Quotation_Master]
GO
/****** Object:  Table [dbo].[Quotation_Details]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Quotation_Details]
GO
/****** Object:  Table [dbo].[Ordertandc]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Ordertandc]
GO
/****** Object:  Table [dbo].[Order_No_Series]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Order_No_Series]
GO
/****** Object:  Table [dbo].[Order_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Order_Master]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Order_Details]
GO
/****** Object:  Table [dbo].[MachineTypeTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[MachineTypeTable]
GO
/****** Object:  Table [dbo].[ItemSubgroupTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[ItemSubgroupTable]
GO
/****** Object:  Table [dbo].[Itemimagemaster]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Itemimagemaster]
GO
/****** Object:  Table [dbo].[ItemGroupTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[ItemGroupTable]
GO
/****** Object:  Table [dbo].[Itemdocumentmaster]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Itemdocumentmaster]
GO
/****** Object:  Table [dbo].[Itemaster]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Itemaster]
GO
/****** Object:  Table [dbo].[Inquiry_No_Series]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Inquiry_No_Series]
GO
/****** Object:  Table [dbo].[Inquiry_Files]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Inquiry_Files]
GO
/****** Object:  Table [dbo].[Inqiury_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Inqiury_Master]
GO
/****** Object:  Table [dbo].[Inqiury_Details]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Inqiury_Details]
GO
/****** Object:  Table [dbo].[IndustryTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[IndustryTable]
GO
/****** Object:  Table [dbo].[FollowUpTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[FollowUpTable]
GO
/****** Object:  Table [dbo].[DesignationTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[DesignationTable]
GO
/****** Object:  Table [dbo].[DepartmentTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[DepartmentTable]
GO
/****** Object:  Table [dbo].[Country_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[Country_Master]
GO
/****** Object:  Table [dbo].[CompressorTypeTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[CompressorTypeTable]
GO
/****** Object:  Table [dbo].[City_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[City_Master]
GO
/****** Object:  Table [dbo].[BusinessTypeTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[BusinessTypeTable]
GO
/****** Object:  Table [dbo].[ApplicationTypeTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[ApplicationTypeTable]
GO
/****** Object:  Table [dbo].[AdminTable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP TABLE [dbo].[AdminTable]
GO
/****** Object:  StoredProcedure [dbo].[updateunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updateunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[updatetermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatetermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[updatestatus]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatestatus]
GO
/****** Object:  StoredProcedure [dbo].[updatestate]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatestate]
GO
/****** Object:  StoredProcedure [dbo].[updatesource]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatesource]
GO
/****** Object:  StoredProcedure [dbo].[updaterole]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updaterole]
GO
/****** Object:  StoredProcedure [dbo].[updatemachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatemachinetype]
GO
/****** Object:  StoredProcedure [dbo].[updateitemsubgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updateitemsubgroup]
GO
/****** Object:  StoredProcedure [dbo].[updateitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updateitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[updateinquiryfile]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updateinquiryfile]
GO
/****** Object:  StoredProcedure [dbo].[updateindustryname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updateindustryname]
GO
/****** Object:  StoredProcedure [dbo].[updatefollowuptype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatefollowuptype]
GO
/****** Object:  StoredProcedure [dbo].[updatedesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatedesignation]
GO
/****** Object:  StoredProcedure [dbo].[updatedepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatedepartment]
GO
/****** Object:  StoredProcedure [dbo].[updatecountry]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatecountry]
GO
/****** Object:  StoredProcedure [dbo].[updateCompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updateCompressortype]
GO
/****** Object:  StoredProcedure [dbo].[updatecity]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatecity]
GO
/****** Object:  StoredProcedure [dbo].[updatebusinesstype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updatebusinesstype]
GO
/****** Object:  StoredProcedure [dbo].[updateapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[updateapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[unitofmeasurementdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[unitofmeasurementdisp]
GO
/****** Object:  StoredProcedure [dbo].[termsandconditionsdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[termsandconditionsdisp]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_No_Series_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_No_Series_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Followup_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Followup_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Followup_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Followup_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Details_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Details_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Details_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Details_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_No_Series_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Order_No_Series_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Order_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Order_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Followup_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Order_Followup_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Followup_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Order_Followup_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Details_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Order_Details_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Details_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Order_Details_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_ItemImage_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_ItemImage_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_ItemDocument_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_ItemDocument_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_NoSeries_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Item_NoSeries_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Item_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Item_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inquiry_No_Series_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Inquiry_No_Series_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Master_Update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Master_Update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Followup_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Followup_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Followup_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Followup_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Details_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Details_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Details_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Details_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_NoSeries_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Employee_NoSeries_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_master_Update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Employee_master_Update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Employee_master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_Document_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Employee_Document_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Noseries_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Noseries_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Contact_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Contact_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Contact_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Contact_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_NoSeries_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Company_NoSeries_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Company_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Company_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Contact_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Company_Contact_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Contact_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[tbl_Company_Contact_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[statusdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[statusdisp]
GO
/****** Object:  StoredProcedure [dbo].[sp_inquiryfilter]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[sp_inquiryfilter]
GO
/****** Object:  StoredProcedure [dbo].[sp_employeefilter]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[sp_employeefilter]
GO
/****** Object:  StoredProcedure [dbo].[sourcedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[sourcedisp]
GO
/****** Object:  StoredProcedure [dbo].[SiteErrorSelectAll]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[SiteErrorSelectAll]
GO
/****** Object:  StoredProcedure [dbo].[SiteErrorInsert]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[SiteErrorInsert]
GO
/****** Object:  StoredProcedure [dbo].[SiteErrorDelete]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[SiteErrorDelete]
GO
/****** Object:  StoredProcedure [dbo].[showunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[showtermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showtermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[showstatus]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showstatus]
GO
/****** Object:  StoredProcedure [dbo].[showsource]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showsource]
GO
/****** Object:  StoredProcedure [dbo].[showrole]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showrole]
GO
/****** Object:  StoredProcedure [dbo].[showmachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showmachinetype]
GO
/****** Object:  StoredProcedure [dbo].[showitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[showindustryname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showindustryname]
GO
/****** Object:  StoredProcedure [dbo].[showfollowuptable]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showfollowuptable]
GO
/****** Object:  StoredProcedure [dbo].[showdesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showdesignation]
GO
/****** Object:  StoredProcedure [dbo].[showdepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showdepartment]
GO
/****** Object:  StoredProcedure [dbo].[showcountry]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showcountry]
GO
/****** Object:  StoredProcedure [dbo].[showcompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showcompressortype]
GO
/****** Object:  StoredProcedure [dbo].[showbusinesstype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showbusinesstype]
GO
/****** Object:  StoredProcedure [dbo].[showapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[showapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[roledisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[roledisp]
GO
/****** Object:  StoredProcedure [dbo].[quotationtermsandconditionsdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[quotationtermsandconditionsdisp]
GO
/****** Object:  StoredProcedure [dbo].[ordertermsandconditionsdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[ordertermsandconditionsdisp]
GO
/****** Object:  StoredProcedure [dbo].[machinetypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[machinetypedisp]
GO
/****** Object:  StoredProcedure [dbo].[logindata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[logindata]
GO
/****** Object:  StoredProcedure [dbo].[itemgroupdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[itemgroupdisp]
GO
/****** Object:  StoredProcedure [dbo].[insertunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[inserttermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[inserttermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[insertstatus]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertstatus]
GO
/****** Object:  StoredProcedure [dbo].[insertstate]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertstate]
GO
/****** Object:  StoredProcedure [dbo].[insertsource]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertsource]
GO
/****** Object:  StoredProcedure [dbo].[insertrole]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertrole]
GO
/****** Object:  StoredProcedure [dbo].[insertmachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertmachinetype]
GO
/****** Object:  StoredProcedure [dbo].[insertitemsubgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertitemsubgroup]
GO
/****** Object:  StoredProcedure [dbo].[insertitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[insertinquiryfiles]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertinquiryfiles]
GO
/****** Object:  StoredProcedure [dbo].[insertindustryname1]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertindustryname1]
GO
/****** Object:  StoredProcedure [dbo].[insertfollowuptype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertfollowuptype]
GO
/****** Object:  StoredProcedure [dbo].[insertdesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertdesignation]
GO
/****** Object:  StoredProcedure [dbo].[insertdepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertdepartment]
GO
/****** Object:  StoredProcedure [dbo].[insertcountry]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertcountry]
GO
/****** Object:  StoredProcedure [dbo].[insertcompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertcompressortype]
GO
/****** Object:  StoredProcedure [dbo].[insertcity]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertcity]
GO
/****** Object:  StoredProcedure [dbo].[insertbusinesstype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertbusinesstype]
GO
/****** Object:  StoredProcedure [dbo].[insertapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insertapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[insert_quotations_tandc]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insert_quotations_tandc]
GO
/****** Object:  StoredProcedure [dbo].[insert_order_tandc]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[insert_order_tandc]
GO
/****** Object:  StoredProcedure [dbo].[indutrynamedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[indutrynamedisp]
GO
/****** Object:  StoredProcedure [dbo].[gettallQuotationsitemdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[gettallQuotationsitemdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[gettallQuotationsInquirydatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[gettallQuotationsInquirydatabyno]
GO
/****** Object:  StoredProcedure [dbo].[gettallorderitemdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[gettallorderitemdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getstatedatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getstatedatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getstatedata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getstatedata]
GO
/****** Object:  StoredProcedure [dbo].[getscitydatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getscitydatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getQuotationFollowupDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getQuotationFollowupDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getquotationFollowupdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getquotationFollowupdata]
GO
/****** Object:  StoredProcedure [dbo].[getquotationetailsdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getquotationetailsdata]
GO
/****** Object:  StoredProcedure [dbo].[getQuotationDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getQuotationDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getorderFollowupDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getorderFollowupDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getorderFollowupdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getorderFollowupdata]
GO
/****** Object:  StoredProcedure [dbo].[getOrderFollowup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getOrderFollowup]
GO
/****** Object:  StoredProcedure [dbo].[getOrderDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getOrderDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getitemsubgroupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getitemsubgroupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getitemimagedata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getitemimagedata]
GO
/****** Object:  StoredProcedure [dbo].[getitemdocumentdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getitemdocumentdata]
GO
/****** Object:  StoredProcedure [dbo].[getinquiryfilesdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getinquiryfilesdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getinquiryfilesdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getinquiryfilesdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getInqiuryDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getInqiuryDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getInqiuryDetailsdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getInqiuryDetailsdata]
GO
/****** Object:  StoredProcedure [dbo].[getFollowupDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getFollowupDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getFollowupdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getFollowupdata]
GO
/****** Object:  StoredProcedure [dbo].[getemployeedatano]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getemployeedatano]
GO
/****** Object:  StoredProcedure [dbo].[getdocumentadata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getdocumentadata]
GO
/****** Object:  StoredProcedure [dbo].[getCustomerIdbyname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getCustomerIdbyname]
GO
/****** Object:  StoredProcedure [dbo].[getCustomercontactdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getCustomercontactdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getCustomercontactdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getCustomercontactdata]
GO
/****** Object:  StoredProcedure [dbo].[getCustomerConatctPerson]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getCustomerConatctPerson]
GO
/****** Object:  StoredProcedure [dbo].[getcompanycontactdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getcompanycontactdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getcompanycontactdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getcompanycontactdata]
GO
/****** Object:  StoredProcedure [dbo].[getcitydatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getcitydatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getcitydata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getcitydata]
GO
/****** Object:  StoredProcedure [dbo].[getallstateforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallstateforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallstate]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallstate]
GO
/****** Object:  StoredProcedure [dbo].[getallQuotationdataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallQuotationdataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallQuotationdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallQuotationdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getallorderdetailsdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallorderdetailsdata]
GO
/****** Object:  StoredProcedure [dbo].[getallOrderdataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallOrderdataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallOrderdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallOrderdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getallitemsubgroupforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallitemsubgroupforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallitemsubgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallitemsubgroup]
GO
/****** Object:  StoredProcedure [dbo].[getallItemdataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallItemdataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallitemdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallitemdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getallitemdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallitemdata]
GO
/****** Object:  StoredProcedure [dbo].[getallitem]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallitem]
GO
/****** Object:  StoredProcedure [dbo].[getallinquiryfollwup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallinquiryfollwup]
GO
/****** Object:  StoredProcedure [dbo].[getallinqiurydetailsdata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallinqiurydetailsdata]
GO
/****** Object:  StoredProcedure [dbo].[getallInqiurydataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallInqiurydataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallInqiurydatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallInqiurydatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getallemployeedataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallemployeedataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallemployeedata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallemployeedata]
GO
/****** Object:  StoredProcedure [dbo].[getallCustomerMasterataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallCustomerMasterataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallCustomerMasterata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallCustomerMasterata]
GO
/****** Object:  StoredProcedure [dbo].[getallCustomerdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallCustomerdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getallcompanydataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallcompanydataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallcompanydatabycomno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallcompanydatabycomno]
GO
/****** Object:  StoredProcedure [dbo].[getallcompanydatabyadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallcompanydatabyadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallcompanydata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallcompanydata]
GO
/****** Object:  StoredProcedure [dbo].[getallcityforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[getallcityforadmin]
GO
/****** Object:  StoredProcedure [dbo].[followuptypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[followuptypedisp]
GO
/****** Object:  StoredProcedure [dbo].[designationdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[designationdisp]
GO
/****** Object:  StoredProcedure [dbo].[depaartmentdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[depaartmentdisp]
GO
/****** Object:  StoredProcedure [dbo].[deleteunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[deletetermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletetermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[deletestatus]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletestatus]
GO
/****** Object:  StoredProcedure [dbo].[deletestatedatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletestatedatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletesource]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletesource]
GO
/****** Object:  StoredProcedure [dbo].[deleterole]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleterole]
GO
/****** Object:  StoredProcedure [dbo].[deletequotationtandc]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletequotationtandc]
GO
/****** Object:  StoredProcedure [dbo].[deletequotationfollowupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletequotationfollowupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletequotationdetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletequotationdetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteordertandc]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteordertandc]
GO
/****** Object:  StoredProcedure [dbo].[deleteorderfollowupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteorderfollowupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteOrderdetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteOrderdetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletemachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletemachinetype]
GO
/****** Object:  StoredProcedure [dbo].[deleteitemsubgroupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteitemsubgroupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteitemimgdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteitemimgdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[deleteitemdocumentdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteitemdocumentdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteitematano]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteitematano]
GO
/****** Object:  StoredProcedure [dbo].[deleteinquiryfollowupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteinquiryfollowupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteinquiryfilesdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteinquiryfilesdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteinquirydetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteinquirydetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteindustryname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteindustryname]
GO
/****** Object:  StoredProcedure [dbo].[deletefollowuptype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletefollowuptype]
GO
/****** Object:  StoredProcedure [dbo].[deleteemployeedocumentdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteemployeedocumentdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteemployeedatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteemployeedatabyno]
GO
/****** Object:  StoredProcedure [dbo].[deletedesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletedesignation]
GO
/****** Object:  StoredProcedure [dbo].[deletedepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletedepartment]
GO
/****** Object:  StoredProcedure [dbo].[deleteCustomerdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteCustomerdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[deleteCustomercontactdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteCustomercontactdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteCustomer]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteCustomer]
GO
/****** Object:  StoredProcedure [dbo].[deletecountry]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletecountry]
GO
/****** Object:  StoredProcedure [dbo].[deletecompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletecompressortype]
GO
/****** Object:  StoredProcedure [dbo].[deletecompanydatabyCompanyno]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletecompanydatabyCompanyno]
GO
/****** Object:  StoredProcedure [dbo].[deletecompanydata]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletecompanydata]
GO
/****** Object:  StoredProcedure [dbo].[deletecompanycontactdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletecompanycontactdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletecompany]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletecompany]
GO
/****** Object:  StoredProcedure [dbo].[deletecitydatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletecitydatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletebusinesstype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deletebusinesstype]
GO
/****** Object:  StoredProcedure [dbo].[deleteapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[deleteapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[countrydisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[countrydisp]
GO
/****** Object:  StoredProcedure [dbo].[compressortypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[compressortypedisp]
GO
/****** Object:  StoredProcedure [dbo].[checkunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[checktermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checktermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[checkstatus]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkstatus]
GO
/****** Object:  StoredProcedure [dbo].[checkstatename]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkstatename]
GO
/****** Object:  StoredProcedure [dbo].[checksource]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checksource]
GO
/****** Object:  StoredProcedure [dbo].[checkrole]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkrole]
GO
/****** Object:  StoredProcedure [dbo].[checkQuotationProductName]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkQuotationProductName]
GO
/****** Object:  StoredProcedure [dbo].[checkQuotationFollowup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkQuotationFollowup]
GO
/****** Object:  StoredProcedure [dbo].[checkQuotationalready]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkQuotationalready]
GO
/****** Object:  StoredProcedure [dbo].[checkProductName]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkProductName]
GO
/****** Object:  StoredProcedure [dbo].[checkOrderProductName]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkOrderProductName]
GO
/****** Object:  StoredProcedure [dbo].[checkOrderFollowup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkOrderFollowup]
GO
/****** Object:  StoredProcedure [dbo].[checkmachinetypenameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkmachinetypenameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkmachinetypename]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkmachinetypename]
GO
/****** Object:  StoredProcedure [dbo].[checkmachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkmachinetype]
GO
/****** Object:  StoredProcedure [dbo].[checklogindetails]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checklogindetails]
GO
/****** Object:  StoredProcedure [dbo].[checkitemsubgroupname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkitemsubgroupname]
GO
/****** Object:  StoredProcedure [dbo].[checkItemname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkItemname]
GO
/****** Object:  StoredProcedure [dbo].[checkitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[checkInqiuryalready]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkInqiuryalready]
GO
/****** Object:  StoredProcedure [dbo].[checkindustrynameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkindustrynameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkindustryname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkindustryname]
GO
/****** Object:  StoredProcedure [dbo].[checkfollowuptype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkfollowuptype]
GO
/****** Object:  StoredProcedure [dbo].[checkFollowup]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkFollowup]
GO
/****** Object:  StoredProcedure [dbo].[checkEmployee]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkEmployee]
GO
/****** Object:  StoredProcedure [dbo].[checkdesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkdesignation]
GO
/****** Object:  StoredProcedure [dbo].[checkdepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkdepartment]
GO
/****** Object:  StoredProcedure [dbo].[checkCustomername]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkCustomername]
GO
/****** Object:  StoredProcedure [dbo].[checkcustomercontactname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkcustomercontactname]
GO
/****** Object:  StoredProcedure [dbo].[checkCustName]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkCustName]
GO
/****** Object:  StoredProcedure [dbo].[checkcountryname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkcountryname]
GO
/****** Object:  StoredProcedure [dbo].[checkcompressortypenameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkcompressortypenameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkcompressortypename]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkcompressortypename]
GO
/****** Object:  StoredProcedure [dbo].[checkcompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkcompressortype]
GO
/****** Object:  StoredProcedure [dbo].[checkcompanyname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkcompanyname]
GO
/****** Object:  StoredProcedure [dbo].[checkcompanycontactname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkcompanycontactname]
GO
/****** Object:  StoredProcedure [dbo].[checkcityname]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkcityname]
GO
/****** Object:  StoredProcedure [dbo].[checkbusinesstypenameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkbusinesstypenameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkbusinesstypename]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkbusinesstypename]
GO
/****** Object:  StoredProcedure [dbo].[checkapplicationtypenameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkapplicationtypenameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkapplicationtypename]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkapplicationtypename]
GO
/****** Object:  StoredProcedure [dbo].[checkapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[checkapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[businesstypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[businesstypedisp]
GO
/****** Object:  StoredProcedure [dbo].[applicationtypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
DROP PROCEDURE [dbo].[applicationtypedisp]
GO
/****** Object:  StoredProcedure [dbo].[applicationtypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[applicationtypedisp]
	
AS
BEGIN
	 select id,ApplicationType from ApplicationTypeTable order by ApplicationType
END


GO
/****** Object:  StoredProcedure [dbo].[businesstypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[businesstypedisp]
	
AS
BEGIN
	 select id,BusinessTypeName from BusinessTypeTable order by BusinessTypeName
END


GO
/****** Object:  StoredProcedure [dbo].[checkapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[checkapplicationtype]
	@ApplicationType varchar(50)

AS
BEGIN
					select * from ApplicationTypeTable where ApplicationType=@ApplicationType

END


GO
/****** Object:  StoredProcedure [dbo].[checkapplicationtypename]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[checkapplicationtypename] 
	@Applicationtypename varchar(50)
AS
BEGIN
	select * from ApplicationTypeTable where ApplicationType=@Applicationtypename
END


GO
/****** Object:  StoredProcedure [dbo].[checkapplicationtypenameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[checkapplicationtypenameupdate] 
	@Applicationtypename varchar(50),
	@Id varchar(50)
AS
BEGIN
	select * from ApplicationTypeTable where ApplicationType=@Applicationtypename and id!=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[checkbusinesstypename]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkbusinesstypename] 
	@Businesstypename varchar(50)
AS
BEGIN
	select * from BusinessTypeTable where BusinessTypeName=@Businesstypename
END


GO
/****** Object:  StoredProcedure [dbo].[checkbusinesstypenameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[checkbusinesstypenameupdate] 
	@Businesstypename varchar(50),
	@Id varchar(50)
AS
BEGIN
	select * from BusinessTypeTable where BusinessTypeName=@Businesstypename and id!=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[checkcityname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkcityname]
			@City	varchar(50)

AS
BEGIN
		    select * from City_Master where City=@City

END


GO
/****** Object:  StoredProcedure [dbo].[checkcompanycontactname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkcompanycontactname]
	@companyno varchar(250),
@ContactName varchar(250),
@ContactEmail varchar(350)
AS
BEGIN
	    select * from tbl_Company_Contact_Master where Companyno=@companyno and ContactName=@ContactName and ContactEmail=@ContactEmail

END


GO
/****** Object:  StoredProcedure [dbo].[checkcompanyname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkcompanyname]
	@comname varchar(50),
	@Email varchar(50)
AS
BEGIN
	select Name,Email from tbl_Customer_Master where Name=@comname and Email=@Email

END


GO
/****** Object:  StoredProcedure [dbo].[checkcompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[checkcompressortype]
	@CompressorType varchar(50)

AS
BEGIN
					select * from CompressorTypeTable where CompressorType=@CompressorType

END


GO
/****** Object:  StoredProcedure [dbo].[checkcompressortypename]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[checkcompressortypename] 
	@Compressortypename varchar(50)
AS
BEGIN
	select * from CompressorTypeTable where CompressorType=@Compressortypename
END


GO
/****** Object:  StoredProcedure [dbo].[checkcompressortypenameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[checkcompressortypenameupdate] 
	@Compressortypename varchar(50),
	@Id varchar(50)
AS
BEGIN
	select * from CompressorTypeTable where CompressorType=@Compressortypename and id!=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[checkcountryname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkcountryname]
		@Country varchar(50)

AS
BEGIN
		select * from Country_Master where Country=@Country

END


GO
/****** Object:  StoredProcedure [dbo].[checkCustName]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkCustName]
	@comname varchar(50),
	@Email varchar(50),
	@Id varchar(50)
AS
BEGIN
	select Name,Email from tbl_Customer_Master where Name=@comname and Email=@Email and No!=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[checkcustomercontactname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkcustomercontactname]
	@Custno varchar(250),
@ContactName varchar(250),
@ContactEmail varchar(350)
AS
BEGIN
    select * from tbl_Customer_Contact_Master where Custno=@Custno and ContactName=@ContactName and ContactEmail=@ContactEmail

END


GO
/****** Object:  StoredProcedure [dbo].[checkCustomername]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[checkCustomername]
	@comname varchar(50),
	@Email varchar(50)
AS
BEGIN
	select Name from tbl_Customer_Master where Name=@comname and Email=@Email

END


GO
/****** Object:  StoredProcedure [dbo].[checkdepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkdepartment]
	@Department varchar(50)

AS
BEGIN
					select * from DepartmentTable where Department=@Department

END


GO
/****** Object:  StoredProcedure [dbo].[checkdesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkdesignation] 
	@Designation varchar(50)
AS
BEGIN
				select * from DesignationTable where Designation=@Designation

END


GO
/****** Object:  StoredProcedure [dbo].[checkEmployee]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[checkEmployee]
	@comname varchar(50),
	@Email varchar(50)
AS
BEGIN
	select Ename,Eemailid from tbl_Employee_master where Ename=@comname and Eemailid=@Email

END


GO
/****** Object:  StoredProcedure [dbo].[checkFollowup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkFollowup] 
	 @Noseries varchar(250),
@NextFolldate varchar(50),
@Follotype int
AS
BEGIN
    select * from tbl_Inqiury_Followup where Noseries=@Noseries and NextFolldate=@NextFolldate and  Follotype=@Follotype
END


GO
/****** Object:  StoredProcedure [dbo].[checkfollowuptype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkfollowuptype]
	@FollowUpType varchar(50)
AS
BEGIN
						select * from FollowUpTable where FollowUpType=@FollowUpType

END


GO
/****** Object:  StoredProcedure [dbo].[checkindustryname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkindustryname]
	@IndustryName varchar(50)
AS
BEGIN
	select * from IndustryTable where IndustryName=@IndustryName

END


GO
/****** Object:  StoredProcedure [dbo].[checkindustrynameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[checkindustrynameupdate]
	@IndustryName varchar(50),
	@Id varchar(50)
AS
BEGIN
	select * from IndustryTable where IndustryName=@IndustryName and id!=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[checkInqiuryalready]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkInqiuryalready]
	@InqiuryNo varchar(250),
@Inquirydate varchar(50),

@Custname int
AS
BEGIN
	    select * from Inqiury_Master where InqiuryNo=@InqiuryNo and Inquirydate=@Inquirydate and   Custname=@Custname

END


GO
/****** Object:  StoredProcedure [dbo].[checkitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkitemgroup]
	@ItemGroup varchar(50)

AS
BEGIN
					select * from ItemGroupTable where ItemGroup=@ItemGroup

END


GO
/****** Object:  StoredProcedure [dbo].[checkItemname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkItemname] 
@Itemname varchar(50)
AS
BEGIN
	    select * from Itemaster where Itemname=@Itemname

END


GO
/****** Object:  StoredProcedure [dbo].[checkitemsubgroupname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkitemsubgroupname] 
	@ItemSubgroupName	varchar(50),
	@GroupName varchar(50)
AS
BEGIN
    select * from ItemSubgroupTable where SubgroupName=@ItemSubgroupName  and itemgroupid=@GroupName

END


GO
/****** Object:  StoredProcedure [dbo].[checklogindetails]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checklogindetails]
	@Email varchar(50),
	@Password varchar(50)
AS
BEGIN      
		select id,Name,Designation from AdminTable where Email=@Email and Password=@Password

END



GO
/****** Object:  StoredProcedure [dbo].[checkmachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[checkmachinetype]
	@MachineType varchar(50)

AS
BEGIN
					select * from MachineTypeTable where MachineType=@MachineType

END


GO
/****** Object:  StoredProcedure [dbo].[checkmachinetypename]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[checkmachinetypename] 
	@Machinetypename varchar(50)
AS
BEGIN
	select * from MachineTypeTable where MachineType=@Machinetypename
END


GO
/****** Object:  StoredProcedure [dbo].[checkmachinetypenameupdate]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[checkmachinetypenameupdate] 
	@Machinetypename varchar(50),
	@Id varchar(50)
AS
BEGIN
	select * from MachineTypeTable where MachineType=@Machinetypename and id!=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[checkOrderFollowup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkOrderFollowup]
	@Noseries varchar(250),
@NextFolldate varchar(50),
@Follotype int
AS
BEGIN
		    select * from tbl_Order_Followup where Qno=@Noseries and NextFolldate=@NextFolldate and  Follotype=@Follotype

END


GO
/****** Object:  StoredProcedure [dbo].[checkOrderProductName]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkOrderProductName]	
	@Noseries varchar(250),

@Item varchar(350)
AS
BEGIN
		    select * from Order_Details where Qno=@Noseries and Item=@Item 

END


GO
/****** Object:  StoredProcedure [dbo].[checkProductName]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkProductName]
	@Noseries varchar(250),

@Item varchar(350)
AS
BEGIN
	    select * from Inqiury_Details where Noseries=@Noseries and Item=@Item 

END


GO
/****** Object:  StoredProcedure [dbo].[checkQuotationalready]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkQuotationalready] 
	@InqiuryNo varchar(250),
@Inquirydate varchar(50),

@Custname int
AS
BEGIN
		    select * from Quotation_Master where QuotationNo=@InqiuryNo and Quotationdate=@Inquirydate and   Custname=@Custname

END


GO
/****** Object:  StoredProcedure [dbo].[checkQuotationFollowup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkQuotationFollowup]
	@Noseries varchar(250),
@NextFolldate varchar(50),
@Follotype int
AS
BEGIN
	    select * from tbl_Quotation_Followup where Noseries=@Noseries and NextFolldate=@NextFolldate and  Follotype=@Follotype

END


GO
/****** Object:  StoredProcedure [dbo].[checkQuotationProductName]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkQuotationProductName] 
@Noseries varchar(250),

@Item varchar(350)
AS
BEGIN
	    select * from Quotation_Details where Noseries=@Noseries and Item=@Item 

END


GO
/****** Object:  StoredProcedure [dbo].[checkrole]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkrole]
		@Role varchar(50)

AS
BEGIN
		select * from RoleTable where Role=@Role

END


GO
/****** Object:  StoredProcedure [dbo].[checksource]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checksource]
	@Source varchar(50)

AS
BEGIN
			select * from SourceTable where Source=@Source

END


GO
/****** Object:  StoredProcedure [dbo].[checkstatename]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkstatename]
		@State	varchar(50)

AS
BEGIN
	    select * from State_Master where State=@State

END


GO
/****** Object:  StoredProcedure [dbo].[checkstatus]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkstatus]
	@Status varchar(50)
AS
BEGIN
				select * from StatusTable where Status=@Status

END


GO
/****** Object:  StoredProcedure [dbo].[checktermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checktermsandconditions] 
	@Title  varchar(MAX)
AS
BEGIN
					select * from TermsandConditions_Master where Title=@Title

END


GO
/****** Object:  StoredProcedure [dbo].[checkunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkunitofmeasurement]
		@UnitofMeasurement varchar(50)

AS
BEGIN
					select * from UnitofMeasurementTable where UnitofMeasurement=@UnitofMeasurement

END


GO
/****** Object:  StoredProcedure [dbo].[compressortypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[compressortypedisp]
	
AS
BEGIN
	 select id,CompressorType from CompressorTypeTable order by CompressorType
END


GO
/****** Object:  StoredProcedure [dbo].[countrydisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[countrydisp]
	
AS
BEGIN
		 select id,Country from Country_Master order by Country

END


GO
/****** Object:  StoredProcedure [dbo].[deleteapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteapplicationtype]
	@id int
AS
BEGIN
			delete  from ApplicationTypeTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[deletebusinesstype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletebusinesstype]
	@id int
AS
BEGIN
 delete  from BusinessTypeTable where id=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[deletecitydatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletecitydatabyid] 
			@id varchar(50)

AS
BEGIN
			    delete  from City_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deletecompany]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletecompany]
		@id int

AS
BEGIN
	 delete  from Country_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deletecompanycontactdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletecompanycontactdatabyid]
@id int

AS
BEGIN
	delete from tbl_Company_Contact_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deletecompanydata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[deletecompanydata] 
			@id varchar(50)

AS
BEGIN
			    delete  from tbl_Company_Master where Companyno=@id
				   delete  from tbl_Company_Contact_Master where Companyno=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deletecompanydatabyCompanyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletecompanydatabyCompanyno]
	@companyno varchar(50)

AS
BEGIN
	 delete  from tbl_Company_Master where Companyno=@companyno
	delete from tbl_Company_Contact_Master where Companyno=@companyno
END


GO
/****** Object:  StoredProcedure [dbo].[deletecompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletecompressortype]
	@id int
AS
BEGIN
			delete  from CompressorTypeTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[deletecountry]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletecountry]
		@id int

AS
BEGIN
	 delete  from Country_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteCustomer]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[deleteCustomer] 
			@id varchar(50)

AS
BEGIN
			    delete  from tbl_Customer_Master where No=@id
				   delete  from tbl_Customer_Contact_Master where Custno=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteCustomercontactdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteCustomercontactdatabyid] 
	@id int
AS
BEGIN
	delete from tbl_Customer_Contact_Master where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[deleteCustomerdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteCustomerdatabyno] 
	@No varchar(50)
AS
BEGIN
	    delete  from tbl_Customer_Contact_Master where Custno=@No
	delete from tbl_Customer_Master where No=@No
END


GO
/****** Object:  StoredProcedure [dbo].[deletedepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletedepartment] 
		@id int

AS
BEGIN
			delete  from DepartmentTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[deletedesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletedesignation]
			@id int

AS
BEGIN
				delete  from DesignationTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteemployeedatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteemployeedatabyno]
	@no varchar(50)

AS
BEGIN
	delete  from tbl_Employee_Document_Master where no=@no
	delete from tbl_Employee_master where no=@no
END


GO
/****** Object:  StoredProcedure [dbo].[deleteemployeedocumentdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteemployeedocumentdatabyid]
	@id int

AS
BEGIN
	delete from tbl_Employee_Document_Master where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[deletefollowuptype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletefollowuptype] 
			@id int

AS
BEGIN
			delete  from FollowUpTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteindustryname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteindustryname]
	@id int
AS
BEGIN
  delete  from IndustryTable where id=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[deleteinquirydetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteinquirydetailsdatabyid]
	@id int

AS
BEGIN
	delete from Inqiury_Details where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteinquiryfilesdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[deleteinquiryfilesdatabyid]
@id int
as
delete from Inquiry_Files where Id=@id


GO
/****** Object:  StoredProcedure [dbo].[deleteinquiryfollowupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteinquiryfollowupdatabyid] 
	@id int

AS
BEGIN
	delete from tbl_Inqiury_Followup where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteitematano]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteitematano]
	@no varchar(50)
AS
BEGIN
	delete  from Itemaster where no=@no
	delete from Itemdocumentmaster where no=@no
	delete from Itemimagemaster where no=@no
END


GO
/****** Object:  StoredProcedure [dbo].[deleteitemdocumentdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteitemdocumentdatabyid]
	@id int
AS
BEGIN
	delete from Itemdocumentmaster where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[deleteitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteitemgroup]
	@id int
AS
BEGIN
			delete  from ItemGroupTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteitemimgdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteitemimgdatabyid] 
	@id int
AS
BEGIN
	delete from Itemimagemaster where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[deleteitemsubgroupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteitemsubgroupdatabyid]
	@id varchar(50)
AS
BEGIN
	    delete  from ItemSubgroupTable where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deletemachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[deletemachinetype]
	@id int
AS
BEGIN
			delete  from MachineTypeTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteOrderdetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteOrderdetailsdatabyid] 
	@id int
AS
BEGIN
			delete from Order_Details where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteorderfollowupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteorderfollowupdatabyid]
		@id int

AS
BEGIN
	delete from tbl_Order_Followup where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[deleteordertandc]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteordertandc] 
		@Noseries bigint

AS
BEGIN
	delete from Ordertandc where Qno=@Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[deletequotationdetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletequotationdetailsdatabyid]
	@id int

AS
BEGIN
		delete from Quotation_Details where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[deletequotationfollowupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletequotationfollowupdatabyid]
		@id int

AS
BEGIN
		delete from tbl_Quotation_Followup where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deletequotationtandc]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletequotationtandc]
	@Noseries bigint
AS
BEGIN
	
	delete from Quotationstandc where Noseries=@Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[deleterole]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleterole]
		@id int

AS
BEGIN
	 delete  from RoleTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[deletesource]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletesource] 
	@id int

AS
BEGIN
	delete  from SourceTable where id=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[deletestatedatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletestatedatabyid]
		@id varchar(50)

AS
BEGIN
		    delete  from State_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deletestatus]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletestatus]
	@id int
AS
BEGIN
		delete  from StatusTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[deletetermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletetermsandconditions]
				@id int

AS
BEGIN
					delete  from TermsandConditions_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[deleteunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteunitofmeasurement]
		@id int

AS
BEGIN
		delete  from UnitofMeasurementTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[depaartmentdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[depaartmentdisp] 
	
AS
BEGIN
	select id,Department from DepartmentTable order by Department
END


GO
/****** Object:  StoredProcedure [dbo].[designationdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[designationdisp]

AS
BEGIN
		select id,Designation from designationTable order by Designation

END


GO
/****** Object:  StoredProcedure [dbo].[followuptypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[followuptypedisp]
	
AS
BEGIN
			select id,FollowUpType from FollowUpTable order by FollowUpType

END


GO
/****** Object:  StoredProcedure [dbo].[getallcityforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallcityforadmin] 

AS
BEGIN
	SELECT        dbo.City_Master.id, dbo.City_Master.City, dbo.State_Master.State
FROM            dbo.City_Master INNER JOIN
                         dbo.State_Master ON dbo.City_Master.Statename = dbo.State_Master.id
						 ORDER BY dbo.City_Master.City
END


GO
/****** Object:  StoredProcedure [dbo].[getallcompanydata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallcompanydata]
	
AS
BEGIN
	SELECT        dbo.tbl_Company_Master.id, dbo.tbl_Company_Master.Companyno, dbo.tbl_Company_Master.Name, dbo.tbl_Company_Master.Area, dbo.tbl_Company_Master.Address, dbo.tbl_Company_Master.City, 
                         dbo.tbl_Company_Master.State, dbo.tbl_Company_Master.District, dbo.tbl_Company_Master.Country, dbo.tbl_Company_Master.Pincode, dbo.tbl_Company_Master.PhoneNo, dbo.tbl_Company_Master.Email, 
                         dbo.tbl_Company_Master.URL, dbo.tbl_Company_Master.Status, dbo.tbl_Company_Master.GSTno, dbo.tbl_Company_Master.Accountno, dbo.tbl_Company_Master.Bankname, dbo.tbl_Company_Master.IFSCcode, 
                         dbo.BusinessTypeTable.BusinessTypeName, dbo.IndustryTable.IndustryName
FROM            dbo.tbl_Company_Master INNER JOIN
                         dbo.BusinessTypeTable ON dbo.tbl_Company_Master.BusinessType = dbo.BusinessTypeTable.id INNER JOIN
                         dbo.IndustryTable ON dbo.tbl_Company_Master.Industrygroup = dbo.IndustryTable.id
END


GO
/****** Object:  StoredProcedure [dbo].[getallcompanydatabyadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[getallcompanydatabyadmin] 
AS
BEGIN
	select * from V_Company 

END	


GO
/****** Object:  StoredProcedure [dbo].[getallcompanydatabycomno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallcompanydatabycomno]
	@comno varchar(50)

AS
BEGIN
	select * from tbl_Company_Master where Companyno=@comno

END


GO
/****** Object:  StoredProcedure [dbo].[getallcompanydataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallcompanydataforadmin] 
	
AS
BEGIN
	   SELECT        dbo.tbl_Company_Master.id, dbo.tbl_Company_Master.Companyno, dbo.tbl_Company_Master.Name, dbo.tbl_Company_Master.Area, dbo.tbl_Company_Master.Address, dbo.tbl_Company_Master.City, 
                         dbo.tbl_Company_Master.State, dbo.tbl_Company_Master.District, dbo.tbl_Company_Master.Country, dbo.tbl_Company_Master.Pincode, dbo.tbl_Company_Master.PhoneNo, dbo.tbl_Company_Master.Email, 
                         dbo.tbl_Company_Master.URL, dbo.tbl_Company_Master.Status, dbo.tbl_Company_Master.GSTno, dbo.tbl_Company_Master.Accountno, dbo.tbl_Company_Master.Bankname, dbo.tbl_Company_Master.IFSCcode, 
                         dbo.BusinessTypeTable.BusinessTypeName, dbo.IndustryTable.IndustryName
FROM            dbo.tbl_Company_Master INNER JOIN
                         dbo.BusinessTypeTable ON dbo.tbl_Company_Master.BusinessType = dbo.BusinessTypeTable.id INNER JOIN
                         dbo.IndustryTable ON dbo.tbl_Company_Master.Industrygroup = dbo.IndustryTable.id
END


GO
/****** Object:  StoredProcedure [dbo].[getallCustomerdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallCustomerdatabyno]
	@No varchar(50)
AS
BEGIN
	select * from tbl_Customer_Master where No=@No
END


GO
/****** Object:  StoredProcedure [dbo].[getallCustomerMasterata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallCustomerMasterata]
	
AS
BEGIN
	SELECT        dbo.tbl_Customer_Master.Id, dbo.tbl_Customer_Master.No, dbo.tbl_Customer_Master.Name, dbo.tbl_Customer_Master.Area, dbo.tbl_Customer_Master.Address, dbo.tbl_Customer_Master.City, dbo.tbl_Customer_Master.State, 
                         dbo.tbl_Customer_Master.District, dbo.tbl_Customer_Master.Country, dbo.tbl_Customer_Master.Pincode, dbo.tbl_Customer_Master.PhoneNo, dbo.tbl_Customer_Master.Email, dbo.tbl_Customer_Master.URL, 
                         dbo.tbl_Customer_Master.Status, dbo.tbl_Customer_Master.GSTno, dbo.tbl_Customer_Master.Bankname, dbo.tbl_Customer_Master.Accountno, dbo.tbl_Customer_Master.IFSCcode, 
                         dbo.BusinessTypeTable.BusinessTypeName, dbo.IndustryTable.IndustryName
FROM            dbo.tbl_Customer_Master INNER JOIN
                         dbo.BusinessTypeTable ON dbo.tbl_Customer_Master.BussinessType = dbo.BusinessTypeTable.id INNER JOIN
                         dbo.IndustryTable ON dbo.tbl_Customer_Master.Industrygroup = dbo.IndustryTable.id
END


GO
/****** Object:  StoredProcedure [dbo].[getallCustomerMasterataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallCustomerMasterataforadmin]
	
AS
begin
select * from V_Customer_Record where Status = 'Active'
END


GO
/****** Object:  StoredProcedure [dbo].[getallemployeedata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallemployeedata]
	@Createby varchar(50)
AS
BEGIN
SELECT        dbo.tbl_Employee_master.Id, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Employee_master.Efname, 
                         dbo.tbl_Employee_master.Esurname, dbo.tbl_Employee_master.Egender, dbo.tbl_Employee_master.Epaddress, dbo.tbl_Employee_master.Eperaddress, 
                         dbo.tbl_Employee_master.Emobilenop, dbo.tbl_Employee_master.Emobileoffice, dbo.tbl_Employee_master.Erole, dbo.tbl_Employee_master.Emobilewhatsup, 
                         dbo.tbl_Employee_master.Epfno, dbo.tbl_Employee_master.Edoa, dbo.tbl_Employee_master.Edoj, dbo.tbl_Employee_master.Edol, dbo.tbl_Employee_master.Edept, 
                         dbo.tbl_Employee_master.Edesign, dbo.tbl_Employee_master.Eemailid, dbo.tbl_Employee_master.Eurgentcontactname, 
                         dbo.tbl_Employee_master.Eurgentcontactno, dbo.tbl_Employee_master.Eurgentcontactrelation, dbo.tbl_Employee_master.Estatus, 
                         dbo.tbl_Employee_master.Ebankname, dbo.tbl_Employee_master.Eaccno, dbo.tbl_Employee_master.Eifsccode,
                             (SELECT        Department
                               FROM            dbo.DepartmentTable
                               WHERE        (id = dbo.tbl_Employee_master.Edept)) AS DeptName,
                             (SELECT        Designation
                               FROM            dbo.DesignationTable
                               WHERE        (id = dbo.tbl_Employee_master.Edesign)) AS DesigNam, dbo.City_Master.City, dbo.State_Master.State, dbo.Country_Master.Country, 
                         dbo.tbl_Employee_master.Createby
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.City_Master ON dbo.tbl_Employee_master.ECity = dbo.City_Master.id INNER JOIN
                         dbo.State_Master ON dbo.tbl_Employee_master.EState = dbo.State_Master.id INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Employee_master.ECountry = dbo.Country_Master.id
WHERE        (dbo.tbl_Employee_master.Createby = @Createby)
END


GO
/****** Object:  StoredProcedure [dbo].[getallemployeedataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallemployeedataforadmin]
	
AS
BEGIN
SELECT  * from V_Employee     
END


GO
/****** Object:  StoredProcedure [dbo].[getallInqiurydatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallInqiurydatabyno]  
	@Noseries varchar(50)

AS
BEGIN
	SELECT	InqiuryNo,Noseries,Inquirydate,(SELECT No FROM tbl_Customer_Master  WHERE (Id = Inqiury_Master.Custname)) as Cno,ContactEmail, ContactMno1, ContactMno2, Custcontactno, Dept, Design, Remarks,  Custname AS Custnameid, Custcontact, InqiuryStatus, 
                         InquirySource
	 FROM Inqiury_Master WHERE        (Noseries = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[getallInqiurydataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getallInqiurydataforadmin] 
	
AS
BEGIN
SELECT        dbo.Inqiury_Master.InqiuryNo, dbo.Inqiury_Master.Noseries, dbo.Inqiury_Master.Inquirydate, tbl_Customer_Contact_Master_1.ContactName, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         tbl_Customer_Contact_Master_1.ContactPhone, dbo.tbl_Customer_Master.Name, dbo.Inqiury_Master.ContactEmail, dbo.Inqiury_Master.ContactMno1
FROM            dbo.Inqiury_Master INNER JOIN
                         dbo.tbl_Customer_Contact_Master AS tbl_Customer_Contact_Master_1 ON dbo.Inqiury_Master.Custcontact = tbl_Customer_Contact_Master_1.Id INNER JOIN
                         dbo.StatusTable ON dbo.Inqiury_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Inqiury_Master.InquirySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Inqiury_Master.Custname = dbo.tbl_Customer_Master.No
END

GO
/****** Object:  StoredProcedure [dbo].[getallinqiurydetailsdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallinqiurydetailsdata]
	@Noseries bigint
AS
BEGIN
	SELECT        dbo.Itemaster.Itemname, dbo.Inqiury_Details.Item, dbo.Inqiury_Details.UOM, dbo.Inqiury_Details.Qty, dbo.Inqiury_Details.Rate, dbo.Inqiury_Details.Amount
FROM            dbo.Inqiury_Details INNER JOIN
                         dbo.Itemaster ON dbo.Inqiury_Details.Item = dbo.Itemaster.id where Noseries=@Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[getallinquiryfollwup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallinquiryfollwup]
		@Noseries bigint
AS
BEGIN
--	SELECT        dbo.Inqiury_Details.Id, dbo.Inqiury_Details.Noseries, dbo.Itemaster.Itemname, dbo.UnitofMeasurementTable.UnitofMeasurement, dbo.Inqiury_Details.Qty, dbo.Inqiury_Details.Rate, dbo.Inqiury_Details.Amount
--FROM            dbo.Inqiury_Details INNER JOIN
--                         dbo.Itemaster ON dbo.Inqiury_Details.Item = dbo.Itemaster.id INNER JOIN
--                         dbo.UnitofMeasurementTable ON dbo.Inqiury_Details.UOM = dbo.UnitofMeasurementTable.id where dbo.Inqiury_Details.Noseries = @Noseries
select tbl_Inqiury_Followup.Id,tbl_Inqiury_Followup.Noseries,FollowUpTable.FollowUpType from tbl_Inqiury_Followup inner join FollowUpTable on  tbl_Inqiury_Followup.Follotype = FollowUpTable.id where tbl_Inqiury_Followup.Noseries= @Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[getallitem]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallitem] 
 
 @id int
As
BEGIN
	select * from Itemaster where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[getallitemdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallitemdata] 
	
AS
BEGIN
	SELECT        dbo.Itemaster.id, dbo.Itemaster.no, dbo.Itemaster.itemgroup, dbo.Itemaster.itemsubgroup, dbo.Itemaster.Modelno, dbo.Itemaster.Itemname, dbo.Itemaster.ItemFinalname, dbo.Itemaster.Itemalis, dbo.Itemaster.Itemcategoryno, 
                         dbo.Itemaster.ItemUOM, dbo.Itemaster.Itemrate, dbo.Itemaster.Itemgst, dbo.Itemaster.ItemHsn,dbo.Itemaster.ItemDesc, dbo.ItemGroupTable.ItemGroup AS Expr1, dbo.ItemSubgroupTable.SubgroupName, 
                         dbo.UnitofMeasurementTable.UnitofMeasurement
FROM            dbo.Itemaster INNER JOIN
                         dbo.ItemGroupTable ON dbo.Itemaster.itemgroup = dbo.ItemGroupTable.id INNER JOIN
                         dbo.ItemSubgroupTable ON dbo.Itemaster.itemsubgroup = dbo.ItemSubgroupTable.id INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Itemaster.ItemUOM = dbo.UnitofMeasurementTable.id 
						 

END


GO
/****** Object:  StoredProcedure [dbo].[getallitemdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallitemdatabyno] 
	@no varchar(50)
AS
BEGIN
	select * from Itemaster where no=@no	
END


GO
/****** Object:  StoredProcedure [dbo].[getallItemdataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallItemdataforadmin] 
	
AS
BEGIN
	SELECT        dbo.Itemaster.id, dbo.Itemaster.no, dbo.Itemaster.itemgroup, dbo.Itemaster.itemsubgroup, dbo.Itemaster.Modelno, dbo.Itemaster.Itemname, dbo.Itemaster.ItemFinalname, dbo.Itemaster.Itemalis, dbo.Itemaster.Itemcategoryno, 
                         dbo.Itemaster.ItemUOM, dbo.Itemaster.Itemrate, dbo.Itemaster.Itemgst, dbo.Itemaster.ItemHsn, dbo.Itemaster.ItemDesc, dbo.ItemGroupTable.ItemGroup AS Expr1, dbo.ItemSubgroupTable.SubgroupName, 
                         dbo.UnitofMeasurementTable.UnitofMeasurement
FROM            dbo.Itemaster INNER JOIN
                         dbo.ItemGroupTable ON dbo.Itemaster.itemgroup = dbo.ItemGroupTable.id INNER JOIN
                         dbo.ItemSubgroupTable ON dbo.Itemaster.itemsubgroup = dbo.ItemSubgroupTable.id INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Itemaster.ItemUOM = dbo.UnitofMeasurementTable.id
END


GO
/****** Object:  StoredProcedure [dbo].[getallitemsubgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallitemsubgroup] 
	@id int
AS
BEGIN
	SELECT TOP(100) PERCENT dbo.ItemGroupTable.id,dbo.ItemSubgroupTable.SubgroupName,dbo.ItemGroupTable.ItemGroup,dbo.ItemSubgroupTable.itemgroupid
	FROM dbo.ItemSubgroupTable INNER JOIN dbo.ItemGroupTable ON dbo.ItemSubgroupTable.itemgroupid = dbo.ItemGroupTable.id
	WHERE dbo.ItemSubgroupTable.itemgroupid = dbo.ItemGroupTable.id
	ORDER BY	dbo.ItemSubgroupTable.SubgroupName 
END


GO
/****** Object:  StoredProcedure [dbo].[getallitemsubgroupforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallitemsubgroupforadmin] 
	
AS
BEGIN
SELECT        dbo.ItemSubgroupTable.SubgroupName, dbo.ItemGroupTable.ItemGroup, dbo.ItemSubgroupTable.id
FROM            dbo.ItemSubgroupTable INNER JOIN
                         dbo.ItemGroupTable ON dbo.ItemSubgroupTable.itemgroupid = dbo.ItemGroupTable.id
	
	ORDER BY	dbo.ItemSubgroupTable.SubgroupName 
END


GO
/****** Object:  StoredProcedure [dbo].[getallOrderdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallOrderdatabyno]
			@Noseries varchar(50)

AS
BEGIN
	SELECT	OrderNo,Qno,OrderDate,(SELECT No FROM tbl_Customer_Master  WHERE (Id = Order_Master.Custname)) as Cno,ContactEmail, ContactMno1, ContactMno2, Custcontactno, Dept, Design, Remarks,  Custname AS Custnameid, Custcontact, InqiuryStatus, 
                         InqiurySource
	 FROM Order_Master WHERE        (Qno = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[getallOrderdataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getallOrderdataforadmin]

AS
BEGIN
SELECT        dbo.Order_Master.OrderNo, dbo.Order_Master.Qno, dbo.Order_Master.OrderDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Order_Master.ContactEmail, dbo.Order_Master.ContactMno1, dbo.StatusTable.Status, 
                         dbo.SourceTable.Source, dbo.tbl_Customer_Master.Name
FROM            dbo.Order_Master INNER JOIN
                         dbo.StatusTable ON dbo.Order_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Order_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Order_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Order_Master.Custname = dbo.tbl_Customer_Master.No
END

GO
/****** Object:  StoredProcedure [dbo].[getallorderdetailsdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallorderdetailsdata]
	@Noseries bigint
AS
BEGIN
		select * from Order_Details where Qno=@Noseries

END


GO
/****** Object:  StoredProcedure [dbo].[getallQuotationdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallQuotationdatabyno] 
		@Noseries varchar(50)

AS
BEGIN
	SELECT	QuotationNo,Noseries,Quotationdate,(SELECT No FROM tbl_Customer_Master  WHERE (Id = Quotation_Master.Custname)) as Cno,ContactEmail, ContactMno1, ContactMno2, Custcontactno, Dept, Design, Remarks,  Custname AS Custnameid, Custcontact, InqiuryStatus, 
                         InqiurySource
	 FROM Quotation_Master WHERE        (Noseries = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[getallQuotationdataforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getallQuotationdataforadmin]


AS
BEGIN
	SELECT        dbo.Quotation_Master.QuotationNo, dbo.Quotation_Master.NoSeries, dbo.Quotation_Master.QuotationDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Quotation_Master.ContactEmail, 
                         dbo.Quotation_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, dbo.tbl_Customer_Master.Name
FROM            dbo.Quotation_Master INNER JOIN
                         dbo.StatusTable ON dbo.Quotation_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Quotation_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Quotation_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Quotation_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id
END

GO
/****** Object:  StoredProcedure [dbo].[getallstate]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallstate] 
		@id int

AS
BEGIN
	SELECT        dbo.State_Master.id, dbo.State_Master.State, dbo.Country_Master.Country
FROM            dbo.Country_Master INNER JOIN
                         dbo.State_Master ON dbo.Country_Master.id = dbo.State_Master.Countryname
						 ORDER BY dbo.State_Master.State
END


GO
/****** Object:  StoredProcedure [dbo].[getallstateforadmin]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallstateforadmin] 
	
AS
BEGIN
	SELECT        dbo.State_Master.id, dbo.State_Master.State, dbo.Country_Master.Country
FROM            dbo.Country_Master INNER JOIN
                         dbo.State_Master ON dbo.Country_Master.id = dbo.State_Master.Countryname
						 ORDER BY dbo.State_Master.State
END


GO
/****** Object:  StoredProcedure [dbo].[getcitydata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getcitydata] 
	@id int
AS
BEGIN
	select * from City_Master where Statename=@id
END


GO
/****** Object:  StoredProcedure [dbo].[getcitydatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getcitydatabyid] 
	@id varchar(50)
AS
BEGIN
			    select * from City_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getcompanycontactdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getcompanycontactdata] 
@companyno bigint

AS
BEGIN
	SELECT        TOP (100) PERCENT Companyno,Extra1,Extra2,Extra3,Extra4,Extra5, ContactName, ContactEmail, ContactMobileno1, ContactPhone, ContactMobileno2,
                             (SELECT        Department
                               FROM            dbo.DepartmentTable
                               WHERE        (Id = dbo.tbl_Company_Contact_Master.Dept)) AS DeptName,
                             (SELECT        Designation
                               FROM            dbo.DesignationTable
                               WHERE        (Id = dbo.tbl_Company_Contact_Master.Design)) AS DesigName, Id, Createby
FROM            dbo.tbl_Company_Contact_Master
WHERE        (Companyno = @companyno)
ORDER BY ContactName
END


GO
/****** Object:  StoredProcedure [dbo].[getcompanycontactdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getcompanycontactdatabyid]
	@id int

AS
BEGIN
select * from tbl_Company_Contact_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getCustomerConatctPerson]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getCustomerConatctPerson]
	@Custno int
AS
BEGIN
	    select Id,ContactName from tbl_Customer_Contact_Master where  Custno=@Custno

END

GO
/****** Object:  StoredProcedure [dbo].[getCustomercontactdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getCustomercontactdata] 
	@id int
AS
BEGIN
	SELECT        dbo.tbl_Customer_Contact_Master.Id, dbo.tbl_Customer_Contact_Master.Custno, dbo.tbl_Customer_Contact_Master.ContactName, dbo.tbl_Customer_Contact_Master.ContactEmail, dbo.tbl_Customer_Contact_Master.Extra1,dbo.tbl_Customer_Contact_Master.Extra2,
                         dbo.tbl_Customer_Contact_Master.ContactPhone, dbo.tbl_Customer_Contact_Master.ContactMobileno1, dbo.tbl_Customer_Contact_Master.ContactMobileno2, dbo.DepartmentTable.Department, 
                         dbo.DesignationTable.Designation
FROM            dbo.tbl_Customer_Contact_Master INNER JOIN
                         dbo.DepartmentTable ON dbo.tbl_Customer_Contact_Master.Dept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.tbl_Customer_Contact_Master.Design = dbo.DesignationTable.id
						 where dbo.tbl_Customer_Contact_Master.Custno= @id
END


GO
/****** Object:  StoredProcedure [dbo].[getCustomercontactdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getCustomercontactdatabyid]
	@id int
AS
BEGIN
select * from tbl_Customer_Contact_Master where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[getCustomerIdbyname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getCustomerIdbyname]
	@Name varchar(350)

AS
BEGIN
	select Id from tbl_Customer_Master where Name=@Name

END


GO
/****** Object:  StoredProcedure [dbo].[getdocumentadata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getdocumentadata]
	@createby varchar(50),
@no bigint
AS
BEGIN
	select * from tbl_Employee_Document_Master where no=@no and Createby=@createby

END


GO
/****** Object:  StoredProcedure [dbo].[getemployeedatano]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getemployeedatano]
	@no varchar(50)

AS
BEGIN
	select * from tbl_Employee_master where no=@no

END


GO
/****** Object:  StoredProcedure [dbo].[getFollowupdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getFollowupdata] 
	@Noseries bigint
AS
BEGIN
	
   SELECT        dbo.tbl_Inqiury_Followup.Id,dbo.tbl_Inqiury_Followup.Noseries, dbo.tbl_Inqiury_Followup.NextFolldate, dbo.tbl_Inqiury_Followup.Assignto, dbo.tbl_Inqiury_Followup.Remarks, dbo.tbl_Inqiury_Followup.Comremarks, dbo.tbl_Inqiury_Followup.Comdate, 
                         dbo.FollowUpTable.FollowUpType, dbo.StatusTable.Status
FROM            dbo.FollowUpTable INNER JOIN
                         dbo.tbl_Inqiury_Followup ON dbo.FollowUpTable.id = dbo.tbl_Inqiury_Followup.Follotype INNER JOIN
                         dbo.StatusTable ON dbo.tbl_Inqiury_Followup.FolloStatus = dbo.StatusTable.id
Where tbl_Inqiury_Followup.Noseries=@Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[getFollowupDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getFollowupDetailsdatabyid]
	@id int
AS
BEGIN
	select * from tbl_Inqiury_Followup where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getInqiuryDetailsdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getInqiuryDetailsdata]
	@Noseries bigint

AS
BEGIN
SELECT        dbo.Inqiury_Details.Id, dbo.Inqiury_Details.Noseries, dbo.Itemaster.Itemname, dbo.UnitofMeasurementTable.UnitofMeasurement, dbo.Inqiury_Details.Inqiuryserialno, dbo.ApplicationTypeTable.ApplicationType, 
                         dbo.Inqiury_Details.Qty, dbo.Inqiury_Details.Rate, dbo.Inqiury_Details.Amount, dbo.Inqiury_Details.Inqiuryequipmenttype, dbo.Inqiury_Details.Inqiurymanufacturename, dbo.Inqiury_Details.Inqiurymanufactureddate, 
                         dbo.Inqiury_Details.Inqiurypowerunitconsuption, dbo.Inqiury_Details.Inqiurycoolingcapacity, dbo.Inqiury_Details.Inqiurycompressorinonecircuit, dbo.Inqiury_Details.Inqiurynumberofcircuits, 
                         dbo.Inqiury_Details.Inqiuryhotgasdischarge, dbo.Inqiury_Details.Inqiurytypeofrefrigerant, dbo.Inqiury_Details.Inqiuryannualpowerusage, dbo.Inqiury_Details.Inqiuryavergedailyhours, dbo.Inqiury_Details.Inqiurydaysrunperyear, 
                         dbo.Inqiury_Details.InqiuryelectricityrateperKWH, dbo.Inqiury_Details.Inqiurypercentageofoperationperhour, dbo.Inqiury_Details.Inqiuryestimatedistance, dbo.Inqiury_Details.Extra1, dbo.Inqiury_Details.Extra2, 
                         dbo.MachineTypeTable.MachineType, dbo.CompressorTypeTable.CompressorType
FROM            dbo.Inqiury_Details INNER JOIN
                         dbo.Itemaster ON dbo.Inqiury_Details.Item = dbo.Itemaster.id INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Inqiury_Details.UOM = dbo.UnitofMeasurementTable.id INNER JOIN
                         dbo.ApplicationTypeTable ON dbo.Inqiury_Details.Inqiuryapplicationtype = dbo.ApplicationTypeTable.id INNER JOIN
                         dbo.MachineTypeTable ON dbo.Inqiury_Details.Inqiurymachinetype = dbo.MachineTypeTable.id INNER JOIN
                         dbo.CompressorTypeTable ON dbo.Inqiury_Details.Inqiurycompressortype = dbo.CompressorTypeTable.id
where dbo.Inqiury_Details.Noseries = @Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[getInqiuryDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getInqiuryDetailsdatabyid]
	@id int

AS
BEGIN
	select * from Inqiury_Details where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getinquiryfilesdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getinquiryfilesdatabyid]
@id int
as
select * from Inquiry_Files where Id=@id


GO
/****** Object:  StoredProcedure [dbo].[getinquiryfilesdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getinquiryfilesdatabyno]
@id int
as
select * from Inquiry_Files where NoSeries=@id


GO
/****** Object:  StoredProcedure [dbo].[getitemdocumentdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getitemdocumentdata] 
	@no bigint
AS
BEGIN
	select * from Itemdocumentmaster where no=@no 

END


GO
/****** Object:  StoredProcedure [dbo].[getitemimagedata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getitemimagedata]
	@no bigint
AS
BEGIN
	select * from Itemimagemaster where no=@no 

END


GO
/****** Object:  StoredProcedure [dbo].[getitemsubgroupdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getitemsubgroupdatabyid] 
	@id varchar(50)
AS
BEGIN
	    select * from ItemSubgroupTable where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getOrderDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getOrderDetailsdatabyid] 
			@id int

AS
BEGIN
		select * from Order_Details where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getOrderFollowup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getOrderFollowup]
		@Noseries bigint

AS
BEGIN
	SELECT tbl_Order_Followup.Id, tbl_Order_Followup.Qno , tbl_Order_Followup.NextFolldate, FollowUpTable.FollowUpType, tbl_Order_Followup.Assignto, StatusTable.Status,
	tbl_Order_Followup.Remarks 
	FROM FollowUpTable INNER JOIN 
	                  tbl_Order_Followup ON FollowUpTable.id = tbl_Order_Followup.Follotype INNER JOIN StatusTable ON tbl_Order_Followup.FolloStatus = StatusTable.id
					  where Qno=@Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[getorderFollowupdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getorderFollowupdata] 
		@Noseries bigint

AS
BEGIN
	 SELECT        dbo.tbl_Order_Followup.Id, dbo.tbl_Order_Followup.Qno, dbo.tbl_Order_Followup.NextFolldate, dbo.FollowUpTable.FollowUpType, dbo.tbl_Order_Followup.Assignto, dbo.StatusTable.Status, 
                         dbo.tbl_Order_Followup.Remarks
FROM            dbo.FollowUpTable INNER JOIN
                         dbo.tbl_Order_Followup ON dbo.FollowUpTable.id = dbo.tbl_Order_Followup.Follotype INNER JOIN
                         dbo.StatusTable ON dbo.tbl_Order_Followup.FolloStatus = dbo.StatusTable.id
END


GO
/****** Object:  StoredProcedure [dbo].[getorderFollowupDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getorderFollowupDetailsdatabyid]
		@id int

AS
BEGIN
		select * from tbl_Order_Followup where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getQuotationDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getQuotationDetailsdatabyid] 
		@id int

AS
BEGIN
		select * from Quotation_Details where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getquotationetailsdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getquotationetailsdata]
		@Noseries bigint

AS
BEGIN
SELECT        dbo.Itemaster.Itemname, dbo.Quotation_Details.Item, dbo.Quotation_Details.UOM, dbo.Quotation_Details.Rate, dbo.Quotation_Details.Qty, dbo.Quotation_Details.Amount, dbo.Quotation_Details.Id
FROM            dbo.Itemaster INNER JOIN
                         dbo.Quotation_Details ON dbo.Itemaster.id = dbo.Quotation_Details.Item where Noseries=@Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[getquotationFollowupdata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getquotationFollowupdata]
	@Noseries bigint
AS
BEGIN
	SELECT tbl_Quotation_Followup.Id, tbl_Quotation_Followup.Noseries , tbl_Quotation_Followup.NextFolldate, FollowUpTable.FollowUpType, tbl_Quotation_Followup.Assignto, StatusTable.Status,
	tbl_Quotation_Followup.Remarks 
	FROM FollowUpTable INNER JOIN 
	                  tbl_Quotation_Followup ON FollowUpTable.id = tbl_Quotation_Followup.Follotype INNER JOIN StatusTable ON tbl_Quotation_Followup.FolloStatus = StatusTable.id
					  where Noseries=@Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[getQuotationFollowupDetailsdatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getQuotationFollowupDetailsdatabyid]
		@id int
AS
BEGIN
	Select * from tbl_Quotation_Followup where Id= @id
END


GO
/****** Object:  StoredProcedure [dbo].[getscitydatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getscitydatabyid]
			@id varchar(50)

AS
BEGIN
			    select * from City_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getstatedata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getstatedata]
	@id int
AS
BEGIN
	select * from State_Master where Countryname= @id
END


GO
/****** Object:  StoredProcedure [dbo].[getstatedatabyid]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getstatedatabyid]
		@id varchar(50)

AS
BEGIN
		    select * from State_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[gettallorderitemdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gettallorderitemdatabyno]
			@Noseries varchar(50)

AS
BEGIN
	SELECT        dbo.Itemaster.Itemname, dbo.Order_Details.UOM, dbo.Order_Details.Qty, dbo.Order_Details.Rate, dbo.Order_Details.Amount, dbo.Order_Details.Id
FROM            dbo.Order_Details INNER JOIN
                         dbo.Itemaster ON dbo.Order_Details.Item = dbo.Itemaster.id 
WHERE        (dbo.Order_Details.Qno = @Noseries )
END


GO
/****** Object:  StoredProcedure [dbo].[gettallQuotationsInquirydatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gettallQuotationsInquirydatabyno]
	@Noseries varchar(50)
AS
BEGIN
	SELECT  * from Inqiury_Master 
WHERE        (dbo.Inqiury_Master.Noseries = @Noseries )
END


GO
/****** Object:  StoredProcedure [dbo].[gettallQuotationsitemdatabyno]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gettallQuotationsitemdatabyno] 
		@Noseries varchar(50)

AS
BEGIN
	SELECT        dbo.Itemaster.Itemname, dbo.Quotation_Details.UOM, dbo.Quotation_Details.Qty, dbo.Quotation_Details.Rate, dbo.Quotation_Details.Amount, dbo.Quotation_Details.Id
FROM            dbo.Quotation_Details INNER JOIN
                         dbo.Itemaster ON dbo.Quotation_Details.Item = dbo.Itemaster.id 
WHERE        (dbo.Quotation_Details.Noseries = @Noseries )
END


GO
/****** Object:  StoredProcedure [dbo].[indutrynamedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[indutrynamedisp] 
	
AS
BEGIN
	 select id,IndustryName from IndustryTable order by IndustryName
END


GO
/****** Object:  StoredProcedure [dbo].[insert_order_tandc]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insert_order_tandc] 
	@termsid int,
@termsdescription varchar(max),
@Noseries bigint,
@termstitle varchar(max),
@status varchar(50),
@Createby varchar(50),
@Createdatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3 varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
			INSERT	INTO Ordertandc values (@termsid,@Noseries,@termstitle,@termsdescription,@status,@Createby,@Createdatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5) 

END


GO
/****** Object:  StoredProcedure [dbo].[insert_quotations_tandc]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insert_quotations_tandc] 
	
	
@termsid int,
@termsdescription varchar(max),
@Noseries bigint,
@termstitle varchar(max),
@status varchar(50),
@Createby varchar(50),
@Createdatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3 varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
		INSERT	INTO Quotationstandc values (@termsid,@Noseries,@termstitle,@termsdescription,@status,@Createby,@Createdatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5) 

END


GO
/****** Object:  StoredProcedure [dbo].[insertapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[insertapplicationtype] 
		@ApplicationType varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
				    INSERT INTO ApplicationTypeTable values (@ApplicationType,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertbusinesstype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertbusinesstype] 
		@BusinessType varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
	         INSERT INTO BusinessTypeTable values (@BusinessType,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertcity]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertcity] 
		@City varchar(250),
@State int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
				insert into City_Master values (@City,@State,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertcompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[insertcompressortype] 
		@CompressorType varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
				    INSERT INTO CompressorTypeTable values (@CompressorType,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertcountry]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertcountry]
		@Country varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
		         INSERT INTO Country_Master values (@Country,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertdepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertdepartment]
		@Department varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
				    INSERT INTO DepartmentTable values (@Department,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertdesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[insertdesignation]
		@Designation varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
					    INSERT INTO DesignationTable values (@Designation,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertfollowuptype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertfollowuptype] 
		@FollowUpType varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
	         INSERT INTO FollowUpTable values (@FollowUpType,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertindustryname1]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertindustryname1]
	
		@IndustryName varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
	
AS
BEGIN
         INSERT INTO IndustryTable values (@IndustryName,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
END



GO
/****** Object:  StoredProcedure [dbo].[insertinquiryfiles]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertinquiryfiles]
@noseries int,
@filename varchar(max),
@filepath varchar(max),
@Createby varchar(50),
@CreateDateTime datetime
as
insert into Inquiry_Files values(@noseries,@filename,@filepath,@CreateDateTime,@Createby)


GO
/****** Object:  StoredProcedure [dbo].[insertitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertitemgroup] 
		@ItemGroup varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
				    INSERT INTO ItemGroupTable values (@ItemGroup,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertitemsubgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertitemsubgroup] 
	@SubGroupName varchar(250),
@ItemGroupId int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)

AS
BEGIN
		insert into ItemSubgroupTable values (@SubGroupName,@ItemGroupId,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertmachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[insertmachinetype] 
		@MachineType varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
				    INSERT INTO MachineTypeTable values (@MachineType,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertrole]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertrole]
		@Role varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
	         INSERT INTO RoleTable values (@Role,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertsource]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[insertsource]
		@Source varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
		         INSERT INTO SourceTable values (@Source,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertstate]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertstate] 
	@State varchar(250),
@Country int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
			insert into State_Master values (@State,@Country,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertstatus]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertstatus]
		@Status varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
			    INSERT INTO StatusTable values (@Status,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[inserttermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[inserttermsandconditions]
		@Title varchar(max),
		@Termsandconditions varchar(max),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)

AS
BEGIN
	   INSERT INTO TermsandConditions_Master values (@Title,@Termsandconditions,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertunitofmeasurement]
		@UnitofMeasurement varchar(50),
		@Createby varchar(50),
		@CreateDateTime datetime,
		@Extra1 varchar(50),
		@Extra2 varchar(50),
		@Extra3 varchar(50),
		@Extra4 varchar(50), 
		@Extra5 varchar(50)
AS
BEGIN
				    INSERT INTO UnitofMeasurementTable values (@UnitofMeasurement,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[itemgroupdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[itemgroupdisp]
	
AS
BEGIN
		select id,ItemGroup from ItemGroupTable order by ItemGroup

END


GO
/****** Object:  StoredProcedure [dbo].[logindata]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[logindata]

	@name varchar(50),
	@desig varchar(50),
	@email varchar(50),
	@password varchar(50)
AS
BEGIN
	insert into AdminTable values (@name,@desig,@email,@password)
END


GO
/****** Object:  StoredProcedure [dbo].[machinetypedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[machinetypedisp]
	
AS
BEGIN
	 select id,MachineType from MachineTypeTable order by MachineType
END


GO
/****** Object:  StoredProcedure [dbo].[ordertermsandconditionsdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ordertermsandconditionsdisp]
		@Noseries bigint

AS
BEGIN
	 select * from Ordertandc where Qno=@Noseries order by Termstitle

END


GO
/****** Object:  StoredProcedure [dbo].[quotationtermsandconditionsdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[quotationtermsandconditionsdisp]
	@Noseries bigint
AS
BEGIN
 
 select * from Quotationstandc where Noseries=@Noseries order by Termstitle

END


GO
/****** Object:  StoredProcedure [dbo].[roledisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[roledisp] 
	
AS
BEGIN
	 select id,Role from RoleTable order by Role
END


GO
/****** Object:  StoredProcedure [dbo].[showapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showapplicationtype] 
	@Id int
AS
BEGIN
	 select * from ApplicationTypeTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[showbusinesstype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showbusinesstype] 
	@id int
AS
BEGIN
	select * from BusinessTypeTable where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[showcompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[showcompressortype] 
	@Id int
AS
BEGIN
	 select * from CompressorTypeTable where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[showcountry]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showcountry]
		@id int

AS
BEGIN
		select * from Country_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showdepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showdepartment] 
	@id int
AS
BEGIN
	

    	select * from DepartmentTable where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showdesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showdesignation]
		@id int

AS
BEGIN
			    select * from DesignationTable where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showfollowuptable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showfollowuptable]
			@id int

AS
BEGIN
					    select * from FollowUpTable where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showindustryname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[showindustryname]
	@id int
AS
BEGIN

    select * from IndustryTable where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[showitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showitemgroup] 
	@id int
AS
BEGIN
	 select * from ItemGroupTable where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showmachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showmachinetype] 
	@id int
AS
BEGIN
	 select * from MachineTypeTable where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showrole]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showrole] 
	@id int
AS
BEGIN
	    select * from RoleTable where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showsource]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showsource]
	@id int
AS
BEGIN
	select * from SourceTable where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[showstatus]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showstatus]
	@id int
AS
BEGIN
		    select * from StatusTable where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showtermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showtermsandconditions]
			@id int

AS
BEGIN
			    select * from TermsandConditions_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showunitofmeasurement] 
		@id int

AS
BEGIN
				    select * from UnitofMeasurementTable where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[SiteErrorDelete]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SiteErrorDelete]
(
@ErrorIDs NVARCHAR(MAX),
@ModifiedBy varchar(100),
@IPAddress VARCHAR(50),
@Browser VARCHAR(50),
@WebURL varchar(max)
)
AS
BEGIN TRANSACTION
BEGIN TRY

DECLARE @Separator CHAR(1)
DECLARE	@ID INT
DECLARE	@SeparatorPosition	INT

SET @Separator = ','

WHILE PATINDEX('%' + @Separator + '%', @ErrorIDs) <> 0 
BEGIN
	
	SET	@SeparatorPosition = PATINDEX('%' + @Separator + '%', @ErrorIDs)
	SET	@ID = LEFT(@ErrorIDs, @SeparatorPosition - 1)

		DELETE FROM SiteError WHERE ErrorID=@ID	
	
	SET	@ErrorIDs = STUFF(@ErrorIDs, 1, @SeparatorPosition, '') 

END -- end of while Loop.

END TRY
BEGIN CATCH

	IF @@TRANCOUNT > 0
		ROLLBACK TRANSACTION
		
	BEGIN TRANSACTION siteerror
	
	Declare @ErrorCode VARCHAR(50),	@ExceptionMessage varchar(max),	@Source varchar(512),@ErrorDesc varchar(max)
	
	set @ErrorCode=(select CAST(ISNULL(ERROR_NUMBER(),'') AS VARCHAR))
	set @Source=(select ISNULL(ERROR_PROCEDURE(),''))
	set @ExceptionMessage=(select ISNULL(ERROR_MESSAGE(),''))
	set @ErrorDesc=(select 'Severity : ' + CAST(ISNULL(ERROR_SEVERITY(),'') AS VARCHAR(50)) + ' State : ' + CAST(ISNULL(ERROR_STATE(),'') AS VARCHAR(50)) + ' Line : ' + CAST(ISNULL(ERROR_LINE(),'') AS VARCHAR(50)))
	
	EXECUTE SiteErrorInsert
	@ErrorCode,@ExceptionMessage,'',@Source,@IPAddress,@Browser,@ErrorDesc,@WebURL,@ModifiedBy

	COMMIT TRANSACTION siteerror
		
END CATCH

IF @@TRANCOUNT > 0
COMMIT TRANSACTION





























GO
/****** Object:  StoredProcedure [dbo].[SiteErrorInsert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure  [dbo].[SiteErrorInsert]
(
	@ErrorCode VARCHAR(50),
	@ExceptionMessage VARCHAR(MAX),
	@ExceptionStackTrace VARCHAR(MAX),
	@Source varchar(max),
	@IPAddress VARCHAR(50),
	@Browser VARCHAR(50),
	@Description varchar(max),
	@WebURL varchar(max),
	@SalesPersonCode varchar(100)
)
AS
BEGIN TRANSACTION
BEGIN TRY

	INSERT INTO SiteError
	VALUES
	(
	@ErrorCode,
	@ExceptionMessage,
	@ExceptionStackTrace,
	@Source,
	@IPAddress,
	@Browser,
	@Description,
	@WebURL,
	@SalesPersonCode,
	GETDATE()
	)
	
END TRY
BEGIN CATCH

	IF @@TRANCOUNT > 0
		ROLLBACK TRANSACTION
		
	BEGIN TRANSACTION siteerror
	
	set @ErrorCode=(select CAST(ISNULL(ERROR_NUMBER(),'') AS VARCHAR(50)))
	set @Source=(select ISNULL(ERROR_PROCEDURE(),''))
	set @ExceptionMessage=(select ISNULL(ERROR_MESSAGE(),''))
	set @Description=(select 'Severity : ' + CAST(ISNULL(ERROR_SEVERITY(),'') AS VARCHAR(50)) + ' State : ' + CAST(ISNULL(ERROR_STATE(),'') AS VARCHAR(50)) + ' Line : ' + CAST(ISNULL(ERROR_LINE(),'') AS VARCHAR(50)))
	
	EXECUTE [dbo].[SiteErrorInsert]
	@ErrorCode,@ExceptionMessage,'',@Source,@IPAddress,@Browser,@Description,@WebURL,@SalesPersonCode
	
	COMMIT TRANSACTION siteerror
		
END CATCH

IF @@TRANCOUNT > 0
COMMIT TRANSACTION





























GO
/****** Object:  StoredProcedure [dbo].[SiteErrorSelectAll]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SiteErrorSelectAll]
(
@Search VARCHAR(MAX),
@IPAddress VARCHAR(50),
@Browser VARCHAR(50),
@WebURL varchar(1024),
@ModifiedBy varchar(100)
)
AS
BEGIN TRANSACTION
BEGIN TRY

	SELECT 
		ErrorID,			ErrorCode,					ExceptionMessage,				ExceptionStackTrace,
		[Source],			IPAddress,					Browser,						[Description],
		WebURL,				SM.SName AS 'ModifyBY',
		CONVERT(VARCHAR, ce.ModifiedON, 113) AS 'ModifyON'
	FROM 
		SiteError ce LEFT JOIN SalesPerson_Master SM ON ce.ModifiedBY=SM.Ucode
	Where 
	(
		 LOWER(ErrorCode) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER(ExceptionMessage) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER(ExceptionStackTrace) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER([Source]) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER(IPAddress) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER(Browser) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER([Description]) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER(WebURL) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER(WebURL) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER(WebURL) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER(CONVERT(VARCHAR, ce.ModifiedON, 113)) LIKE '%'+LOWER(@Search)+'%'  OR
		 LOWER(SM.SName) LIKE '%'+LOWER(@Search)+'%'  
	)
	ORDER BY ce.ModifiedON DESC
	
END TRY
BEGIN CATCH

	IF @@TRANCOUNT > 0
		ROLLBACK TRANSACTION
		
	BEGIN TRANSACTION siteerror
	
	Declare @ErrorCode VARCHAR(50),	@ExceptionMessage varchar(max),	@Source varchar(512),@ErrorDesc varchar(max)
	
	set @ErrorCode=(select CAST(ISNULL(ERROR_NUMBER(),'') AS VARCHAR))
	set @Source=(select ISNULL(ERROR_PROCEDURE(),''))
	set @ExceptionMessage=(select ISNULL(ERROR_MESSAGE(),''))
	set @ErrorDesc=(select 'Severity : ' + CAST(ISNULL(ERROR_SEVERITY(),'') AS VARCHAR(50)) + ' State : ' + CAST(ISNULL(ERROR_STATE(),'') AS VARCHAR(50)) + ' Line : ' + CAST(ISNULL(ERROR_LINE(),'') AS VARCHAR(50)))
	
	EXECUTE SiteErrorInsert
	@ErrorCode,@ExceptionMessage,'',@Source,@IPAddress,@Browser,@ErrorDesc,@WebURL,@ModifiedBy
	
	COMMIT TRANSACTION siteerror
		
END CATCH

IF @@TRANCOUNT > 0
COMMIT TRANSACTION





























GO
/****** Object:  StoredProcedure [dbo].[sourcedisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sourcedisp] 
	
AS
BEGIN
	select id,Source from SourceTable order by Source
END


GO
/****** Object:  StoredProcedure [dbo].[sp_employeefilter]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_employeefilter]
	@id int
AS
BEGIN
select * from V_Customer_Record where No=@id
END

GO
/****** Object:  StoredProcedure [dbo].[sp_inquiryfilter]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_inquiryfilter]
	@custno int,
	@startdate varchar(50),
	@enddate varchar(50)
AS
BEGIN
	SELECT    Inqiury_Master.InqiuryNo,Inqiury_Master.Noseries, Inqiury_Master.Inquirydate, StatusTable.Status, SourceTable.Source,tbl_Customer_Master.Name, Inqiury_Master.ContactEmail, Inqiury_Master.ContactMno1, tbl_Customer_Master.No FROM  Inqiury_Master INNER JOIN StatusTable ON Inqiury_Master.InqiuryStatus = StatusTable.id INNER JOIN SourceTable ON Inqiury_Master.InquirySource = SourceTable.id INNER JOIN tbl_Customer_Master ON Inqiury_Master.Custname = tbl_Customer_Master.No WHERE (tbl_Customer_Master.No = @custno)  AND (CONVERT(datetime, CONVERT(varchar, Inqiury_Master.Inquirydate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @startdate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @enddate, 103), 103))
END

GO
/****** Object:  StoredProcedure [dbo].[statusdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[statusdisp]
	
AS
BEGIN
	select id,Status from StatusTable order by Status
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Contact_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Company_Contact_Master_Insert]
	@Companyno bigint,
@ContactName varchar(250),
@ContactEmail varchar(350),
@ContactPhone varchar(50),
@ContactMobileno1 varchar(50),
@ContactMobileno2 varchar(50),
@Dept int,
@Design int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	insert into tbl_Company_Contact_Master values (@Companyno,@ContactName,@ContactEmail,@ContactPhone,@ContactMobileno1,@ContactMobileno2,@Dept,@Design,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Contact_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Company_Contact_Master_update]
	@ContactName varchar(250),
@ContactEmail varchar(350),
@ContactPhone varchar(50),
@ContactMobileno1 varchar(50),
@ContactMobileno2 varchar(50),
@Dept int,
@Design int,
@id int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT ContactName,ContactEmail FROM tbl_Company_Contact_Master WHERE ContactName = @ContactName and ContactEmail=@ContactEmail and id!=@id)
BEGIN
return -1
End
Else
BEGIN
	update tbl_Company_Contact_Master set ContactName=@ContactName,ContactEmail=@ContactEmail,ContactPhone=@ContactPhone
	,ContactMobileno1=@ContactMobileno1,ContactMobileno2=@ContactMobileno2,Dept=@Dept,Design=@Design,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5 where Id=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Company_Master_Insert]
@Companyno bigint,
@Comname varchar(250),
@Comarea varchar(250),
@Comaddress varchar(max),
@Comcity varchar(250),
@Comstate varchar(50),
@ComDistrict varchar(50),
@ComCountry varchar(50),
@ComPincode varchar(50),
@ComPhoneNo varchar(50),
@ComEmail varchar(350),
@BussinessType int,
@Industrygroup int,
@URL varchar(250),
@Status varchar(50),
@GSTno varchar(50),
@Bankname varchar(250),
@Accountno varchar(50),
@IFSCcode varchar(50),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varbinary(max),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT Name,Email FROM tbl_Company_Master WHERE Name = @Comname and Email=@ComEmail)
BEGIN
return -1
End
Else
BEGIN
	insert into tbl_Company_Master values (@Companyno,@Comname,@Comarea,@Comaddress,@Comcity,@Comstate,@ComDistrict,@comCountry,@ComPincode
	,@ComPhoneNo,@ComEmail,@BussinessType,@Industrygroup,@URL,@Status,@GSTno,@Bankname,@Accountno,@IFSCcode,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Company_Master_update]
	@Companyno bigint,
@Comname varchar(250),
@Comarea varchar(250),
@Comaddress varchar(max),
@Comcity varchar(250),
@Comstate varchar(50),
@ComDistrict varchar(50),
@ComCountry varchar(50),
@ComPincode varchar(50),
@ComPhoneNo varchar(50),
@ComEmail varchar(350),
@BussinessType int,
@Industrygroup int,
@URL varchar(250),
@Status varchar(50),
@GSTno varchar(50),
@Bankname varchar(250),
@Accountno varchar(50),
@IFSCcode varchar(50),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	update tbl_Company_Master set Name=@Comname,Area=@Comarea,Address=@Comaddress,City=@Comcity,
	State=@Comstate,District=@ComDistrict,Country=@ComCountry,Pincode=@ComPincode,PhoneNo=@ComPhoneNo,Email=@ComEmail,
	BusinessType=@BussinessType,Industrygroup=@Industrygroup,URL=@URL,Status=@Status,GSTno=@GSTno,
	Bankname=@Bankname,Accountno=@Accountno,IFSCcode=@IFSCcode where Companyno=@Companyno
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_NoSeries_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Company_NoSeries_Insert]
	
	@CompanyNo bigint,

@Extra1 varchar(50),
@Extra2 varchar(50)
AS
BEGIN
		insert into tbl_Company_NoSeries values (@CompanyNo,@Extra1,@Extra2)
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Contact_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Customer_Contact_Master_Insert]
	@Custno bigint,
@ContactName varchar(250),
@ContactEmail varchar(350),
@ContactPhone varchar(50),
@ContactMobileno1 varchar(50),
@ContactMobileno2 varchar(50),
@Dept int,
@Design int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
		insert into tbl_Customer_Contact_Master values (@Custno,@ContactName,@ContactEmail,@ContactPhone,@ContactMobileno1,@ContactMobileno2,@Dept,@Design,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Contact_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Customer_Contact_Master_update]
	@ContactName varchar(250),
@ContactEmail varchar(350),
@ContactPhone varchar(50),
@ContactMobileno1 varchar(50),
@ContactMobileno2 varchar(50),
@Dept int,
@Design int,
@id int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)

AS
BEGIN
		update tbl_Customer_Contact_Master set ContactName=@ContactName,ContactEmail=@ContactEmail,ContactPhone=@ContactPhone
	,ContactMobileno1=@ContactMobileno1,ContactMobileno2=@ContactMobileno2,Dept=@Dept,Design=@Design, 
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5 where Id=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Customer_Master_Insert]
	@No bigint,
@GroupNo bigint,
@Comname varchar(250),
@Comarea varchar(250),
@Comaddress varchar(max),
@Comcity varchar(250),
@Comstate varchar(50),
@ComDistrict varchar(50),
@Country varchar(50),
@ComPincode varchar(50),
@ComPhoneNo varchar(50),
@ComEmail varchar(350),
@BussinessType int,
@Industrygroup int,
@URL varchar(250),
@Status varchar(50),
@GSTno varchar(50),
@Bankname varchar(250),
@Accountno varchar(50),
@IFSCcode varchar(50),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT Name,Email FROM tbl_Customer_Master WHERE Name = @Comname and Email=@ComEmail)
BEGIN
return -1
End
Else
BEGIN
		insert into tbl_Customer_Master values (@No,@GroupNo,@Comname,@Comarea,@Comaddress,@Comcity,@Comstate,@ComDistrict,@Country,@ComPincode
	,@ComPhoneNo,@ComEmail,@BussinessType,@Industrygroup,@URL,@Status,@GSTno,@Bankname,@Accountno,@IFSCcode,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Customer_Master_update] 
	@No bigint,
@GroupNo bigint,
@Comname varchar(250),
@Comarea varchar(250),
@Comaddress varchar(max),
@Comcity varchar(250),
@Comstate varchar(50),
@ComDistrict varchar(50),
@Country varchar(50),
@ComPincode varchar(50),
@ComPhoneNo varchar(50),
@ComEmail varchar(350),
@BussinessType int,
@Industrygroup int,
@URL varchar(250),
@Status varchar(50),
@GSTno varchar(50),
@Bankname varchar(250),
@Accountno varchar(50),
@IFSCcode varchar(50),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT Name,Email FROM tbl_Customer_Master WHERE Name = @Comname and Email=@ComEmail and No!=@No)
BEGIN
return -1
End
Else
BEGIN
	update tbl_Customer_Master set GroupNo=@GroupNo,Name=@Comname,Area=@Comarea,Address=@Comaddress,City=@Comcity,
	State=@Comstate,District=@ComDistrict,Country=@Country,Pincode=@ComPincode,PhoneNo=@ComPhoneNo,Email=@ComEmail,
	BussinessType=@BussinessType,Industrygroup=@Industrygroup,URL=@URL,Status=@Status,GSTno=@GSTno,
	Bankname=@Bankname,Accountno=@Accountno,IFSCcode=@IFSCcode where No=@No
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Noseries_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Customer_Noseries_Insert]
	@No bigint,

@Extra1 varchar(50),
@Extra2 varchar(50)
AS
BEGIN
		insert into tbl_Customer_Noseries values (@No,@Extra1,@Extra2)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_Document_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Employee_Document_Master_Insert]
	@no bigint,
@DocuName varchar(350),
@Filename varchar(350),
@DocumentPath varchar(350),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
		insert into tbl_Employee_Document_Master values (@no,@DocuName,@Filename,@DocumentPath,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Employee_master_Insert] 
	@no bigint,
@Ename varchar(250),
@Efname varchar(250),
@Esurname varchar(250),
@Egender varchar(50),
@Epaddress varchar(max),
@Eperaddress varchar(max),
@ECity varchar(50),
@EState varchar(50),
@EDistrict varchar(50),
@ECountry varchar(50),
@EPincode varchar(50),
@EPhoneNo varchar(50),
@Emobilenop varchar(50),
@Emobileoffice varchar(50),
@Emobilewhatsup varchar(50),
@Erole varchar(50),
@Epfno varchar(50),
@Edoa varchar(50),
@Edoj varchar(50),
@Edol varchar(50),
@Edept int,
@Edesign int,
@Eemailid varchar(350),
@Epwd varchar(50),
@Eurgentcontactname varchar(250),
@Eurgentcontactno varchar(250),
@Eurgentcontactrelation varchar(250),
@Estatus varchar(250),
@Ebankname varchar(250),
@Eaccno varchar(50),
@Eifsccode varchar(50),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT Ename,Eemailid FROM tbl_Employee_master WHERE Ename = @Ename and Eemailid=@Eemailid)
BEGIN
return -1
End
Else
BEGIN
	insert into tbl_Employee_master values (@no,@Ename,@Efname,@Esurname,@Egender,@Epaddress,@Epaddress,@ECity,@EState,@EDistrict,@ECountry,@EPincode,@EPhoneNo,@Emobilenop
	,@Emobileoffice,@Emobilewhatsup,@Erole,@Epfno,@Edoa,@Edoj,@Edol,@Edept,@Edesign,@Eemailid,@Epwd,@Eurgentcontactname,
	@Eurgentcontactno,@Eurgentcontactrelation,@Estatus,@Ebankname,@Eaccno,@Eifsccode,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_master_Update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Employee_master_Update]
	@no bigint,

@Ename varchar(250),
@Efname varchar(250),
@Esurname varchar(250),
@Egender varchar(50),
@Epaddress varchar(max),
@Eperaddress varchar(max),
@ECity varchar(50),
@EState varchar(50),
@EDistrict varchar(50),
@ECountry varchar(50),
@EPincode varchar(50),
@EPhoneNo varchar(50),
@Emobilenop varchar(50),
@Emobileoffice varchar(50),
@Emobilewhatsup varchar(50),
@Erole varchar(50),
@Epfno varchar(50),
@Edoa varchar(50),
@Edoj varchar(50),
@Edol varchar(50),
@Edept int,
@Edesign int,
@Eemailid varchar(350),
@Epwd varchar(50),
@Eurgentcontactname varchar(250),
@Eurgentcontactno varchar(250),
@Eurgentcontactrelation varchar(250),
@Estatus varchar(250),
@Ebankname varchar(250),
@Eaccno varchar(50),
@Eifsccode varchar(50),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)

AS
BEGIN
	update tbl_Employee_master set Ename=@Ename,Efname=@Efname,Esurname=@Esurname,Egender=@Egender,Epaddress=@Epaddress,Eperaddress=@Eperaddress,
	ECity=@ECity,EState=@EState,EDistrict=@EDistrict,ECountry=@ECountry,EPincode=@EPincode,EPhoneNo=@EPhoneNo,
	Emobilenop=@Emobilenop,Emobileoffice=@Emobileoffice,Emobilewhatsup=@Emobilewhatsup,Erole=@Erole,Epfno=@Epfno,Edoa=@Edoa,Edoj=@Edoj,
	Edol=@Edol,Edept=@Edept,Edesign=@Edesign,Eemailid=@Eemailid,Epwd=@Epwd,Eurgentcontactname=@Eurgentcontactname,Eurgentcontactno=@Eurgentcontactno,
	Eurgentcontactrelation=@Eurgentcontactrelation,Estatus=@Estatus,Ebankname=@Ebankname,Eaccno=@Eaccno,Eifsccode=@Eifsccode, 
	CreateBy=@CreateBy,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5 where no=@no
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_NoSeries_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Employee_NoSeries_Insert] 
	@No bigint,

@Extra1 varchar(50),
@Extra2 varchar(50)

AS
BEGIN
	insert into tbl_Employee_NoSeries values (@No,@Extra1,@Extra2)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Details_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[tbl_Inqiury_Details_Insert]
@Noseries bigint,
@Item int,
@UOM int,
@Qty decimal,
@Rate decimal,
@Amount decimal,
@Inqiuryapplicationtype int,
@Inqiurymanufacturename varchar(max),
@Inqiuryequipmenttype varchar(max),
@Inqiuryserialno varchar(max),
@Inqiurymanufactureddate varchar(max),
@Inqiurypowerunitconsuption varchar(max),
@Inqiurycoolingcapacity varchar(max),
@Inqiurymachinetype int,
@Inqiurycompressortype int,
@Inqiurycompressorinonecircuit varchar(max),
@Inqiurynumberofcircuits varchar(max),
@Inqiuryhotgasdischarge varchar(max),
@Inqiurytypeofrefrigerant varchar(max),
@Inqiuryannualpowerusage varchar(max),
@Inqiuryavergedailyhours varchar(max),
@Inqiurydaysrunperyear varchar(max),
@InqiuryelectricityrateperKWH varchar(max),
@Inqiurypercentageofoperationperhour varchar(max),
@Inqiuryestimatedistance varchar(max),
@CreateBy varchar(max),
@CreateDatetime datetime,
@Extra1 varchar(max),
@Extra2 varchar(max),
@Extra3 varchar(max),
@Extra4 varchar(max),
@Extra5 varchar(max)
as
begin
insert into Inqiury_Details values(@Noseries,@Item,@UOM,@Qty,@Rate,@Amount,@Inqiuryapplicationtype,@Inqiurymanufacturename,
@Inqiuryequipmenttype,@Inqiuryserialno,@Inqiurymanufactureddate,@Inqiurypowerunitconsuption,@Inqiurycoolingcapacity,@Inqiurymachinetype,
@Inqiurycompressortype,@Inqiurycompressorinonecircuit,@Inqiurynumberofcircuits,@Inqiuryhotgasdischarge,@Inqiurytypeofrefrigerant,
@Inqiuryannualpowerusage,@Inqiuryavergedailyhours,@Inqiurydaysrunperyear,@InqiuryelectricityrateperKWH,@Inqiurypercentageofoperationperhour,
@Inqiuryestimatedistance,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
end


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Details_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Inqiury_Details_update]
@id int,
@Item int,

@UOM int,
@Qty decimal(18,2),
@Rate decimal(18,2),
@Amount decimal(18,2),
@Inqiuryapplicationtype varchar(150),
@Inqiurymanufacturename varchar (150),
@Inqiuryequipmenttype varchar (150),
@Inqiurymanufactureddate date,
@Inqiuryserialno varchar (150),
@Inqiurypowerunitconsuption int,
@Inqiurycoolingcapacity int,
@Inqiurymachinetype varchar (150),
@Inqiurycompressortype varchar (150),
@Inqiurycompressorinonecircuit int,
@Inqiurynumberofcircuits int,
@Inqiuryhotgasdischarge int,
@Inqiurytypeofrefrigerant varchar (150),
@Inqiuryannualpowerusage int,
@Inqiuryavergedailyhours int,
@Inqiurydaysrunperyear int,
@InqiuryelectricityrateperKWH int,
@Inqiurypercentageofoperationperhour int,
@Inqiuryestimatedistance int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	update Inqiury_Details set Item=@Item,UOM=@UOM,Qty=@Qty,Rate=@Rate,Amount=@Amount,Inqiuryapplicationtype=@Inqiuryapplicationtype,Inqiurymanufacturename=@Inqiurymanufacturename,
	Inqiuryequipmenttype=@Inqiuryequipmenttype,Inqiurymanufactureddate=@Inqiurymanufactureddate,Inqiuryserialno=@Inqiuryserialno,
	Inqiurypowerunitconsuption=@Inqiurypowerunitconsuption,Inqiurycoolingcapacity=@Inqiurycoolingcapacity,Inqiurymachinetype=@Inqiurymachinetype,
	Inqiurycompressortype=@Inqiurycompressortype,Inqiurycompressorinonecircuit=@Inqiurycompressorinonecircuit,Inqiurynumberofcircuits=@Inqiurynumberofcircuits,
	Inqiuryhotgasdischarge=@Inqiuryhotgasdischarge,Inqiurytypeofrefrigerant=@Inqiurytypeofrefrigerant,Inqiuryannualpowerusage=@Inqiuryannualpowerusage,
	Inqiuryavergedailyhours=@Inqiuryavergedailyhours,Inqiurydaysrunperyear=@Inqiurydaysrunperyear,InqiuryelectricityrateperKWH=@InqiuryelectricityrateperKWH,
	Inqiurypercentageofoperationperhour=@Inqiurypercentageofoperationperhour,Inqiuryestimatedistance=@Inqiuryestimatedistance,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5 where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Followup_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Inqiury_Followup_Insert] 
	@Noseries bigint,
@NextFolldate varchar(50),
@Follotype int,
@Assignto int,
@FolloStatus int,
@Remarks varchar(450),
@Comdate varchar(50),
@Comremarks varchar(450),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
		insert into tbl_Inqiury_Followup values (@Noseries,@NextFolldate,@Follotype,@Assignto,@FolloStatus,@Remarks,@Comdate,@Comremarks,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Followup_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Inqiury_Followup_update] 
	@id int,
@Noseries bigint,
@NextFolldate varchar(50),
@Follotype int,
@Assignto int,
@FolloStatus int,
@Remarks varchar(450),
@Comdate varchar(50),
@Comremarks varchar(450),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	update tbl_Inqiury_Followup set NextFolldate=@NextFolldate,Follotype=@Follotype
	,FolloStatus=@FolloStatus,Remarks=@Remarks,Comdate=@Comdate,Comremarks=@Comremarks,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5 where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Inqiury_Master_Insert]
	@InqiuryNo bigint,
@Noseries bigint,
@Inquirydate varchar(50),

@Custname int,
@Custcontact int,
@Custcontactno varchar(50),
@Dept int,
@Design int,
@ContactEmail varchar(350),
@ContactMno1 varchar(50),
@ContactMno2 varchar(50),
@InqiuryStatus int,
@InquirySource int,
@Remarks varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	insert into Inqiury_Master values (@InqiuryNo,@Noseries,@Inquirydate,@Custname,@Custcontact,@Custcontactno,@Dept,@Design,
	@ContactEmail,@ContactMno1,@ContactMno2,@InqiuryStatus,@InquirySource,@Remarks,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Master_Update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Inqiury_Master_Update]
	@InqiuryNo bigint,
@Noseries bigint,
@Inquirydate varchar(50),

@Custname int,
@Custcontact int,
@Custcontactno varchar(50),
@Dept int,
@Design int,
@ContactEmail varchar(350),
@ContactMno1 varchar(50),
@ContactMno2 varchar(50),
@InqiuryStatus int,
@InquirySource int,
@Remarks varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	update Inqiury_Master set Noseries=@Noseries,Inquirydate=@Inquirydate,Custname=@Custname,
	Custcontact=@Custcontact,Custcontactno=@Custcontactno,Dept=@Dept,Design=@Design,
	ContactEmail=@ContactEmail,ContactMno1=@ContactMno1,ContactMno2=@ContactMno2,InqiuryStatus=@InqiuryStatus,InquirySource=@InquirySource,Remarks=@Remarks,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5
	where InqiuryNo=@InqiuryNo
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inquiry_No_Series_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Inquiry_No_Series_Insert]
	@No bigint,

@Extra1 varchar(50),
@Extra2 varchar(50)
AS
BEGIN
		insert into Inquiry_No_Series values (@No,@Extra1,@Extra2)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Item_Master_Insert]
@no bigint,
@itemgroup int,
@itemsubgroup int,
@Modelno varchar(250),
@Itemname varchar(350),
@ItemFinalname varchar(450),
@Itemalis varchar(450),
@Itemcategoryno varchar(250),
@ItemUOM int,
@Itemrate decimal(18,2),
@Itemgst int,
@ItemHsn varchar(150),
@ItemDesc varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	insert into Itemaster values(@no,@itemgroup,@itemsubgroup,@Modelno,@Itemname,@ItemFinalname,@Itemalis,@Itemcategoryno,@ItemUOM,@Itemrate,
	@Itemgst,@ItemHsn,@ItemDesc,
	@CreateBy,@CreateDatetime,@Extra1,
	@Extra2,@Extra3,@Extra4,@Extra5)
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Item_Master_update] 
@no bigint,
@itemgroup int,
@itemsubgroup int,
@Modelno varchar(250),
@Itemname varchar(350),
@ItemFinalname varchar(450),
@Itemalis varchar(450),
@Itemcategoryno varchar(250),
@ItemUOM int,
@Itemrate decimal(18,2),
@Itemgst int,
@ItemHsn varchar(150),
@ItemDesc varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	update Itemaster set itemgroup=@itemgroup,itemsubgroup=@itemsubgroup,Modelno=@Modelno,Itemname=@Itemname,
	ItemFinalname=@ItemFinalname,Itemalis=@Itemalis,Itemcategoryno=@Itemcategoryno,ItemUOM=@ItemUOM,Itemrate=@Itemrate,
	Itemgst=@Itemgst,ItemHsn=@ItemHsn,ItemDesc=@ItemDesc,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,@Extra1=@Extra1,
	Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5
	where no=@no
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_NoSeries_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Item_NoSeries_Insert]
	@No bigint,

@Extra1 varchar(50),
@Extra2 varchar(50)
AS
BEGIN
	insert into tbl_Item_NoSeries values (@No,@Extra1,@Extra2)
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_ItemDocument_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_ItemDocument_Master_Insert]
	@no bigint,
	@Docuname varchar(350),
	@Filename varchar(350),
	@Documentpath varchar(350),
	@Createby varchar(50),
	@Createdatetime datetime,
	@Extra1 varchar(50),
	@Extra2 varchar(50),
	@Extra3	varchar(50),
	@Extra4 varchar(50),
	@Extra5 varchar(50)

AS
BEGIN
		insert into Itemdocumentmaster values (@no,@Docuname,@Filename,@Documentpath,@Createby,@Createdatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_ItemImage_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_ItemImage_Master_Insert] 
	@no bigint,
	@Docuname varchar(350),
	@Filename varchar(350),
	@Documentpath varchar(350),
	@Createby varchar(50),
	@Createdatetime datetime,
	@Extra1 varchar(50),
	@Extra2 varchar(50),
	@Extra3	varchar(50),
	@Extra4 varchar(50),
	@Extra5 varchar(50)
AS
BEGIN
		insert into Itemimagemaster values (@no,@Docuname,@Filename,@Documentpath,@Createby,@Createdatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Details_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Order_Details_Insert] 
	@Noseries int,
@Item int,

@UOM int,
@Qty decimal(18,2),
@Rate decimal(18,2),
@Amount decimal(18,2),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
			insert into Order_Details values (@Noseries,@Item,@UOM,@Qty,@Rate,@Amount,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Details_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Order_Details_update]
	@id int,
@Item int,

@UOM int,
@Qty decimal(18,2),
@Rate decimal(18,2),
@Amount decimal(18,2),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	update Order_Details set Item=@Item,UOM=@UOM,Qty=@Qty,Rate=@Rate,Amount=@Amount,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5 where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Followup_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Order_Followup_Insert]
	@Noseries bigint,
@NextFolldate varchar(50),
@Follotype int,
@Assignto int,
@FolloStatus int,
@Remarks varchar(450),
@Comdate varchar(50),
@Comremarks varchar(450),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
			insert into tbl_Order_Followup values (@Noseries,@NextFolldate,@Follotype,@Assignto,@FolloStatus,@Remarks,@Comdate,@Comremarks,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Followup_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Order_Followup_update]
	@id int,
@Noseries bigint,
@NextFolldate varchar(50),
@Follotype int,
@Assignto int,
@FolloStatus int,
@Remarks varchar(450),
@Comdate varchar(50),
@Comremarks varchar(450),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	update tbl_Order_Followup set NextFolldate=@NextFolldate,Follotype=@Follotype
	,FolloStatus=@FolloStatus,Remarks=@Remarks,Comdate=@Comdate,Comremarks=@Comremarks,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5 where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Order_Master_Insert]
	@InqiuryNo bigint,
@Noseries bigint,
@Inquirydate varchar(50),

@Custname int,
@Custcontact int,
@Custcontactno varchar(50),
@Dept int,
@Design int,
@ContactEmail varchar(350),
@ContactMno1 varchar(50),
@ContactMno2 varchar(50),
@InqiuryStatus int,
@InquirySource int,
@Remarks varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	insert into Order_Master values (@InqiuryNo,@Noseries,@Inquirydate,@Custname,@Custcontact,@Custcontactno,@Dept,@Design,
	@ContactEmail,@ContactMno1,@ContactMno2,@InqiuryStatus,@InquirySource,@Remarks,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
	END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Order_Master_update]
	@Noseries bigint,

@Custname int,
@Custcontact int,
@Custcontactno varchar(50),
@Dept int,
@Design int,
@ContactEmail varchar(350),
@ContactMno1 varchar(50),
@ContactMno2 varchar(50),
@InqiuryStatus int,
@InquirySource int,
@Remarks varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	update  Order_Master set  Custname=@Custname,Custcontact=@Custcontact,Custcontactno=@Custcontactno,Dept=@Dept,Design=@Design,
	ContactEmail=@ContactEmail,ContactMno1=@ContactMno1,ContactMno2=@ContactMno2,InqiuryStatus=@InqiuryStatus,InqiurySource=@InquirySource,Remarks=@Remarks,CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5
	where Qno=@Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_No_Series_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Order_No_Series_Insert]
	@No bigint,

@Extra1 varchar(50),
@Extra2 varchar(50)
AS
BEGIN
				insert into Order_No_Series values (@No,@Extra1,@Extra2)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Details_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Quotation_Details_Insert]
		@Noseries int,
@Item int,

@UOM int,
@Qty decimal(18,2),
@Rate decimal(18,2),
@Amount decimal(18,2),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)AS
BEGIN
		insert into Quotation_Details values (@Noseries,@Item,@UOM,@Qty,@Rate,@Amount,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Details_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Quotation_Details_update]
	@id int,
@Item int,

@UOM int,
@Qty decimal(18,2),
@Rate decimal(18,2),
@Amount decimal(18,2),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
update Quotation_Details set Item=@Item,UOM=@UOM,Qty=@Qty,Rate=@Rate,Amount=@Amount,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5 where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Followup_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Quotation_Followup_Insert]
@Noseries bigint,
@NextFolldate varchar(50),
@Follotype int,
@Assignto int,
@FolloStatus int,
@Remarks varchar(450),
@Comdate varchar(50),
@Comremarks varchar(450),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
		insert into tbl_Quotation_Followup values (@Noseries,@NextFolldate,@Follotype,@Assignto,@FolloStatus,@Remarks,@Comdate,@Comremarks,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Followup_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Quotation_Followup_update] 
	@id int,
@Noseries bigint,
@NextFolldate varchar(50),
@Follotype int,
@Assignto int,
@FolloStatus int,
@Remarks varchar(450),
@Comdate varchar(50),
@Comremarks varchar(450),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
update tbl_Quotation_Followup set NextFolldate=@NextFolldate,Follotype=@Follotype
	,FolloStatus=@FolloStatus,Remarks=@Remarks,Comdate=@Comdate,Comremarks=@Comremarks,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5 where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Master_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Quotation_Master_Insert]
@InqiuryNo bigint,
@Noseries bigint,
@Inquirydate varchar(50),

@Custname int,
@Custcontact int,
@Custcontactno varchar(50),
@Dept int,
@Design int,
@ContactEmail varchar(350),
@ContactMno1 varchar(50),
@ContactMno2 varchar(50),
@InqiuryStatus int,
@InquirySource int,
@Remarks varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
	insert into Quotation_Master values (@InqiuryNo,@Noseries,@Inquirydate,@Custname,@Custcontact,@Custcontactno,@Dept,@Design,
	@ContactEmail,@ContactMno1,@ContactMno2,@InqiuryStatus,@InquirySource,@Remarks,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Master_update]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Quotation_Master_update]
	
@Noseries bigint,

@Custname int,
@Custcontact int,
@Custcontactno varchar(50),
@Dept int,
@Design int,
@ContactEmail varchar(350),
@ContactMno1 varchar(50),
@ContactMno2 varchar(50),
@InqiuryStatus int,
@InquirySource int,
@Remarks varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
		update  Quotation_Master set  Custname=@Custname,Custcontact=@Custcontact,Custcontactno=@Custcontactno,Dept=@Dept,Design=@Design,
	ContactEmail=@ContactEmail,ContactMno1=@ContactMno1,ContactMno2=@ContactMno2,InqiuryStatus=@InqiuryStatus,InqiurySource=@InquirySource,Remarks=@Remarks,CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5
	where NoSeries=@Noseries
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_No_Series_Insert]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Quotation_No_Series_Insert] 
	@No bigint,

@Extra1 varchar(50),
@Extra2 varchar(50)
AS
BEGIN
			insert into Quotation_No_Series values (@No,@Extra1,@Extra2)

END


GO
/****** Object:  StoredProcedure [dbo].[termsandconditionsdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[termsandconditionsdisp]
	
AS
BEGIN
			select * from TermsandConditions_Master order by Title

END


GO
/****** Object:  StoredProcedure [dbo].[unitofmeasurementdisp]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[unitofmeasurementdisp]
	 
	AS
BEGIN
		select id,UnitofMeasurement from UnitofMeasurementTable order by UnitofMeasurement

END


GO
/****** Object:  StoredProcedure [dbo].[updateapplicationtype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[updateapplicationtype]
	@id int,
	@ApplicationType varchar(50)
AS
	IF EXISTS(SELECT ApplicationType FROM ApplicationTypeTable WHERE ApplicationType = @ApplicationType and id!=@id)
BEGIN
return -1
End
Else
BEGIN
			 UPDATE	ApplicationTypeTable set ApplicationType=@ApplicationType WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updatebusinesstype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatebusinesstype]
	@id int ,
	@Businesstypename varchar(50)
AS
BEGIN
		update BusinessTypeTable set BusinessTypeName=@Businesstypename where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[updatecity]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatecity] 
	@City varchar(250),
	@State int,
	@id varchar(250)
AS
	IF EXISTS(SELECT City FROM City_Master WHERE City = @City and Statename=@State and id!=@id)
BEGIN
return -1
End
Else
BEGIN
				update City_Master set City=@City,Statename=@State where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[updateCompressortype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[updateCompressortype]
	@id int,
	@CompressorType varchar(50)
AS
	IF EXISTS(SELECT CompressorType FROM CompressorTypeTable WHERE CompressorType = @CompressorType and id!=@id)
BEGIN
return -1
End
Else
BEGIN
			 UPDATE	CompressorTypeTable set CompressorType=@CompressorType WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updatecountry]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatecountry]
		@id int ,
	@Country varchar(50)

AS
IF EXISTS(SELECT Country FROM Country_Master WHERE Country = @Country and id!=@id)
BEGIN
return -1
End
Else
BEGIN
			update Country_Master set Country=@Country where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[updatedepartment]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updatedepartment] 
	@id int,
	@Department varchar(50)
AS
	IF EXISTS(SELECT Department FROM DepartmentTable WHERE Department = @Department and  id!=@id)
BEGIN
return -1
End
Else
BEGIN
		 UPDATE DepartmentTable	set Department=@Department WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updatedesignation]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatedesignation]
	@id int,
	@Designation varchar(50)
AS
IF EXISTS(SELECT Designation FROM DesignationTable WHERE Designation = @Designation and  id!=@id)
BEGIN
return -1
End
Else
BEGIN
			 UPDATE	DesignationTable set Designation=@Designation WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updatefollowuptype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatefollowuptype]
	@id int,
	@FollowUpType varchar(50)
AS
	IF EXISTS(SELECT FollowUpType FROM FollowUpTable WHERE FollowUpType = @FollowUpType and id!=@id)
BEGIN
return -1
End
Else
BEGIN
				 UPDATE	FollowUpTable set FollowUpType=@FollowUpType WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updateindustryname]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateindustryname] 
	@id int ,
	@IndustryName varchar(50)
AS
BEGIN
		update IndustryTable set IndustryName=@IndustryName where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[updateinquiryfile]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[updateinquiryfile]
@id int,
@noseries int,
@filename varchar(max),
@filepath varchar(max),
@Createby varchar(50),
@CreateDateTime datetime
as
update Inquiry_Files set FileName=@filename,FilePath=@filepath where Id=@id


GO
/****** Object:  StoredProcedure [dbo].[updateitemgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateitemgroup]
	@id int,
	@ItemGroup varchar(50)
AS
	IF EXISTS(SELECT ItemGroup FROM ItemGroupTable WHERE ItemGroup = @ItemGroup and id!=@id)
BEGIN
return -1
End
Else
BEGIN
			 UPDATE	ItemGroupTable set ItemGroup=@ItemGroup WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updateitemsubgroup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateitemsubgroup]
	@SubGroupName varchar(250),
	@ItemGroupid int,
	@id varchar(250)
AS
IF EXISTS(SELECT SubgroupName FROM ItemSubgroupTable WHERE SubgroupName = @SubGroupName and itemgroupid=@ItemGroupid and id!=@id)
BEGIN
return -1
End
Else
BEGIN
		update ItemSubgroupTable set SubgroupName=@SubGroupName,itemgroupid=@ItemGroupid where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[updatemachinetype]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatemachinetype]
	@id int,
	@MachineType varchar(50)
AS
	IF EXISTS(SELECT MachineType FROM MachineTypeTable WHERE MachineType = @MachineType and id!=@id)
BEGIN
return -1
End
Else
BEGIN
			 UPDATE	MachineTypeTable set MachineType=@MachineType WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updaterole]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updaterole] 
	@id int,
	@Role varchar(50)
AS
BEGIN	
	IF EXISTS(SELECT Role FROM RoleTable WHERE Role = @Role and  id!=@id)
BEGIN
return -1
End
Else
    UPDATE	RoleTable set Role=@Role WHERE id=@id	
END


GO
/****** Object:  StoredProcedure [dbo].[updatesource]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatesource] 
	@id int,
	@Source varchar(50)
AS
IF EXISTS(SELECT Source FROM SourceTable WHERE Source = @Source  and id!=@id)
BEGIN
return -1
End
Else
BEGIN
	 UPDATE	SourceTable set Source=@Source WHERE id=@id	
END


GO
/****** Object:  StoredProcedure [dbo].[updatestate]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatestate]
	@State varchar(250),
	@Country int,
	@id varchar(250)
	AS
	IF EXISTS(SELECT State FROM State_Master WHERE State = @State and Countryname=@Country and id!=@id)
BEGIN
return -1
End
Else
BEGIN
			update State_Master set State=@State,Countryname=@Country where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[updatestatus]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatestatus] 
	@id int,
	@Status varchar(50)
AS
IF EXISTS(SELECT Status FROM StatusTable WHERE Status = @Status  and id!=@id)
BEGIN
return -1
End
Else
BEGIN
		 UPDATE	StatusTable set Status=@Status WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updatetermsandconditions]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatetermsandconditions]
	@id int,
	@Title varchar(MAX),
	@TandC varchar(MAX)
AS
BEGIN
				 UPDATE	TermsandConditions_Master set Title=@Title,TermsandConditions=@TandC WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updateunitofmeasurement]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateunitofmeasurement] 
	@id int,
	@UnitofMeasurement varchar(50)
AS
IF EXISTS(SELECT UnitofMeasurement FROM UnitofMeasurementTable WHERE UnitofMeasurement = @UnitofMeasurement  and id!=@id)
BEGIN
return -1
End
Else
BEGIN
			 UPDATE	UnitofMeasurementTable set UnitofMeasurement=@UnitofMeasurement WHERE id=@id	

END


GO
/****** Object:  Table [dbo].[AdminTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_AdminTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApplicationTypeTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicationTypeTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationType] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_ApplicationTypeTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BusinessTypeTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusinessTypeTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BusinessTypeName] [varchar](50) NULL,
	[Createdby] [varchar](50) NULL,
	[CreatedDateTime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_BusinessTypeTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City_Master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[City] [varchar](50) NULL,
	[Statename] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_City_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompressorTypeTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompressorTypeTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompressorType] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_CompressorTypeTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country_Master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Country_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DepartmentTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DepartmentTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_DepartmentTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DesignationTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DesignationTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_DesignationTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FollowUpTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FollowUpTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FollowUpType] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_FollowUpTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IndustryTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IndustryTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IndustryName] [varchar](50) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDateTime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_IndustryTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inqiury_Details]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inqiury_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Noseries] [bigint] NULL,
	[Item] [int] NULL,
	[UOM] [int] NULL,
	[Qty] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Inqiuryapplicationtype] [int] NULL,
	[Inqiurymanufacturename] [varchar](50) NULL,
	[Inqiuryequipmenttype] [varchar](50) NULL,
	[Inqiuryserialno] [varchar](50) NULL,
	[Inqiurymanufactureddate] [varchar](50) NULL,
	[Inqiurypowerunitconsuption] [varchar](50) NULL,
	[Inqiurycoolingcapacity] [varchar](50) NULL,
	[Inqiurymachinetype] [int] NULL,
	[Inqiurycompressortype] [int] NULL,
	[Inqiurycompressorinonecircuit] [varchar](50) NULL,
	[Inqiurynumberofcircuits] [varchar](50) NULL,
	[Inqiuryhotgasdischarge] [varchar](50) NULL,
	[Inqiurytypeofrefrigerant] [varchar](50) NULL,
	[Inqiuryannualpowerusage] [varchar](50) NULL,
	[Inqiuryavergedailyhours] [varchar](50) NULL,
	[Inqiurydaysrunperyear] [varchar](50) NULL,
	[InqiuryelectricityrateperKWH] [varchar](50) NULL,
	[Inqiurypercentageofoperationperhour] [varchar](50) NULL,
	[Inqiuryestimatedistance] [varchar](50) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Inqiury_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inqiury_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inqiury_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InqiuryNo] [bigint] NOT NULL,
	[Noseries] [bigint] NULL,
	[Inquirydate] [varchar](50) NULL,
	[Custname] [int] NULL,
	[Custcontact] [int] NULL,
	[Custcontactno] [varchar](50) NULL,
	[Dept] [int] NULL,
	[Design] [int] NULL,
	[ContactEmail] [varchar](350) NULL,
	[ContactMno1] [varchar](50) NULL,
	[ContactMno2] [varchar](50) NULL,
	[InqiuryStatus] [int] NULL,
	[InquirySource] [int] NULL,
	[Remarks] [varchar](max) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Inqiury_Master_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inquiry_Files]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inquiry_Files](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoSeries] [bigint] NULL,
	[FileName] [varchar](max) NULL,
	[FilePath] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Inquiry_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inquiry_No_Series]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inquiry_No_Series](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_Inquiry_No_Series] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Itemaster]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Itemaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [bigint] NOT NULL,
	[itemgroup] [int] NULL,
	[itemsubgroup] [int] NULL,
	[Modelno] [varchar](250) NULL,
	[Itemname] [varchar](350) NULL,
	[ItemFinalname] [varchar](450) NULL,
	[Itemalis] [varchar](250) NULL,
	[Itemcategoryno] [varchar](250) NULL,
	[ItemUOM] [int] NULL,
	[Itemrate] [decimal](18, 2) NULL,
	[Itemgst] [int] NULL,
	[ItemHsn] [varchar](150) NULL,
	[ItemDesc] [varchar](max) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Itemaster] PRIMARY KEY CLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Itemdocumentmaster]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Itemdocumentmaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [bigint] NULL,
	[Docuname] [varchar](350) NULL,
	[Filename] [varchar](350) NULL,
	[Documentpath] [varchar](max) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Itemdocumentmaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemGroupTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemGroupTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ItemGroup] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_ItemGroupTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Itemimagemaster]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Itemimagemaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [bigint] NULL,
	[Docuname] [varchar](350) NULL,
	[Filename] [varchar](350) NULL,
	[Documentpath] [varchar](max) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Itemimagemaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemSubgroupTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemSubgroupTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SubgroupName] [varchar](50) NULL,
	[itemgroupid] [int] NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTIme] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_ItemSubgroupTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MachineTypeTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MachineTypeTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MachineType] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_MachineTypeTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Qno] [bigint] NULL,
	[Item] [int] NULL,
	[UOM] [int] NULL,
	[Qty] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [bigint] NULL,
	[Qno] [bigint] NULL,
	[OrderDate] [varchar](50) NULL,
	[Custname] [int] NULL,
	[Custcontact] [int] NULL,
	[Custcontactno] [varchar](50) NULL,
	[Dept] [int] NULL,
	[Design] [int] NULL,
	[ContactEmail] [varchar](350) NULL,
	[ContactMno1] [varchar](50) NULL,
	[ContactMno2] [varchar](50) NULL,
	[InqiuryStatus] [int] NULL,
	[InqiurySource] [int] NULL,
	[Remarks] [varchar](max) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Order_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order_No_Series]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order_No_Series](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_Order_No_Series] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ordertandc]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ordertandc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Qno] [bigint] NULL,
	[TermsId] [int] NULL,
	[Termstitle] [varchar](max) NULL,
	[TermsDescription] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Ordertandc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quotation_Details]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quotation_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Noseries] [bigint] NULL,
	[Item] [int] NULL,
	[UOM] [int] NULL,
	[Qty] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Quotation_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quotation_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quotation_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuotationNo] [bigint] NULL,
	[NoSeries] [bigint] NULL,
	[QuotationDate] [varchar](50) NULL,
	[Custname] [int] NULL,
	[Custcontact] [int] NULL,
	[Custcontactno] [varchar](50) NULL,
	[Dept] [int] NULL,
	[Design] [int] NULL,
	[ContactEmail] [varchar](350) NULL,
	[ContactMno1] [varchar](50) NULL,
	[ContactMno2] [varchar](50) NULL,
	[InqiuryStatus] [int] NULL,
	[InqiurySource] [int] NULL,
	[Remarks] [varchar](max) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Quotation_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quotation_No_Series]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quotation_No_Series](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_Quotation_No_Series] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quotationstandc]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quotationstandc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Noseries] [bigint] NULL,
	[TermsId] [int] NULL,
	[Termstitle] [varchar](max) NULL,
	[TermsDescription] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Quotationstandc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_RoleTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SiteError]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SiteError](
	[ErrorID] [bigint] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [varchar](100) NULL,
	[ExceptionMessage] [varchar](max) NULL,
	[ExceptionStackTrace] [varchar](max) NULL,
	[Source] [varchar](max) NULL,
	[IPAddress] [varchar](50) NULL,
	[Browser] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[WebURL] [varchar](max) NULL,
	[ModifiedBY] [varchar](100) NULL,
	[ModifiedON] [datetime] NULL,
 CONSTRAINT [PK_CRM$SiteError] PRIMARY KEY CLUSTERED 
(
	[ErrorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SourceTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SourceTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Source] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_SourceTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State_Master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[State] [varchar](50) NULL,
	[Countryname] [int] NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_State_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StatusTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StatusTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_StatusTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Company_Contact_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Company_Contact_Master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Companyno] [bigint] NULL,
	[ContactName] [varchar](350) NULL,
	[ContactEmail] [varchar](250) NULL,
	[ContactPhone] [varchar](50) NULL,
	[ContactMobileno1] [varchar](50) NULL,
	[ContactMobileno2] [varchar](50) NULL,
	[Dept] [int] NULL,
	[Design] [int] NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Company_Contact_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Company_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Company_Master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Companyno] [bigint] NOT NULL,
	[Name] [varchar](250) NULL,
	[Area] [varchar](250) NULL,
	[Address] [varchar](max) NULL,
	[City] [varchar](250) NULL,
	[State] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Pincode] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[Email] [varchar](350) NULL,
	[BusinessType] [int] NULL,
	[Industrygroup] [int] NULL,
	[URL] [varchar](250) NULL,
	[Status] [varchar](50) NULL,
	[GSTno] [varchar](50) NULL,
	[Bankname] [varchar](250) NULL,
	[Accountno] [varchar](50) NULL,
	[IFSCcode] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varbinary](max) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Company_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Company_NoSeries]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Company_NoSeries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyNo] [bigint] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Company_NoSeries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Customer_Contact_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Customer_Contact_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Custno] [bigint] NULL,
	[ContactName] [varchar](250) NULL,
	[ContactEmail] [varchar](350) NULL,
	[ContactPhone] [varchar](50) NULL,
	[ContactMobileno1] [varchar](50) NULL,
	[ContactMobileno2] [varchar](50) NULL,
	[Dept] [int] NULL,
	[Design] [int] NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Customer_Contact_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Customer_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Customer_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NOT NULL,
	[GroupNo] [bigint] NULL,
	[Name] [varchar](250) NULL,
	[Area] [varchar](250) NULL,
	[Address] [varchar](max) NULL,
	[City] [varchar](250) NULL,
	[State] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Pincode] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[Email] [varchar](350) NULL,
	[BussinessType] [int] NULL,
	[Industrygroup] [int] NULL,
	[URL] [varchar](250) NULL,
	[Status] [varchar](50) NULL,
	[GSTno] [varchar](50) NULL,
	[Bankname] [varchar](250) NULL,
	[Accountno] [varchar](50) NULL,
	[IFSCcode] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extar2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extar4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Customer_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Customer_Noseries]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Customer_Noseries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Customer_Noseries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Employee_Document_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Employee_Document_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[no] [bigint] NULL,
	[DocuName] [varchar](350) NULL,
	[Filename] [varchar](350) NULL,
	[DocumentPath] [varchar](max) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Employee_Document_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Employee_master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Employee_master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[no] [bigint] NOT NULL,
	[Ename] [varchar](250) NULL,
	[Efname] [varchar](250) NULL,
	[Esurname] [varchar](250) NULL,
	[Egender] [varchar](50) NULL,
	[Epaddress] [varchar](max) NULL,
	[Eperaddress] [varchar](max) NULL,
	[ECity] [varchar](250) NULL,
	[EState] [varchar](50) NULL,
	[EDistrict] [varchar](50) NULL,
	[ECountry] [varchar](50) NULL,
	[EPincode] [varchar](50) NULL,
	[EPhoneNo] [varchar](50) NULL,
	[Emobilenop] [varchar](50) NULL,
	[Emobileoffice] [varchar](50) NULL,
	[Emobilewhatsup] [varchar](50) NULL,
	[Erole] [varchar](50) NULL,
	[Epfno] [varchar](50) NULL,
	[Edoa] [varchar](50) NULL,
	[Edoj] [varchar](50) NULL,
	[Edol] [varchar](50) NULL,
	[Edept] [int] NULL,
	[Edesign] [int] NULL,
	[Eemailid] [varchar](350) NULL,
	[Epwd] [varchar](50) NULL,
	[Eurgentcontactname] [varchar](250) NULL,
	[Eurgentcontactno] [varchar](250) NULL,
	[Eurgentcontactrelation] [varchar](250) NULL,
	[Estatus] [varchar](250) NULL,
	[Ebankname] [varchar](250) NULL,
	[Eaccno] [varchar](50) NULL,
	[Eifsccode] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Employee_master] PRIMARY KEY CLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Employee_NoSeries]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Employee_NoSeries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Employee_NoSeries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Inqiury_Followup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Inqiury_Followup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Noseries] [bigint] NOT NULL,
	[NextFolldate] [varchar](50) NULL,
	[Follotype] [int] NULL,
	[Assignto] [int] NULL,
	[FolloStatus] [int] NULL,
	[Remarks] [varchar](450) NULL,
	[Comdate] [varchar](50) NULL,
	[Comremarks] [varchar](450) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Inqiury_Followup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Item_NoSeries]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Item_NoSeries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Item_NoSeries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Order_Followup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Order_Followup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Qno] [bigint] NULL,
	[NextFolldate] [varchar](50) NULL,
	[Follotype] [int] NULL,
	[Assignto] [int] NULL,
	[FolloStatus] [int] NULL,
	[Remarks] [varchar](450) NULL,
	[Comdate] [varchar](50) NULL,
	[Comremarks] [varchar](450) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Order_Followup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Quotation_Followup]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Quotation_Followup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Noseries] [bigint] NULL,
	[NextFolldate] [varchar](50) NULL,
	[Follotype] [int] NULL,
	[Assignto] [int] NULL,
	[FolloStatus] [int] NULL,
	[Remarks] [varchar](450) NULL,
	[Comdate] [varchar](50) NULL,
	[Comremarks] [varchar](450) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Quotation_Followup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TermsandConditions_Master]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TermsandConditions_Master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NULL,
	[TermsandConditions] [varchar](max) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_TermsandCondtions_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitofMeasurementTable]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitofMeasurementTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UnitofMeasurement] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_UnitofMeasurementTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[V_Company]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Company]
AS
SELECT        dbo.tbl_Company_Master.id, dbo.tbl_Company_Master.Companyno, dbo.tbl_Company_Master.Name, dbo.tbl_Company_Master.Address, dbo.tbl_Company_Master.District, dbo.tbl_Company_Master.Pincode, 
                         dbo.tbl_Company_Master.PhoneNo, dbo.tbl_Company_Master.Email, dbo.tbl_Company_Master.Createby, dbo.Country_Master.Country, dbo.IndustryTable.IndustryName, dbo.BusinessTypeTable.BusinessTypeName, 
                         dbo.State_Master.State, dbo.City_Master.City, dbo.tbl_Company_Master.Status, dbo.tbl_Company_Master.GSTno, dbo.tbl_Company_Master.Extra1
FROM            dbo.tbl_Company_Master INNER JOIN
                         dbo.City_Master ON dbo.tbl_Company_Master.City = dbo.City_Master.id INNER JOIN
                         dbo.State_Master ON dbo.tbl_Company_Master.State = dbo.State_Master.id INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Company_Master.Country = dbo.Country_Master.id INNER JOIN
                         dbo.BusinessTypeTable ON dbo.tbl_Company_Master.BusinessType = dbo.BusinessTypeTable.id INNER JOIN
                         dbo.IndustryTable ON dbo.tbl_Company_Master.Industrygroup = dbo.IndustryTable.id


GO
/****** Object:  View [dbo].[V_Customer_Contact]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Customer_Contact]
AS
SELECT        dbo.DesignationTable.Designation, dbo.DepartmentTable.Department, dbo.tbl_Customer_Contact_Master.Id, dbo.tbl_Customer_Contact_Master.Custno, dbo.tbl_Customer_Contact_Master.ContactName, 
                         dbo.tbl_Customer_Contact_Master.ContactEmail, dbo.tbl_Customer_Contact_Master.ContactPhone, dbo.tbl_Customer_Contact_Master.ContactMobileno1, dbo.tbl_Customer_Contact_Master.ContactMobileno2, 
                         dbo.tbl_Customer_Contact_Master.Createby, dbo.tbl_Customer_Contact_Master.Createdatetime
FROM            dbo.tbl_Customer_Contact_Master INNER JOIN
                         dbo.DepartmentTable ON dbo.tbl_Customer_Contact_Master.Dept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.tbl_Customer_Contact_Master.Design = dbo.DesignationTable.id


GO
/****** Object:  View [dbo].[V_Customer_Record]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Customer_Record]
AS
SELECT        dbo.Country_Master.Country, dbo.State_Master.State, dbo.City_Master.City, dbo.tbl_Customer_Master.Name, dbo.tbl_Customer_Master.District, dbo.BusinessTypeTable.BusinessTypeName, dbo.IndustryTable.IndustryName, 
                         dbo.tbl_Customer_Master.Id, dbo.tbl_Customer_Master.PhoneNo, dbo.tbl_Customer_Master.Email, dbo.tbl_Customer_Master.Status, dbo.tbl_Customer_Master.GSTno, dbo.tbl_Customer_Master.No
FROM            dbo.City_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.City_Master.id = dbo.tbl_Customer_Master.City INNER JOIN
                         dbo.State_Master ON dbo.tbl_Customer_Master.State = dbo.State_Master.id INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Customer_Master.Country = dbo.Country_Master.id INNER JOIN
                         dbo.BusinessTypeTable ON dbo.tbl_Customer_Master.BussinessType = dbo.BusinessTypeTable.id INNER JOIN
                         dbo.IndustryTable ON dbo.tbl_Customer_Master.Industrygroup = dbo.IndustryTable.id


GO
/****** Object:  View [dbo].[V_Employee]    Script Date: 1/20/2021 11:15:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Employee]
AS
SELECT        dbo.tbl_Employee_master.Id, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Employee_master.Efname, dbo.tbl_Employee_master.Esurname, dbo.tbl_Employee_master.Egender, 
                         dbo.tbl_Employee_master.Epaddress, dbo.tbl_Employee_master.Eperaddress, dbo.RoleTable.Role, dbo.DepartmentTable.Department, dbo.DesignationTable.Designation, dbo.tbl_Employee_master.EPincode, 
                         dbo.tbl_Employee_master.EPhoneNo, dbo.tbl_Employee_master.Emobilenop, dbo.tbl_Employee_master.Emobileoffice, dbo.tbl_Employee_master.Emobilewhatsup, dbo.tbl_Employee_master.Epfno, 
                         dbo.tbl_Employee_master.Edoa, dbo.tbl_Employee_master.Edoj, dbo.tbl_Employee_master.Edol, dbo.tbl_Employee_master.Eemailid, dbo.tbl_Employee_master.Eurgentcontactname, 
                         dbo.tbl_Employee_master.Eurgentcontactno, dbo.tbl_Employee_master.Eurgentcontactrelation, dbo.tbl_Employee_master.Estatus, dbo.Country_Master.Country, dbo.State_Master.State, dbo.City_Master.City
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.DepartmentTable ON dbo.tbl_Employee_master.Edept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.tbl_Employee_master.Edesign = dbo.DesignationTable.id INNER JOIN
                         dbo.RoleTable ON dbo.tbl_Employee_master.Erole = dbo.RoleTable.id INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Employee_master.ECountry = dbo.Country_Master.id INNER JOIN
                         dbo.State_Master ON dbo.tbl_Employee_master.EState = dbo.State_Master.id INNER JOIN
                         dbo.City_Master ON dbo.tbl_Employee_master.ECity = dbo.City_Master.id


GO
SET IDENTITY_INSERT [dbo].[AdminTable] ON 

INSERT [dbo].[AdminTable] ([id], [Name], [Designation], [Email], [Password]) VALUES (1, N'Admin', N'Admin', N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[AdminTable] OFF
SET IDENTITY_INSERT [dbo].[BusinessTypeTable] ON 

INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Btype1', N'1', CAST(0x0000ACAA00F1DFBE AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[BusinessTypeTable] OFF
SET IDENTITY_INSERT [dbo].[City_Master] ON 

INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Vadodara', N'1', N'', CAST(0x0000ACAA00D71EE3 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[City_Master] OFF
SET IDENTITY_INSERT [dbo].[Country_Master] ON 

INSERT [dbo].[Country_Master] ([id], [Country], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'India', N'', CAST(0x0000ACAA00D70102 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Country_Master] OFF
SET IDENTITY_INSERT [dbo].[DepartmentTable] ON 

INSERT [dbo].[DepartmentTable] ([id], [Department], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Department', N'1', N'Jan  8 2021  2:33PM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[DepartmentTable] OFF
SET IDENTITY_INSERT [dbo].[DesignationTable] ON 

INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Dev', N'', N'Jan  8 2021  1:05PM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[DesignationTable] OFF
SET IDENTITY_INSERT [dbo].[IndustryTable] ON 

INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Ind Grp 1', N'1', CAST(0x0000ACAA00F1E926 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[IndustryTable] OFF
SET IDENTITY_INSERT [dbo].[Inquiry_No_Series] ON 

INSERT [dbo].[Inquiry_No_Series] ([id], [No], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
INSERT [dbo].[Inquiry_No_Series] ([id], [No], [Extra1], [Extra2]) VALUES (2, 2, N'', N'')
INSERT [dbo].[Inquiry_No_Series] ([id], [No], [Extra1], [Extra2]) VALUES (3, 3, N'', N'')
INSERT [dbo].[Inquiry_No_Series] ([id], [No], [Extra1], [Extra2]) VALUES (4, 4, N'', N'')
INSERT [dbo].[Inquiry_No_Series] ([id], [No], [Extra1], [Extra2]) VALUES (5, 5, N'', N'')
SET IDENTITY_INSERT [dbo].[Inquiry_No_Series] OFF
SET IDENTITY_INSERT [dbo].[RoleTable] ON 

INSERT [dbo].[RoleTable] ([id], [Role], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Admin', N'', CAST(0x0000ACAA00D6740D AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[RoleTable] ([id], [Role], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'Employee', N'', CAST(0x0000ACAA00D68A19 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[RoleTable] OFF
SET IDENTITY_INSERT [dbo].[SiteError] ON 

INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (1, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Country''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.employeeregister_aspx.__DataBinding__control11(Object sender, EventArgs e) in c:\Uniqtech\Ayka\EmployeeRegister.aspx:line 68
   at System.Web.UI.Control.OnDataBinding(EventArgs e)
   at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding)
   at System.Web.UI.Control.DataBind()
   at System.Web.UI.Control.DataBindChildren()
   at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding)
   at System.Web.UI.Control.DataBind()
   at System.Web.UI.Control.DataBindChildren()
   at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding)
   at System.Web.UI.Control.DataBind()
   at System.Web.UI.WebControls.GridView.CreateRow(Int32 rowIndex, Int32 dataSourceIndex, DataControlRowType rowType, DataControlRowState rowState, Boolean dataBind, Object dataItem, DataControlField[] fields, TableRowCollection rows, PagedDataSource pagedDataSource)
   at System.Web.UI.WebControls.GridView.CreateChildControls(IEnumerable dataSource, Boolean dataBinding)
   at System.Web.UI.WebControls.CompositeDataBoundControl.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.GridView.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.DataBoundControl.OnDataSourceViewSelectCallback(IEnumerable data)
   at System.Web.UI.DataSourceView.Select(DataSourceSelectArguments arguments, DataSourceViewSelectCallback callback)
   at System.Web.UI.WebControls.DataBoundControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at System.Web.UI.WebControls.GridView.DataBind()
   at EmployeeRegister.bindDetail() in c:\Uniqtech\Ayka\EmployeeRegister.aspx.cs:line 50', N'System.Web', N'::1', N'Chrome 87', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:59845/EmployeeRegister.aspx', N'1', CAST(0x0000ACB4012145F4 AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (2, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Country''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.employeeregister_aspx.__DataBinding__control11(Object sender, EventArgs e) in c:\Uniqtech\Ayka\EmployeeRegister.aspx:line 68
   at System.Web.UI.Control.OnDataBinding(EventArgs e)
   at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding)
   at System.Web.UI.Control.DataBind()
   at System.Web.UI.Control.DataBindChildren()
   at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding)
   at System.Web.UI.Control.DataBind()
   at System.Web.UI.Control.DataBindChildren()
   at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding)
   at System.Web.UI.Control.DataBind()
   at System.Web.UI.WebControls.GridView.CreateRow(Int32 rowIndex, Int32 dataSourceIndex, DataControlRowType rowType, DataControlRowState rowState, Boolean dataBind, Object dataItem, DataControlField[] fields, TableRowCollection rows, PagedDataSource pagedDataSource)
   at System.Web.UI.WebControls.GridView.CreateChildControls(IEnumerable dataSource, Boolean dataBinding)
   at System.Web.UI.WebControls.CompositeDataBoundControl.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.GridView.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.DataBoundControl.OnDataSourceViewSelectCallback(IEnumerable data)
   at System.Web.UI.DataSourceView.Select(DataSourceSelectArguments arguments, DataSourceViewSelectCallback callback)
   at System.Web.UI.WebControls.DataBoundControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at System.Web.UI.WebControls.GridView.DataBind()
   at EmployeeRegister.bindDetail() in c:\Uniqtech\Ayka\EmployeeRegister.aspx.cs:line 50', N'System.Web', N'::1', N'Chrome 87', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:59845/EmployeeRegister.aspx', N'1', CAST(0x0000ACB401226AFD AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (3, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Country''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.employeeregister_aspx.__DataBinding__control11(Object sender, EventArgs e) in c:\Uniqtech\Ayka\EmployeeRegister.aspx:line 68
   at System.Web.UI.Control.OnDataBinding(EventArgs e)
   at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding)
   at System.Web.UI.Control.DataBind()
   at System.Web.UI.Control.DataBindChildren()
   at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding)
   at System.Web.UI.Control.DataBind()
   at System.Web.UI.Control.DataBindChildren()
   at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding)
   at System.Web.UI.Control.DataBind()
   at System.Web.UI.WebControls.GridView.CreateRow(Int32 rowIndex, Int32 dataSourceIndex, DataControlRowType rowType, DataControlRowState rowState, Boolean dataBind, Object dataItem, DataControlField[] fields, TableRowCollection rows, PagedDataSource pagedDataSource)
   at System.Web.UI.WebControls.GridView.CreateChildControls(IEnumerable dataSource, Boolean dataBinding)
   at System.Web.UI.WebControls.CompositeDataBoundControl.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.GridView.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.DataBoundControl.OnDataSourceViewSelectCallback(IEnumerable data)
   at System.Web.UI.DataSourceView.Select(DataSourceSelectArguments arguments, DataSourceViewSelectCallback callback)
   at System.Web.UI.WebControls.DataBoundControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at System.Web.UI.WebControls.GridView.DataBind()
   at EmployeeRegister.bindDetail() in c:\Uniqtech\Ayka\EmployeeRegister.aspx.cs:line 50', N'System.Web', N'::1', N'Chrome 87', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:59845/EmployeeRegister.aspx', N'1', CAST(0x0000ACB401226DE9 AS DateTime))
SET IDENTITY_INSERT [dbo].[SiteError] OFF
SET IDENTITY_INSERT [dbo].[SourceTable] ON 

INSERT [dbo].[SourceTable] ([id], [Source], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Indiamart', N'', N'Jan 18 2021  1:09PM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[SourceTable] OFF
SET IDENTITY_INSERT [dbo].[State_Master] ON 

INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Gujarat', 1, N'', CAST(0x0000ACAA00D7138B AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[State_Master] OFF
SET IDENTITY_INSERT [dbo].[StatusTable] ON 

INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Active', N'', CAST(0x0000ACB400D8BA59 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[StatusTable] OFF
SET IDENTITY_INSERT [dbo].[tbl_Company_Contact_Master] ON 

INSERT [dbo].[tbl_Company_Contact_Master] ([id], [Companyno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, N'COMPANY CONTACT ', N'comp1@company.com', N'1231231111', N'1231231231', N'1231231231', 1, 1, N'1', CAST(0x0000ACB401428F6E AS DateTime), N'14/01/2021', N'', N'', N'', N'')
INSERT [dbo].[tbl_Company_Contact_Master] ([id], [Companyno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 1, N'COMPANY CONTACT1', N'comp@comp.com', N'10965109', N'1591958910', N'10919190841', 1, 1, N'1', CAST(0x0000ACB401430304 AS DateTime), N'15/01/2021', N'', N'', N'', N'')
INSERT [dbo].[tbl_Company_Contact_Master] ([id], [Companyno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, 1, N'COMPANY CONTACT1', N'', N'', N'', N'', 0, 0, N'1', CAST(0x0000ACB4014357B1 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Company_Contact_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Company_NoSeries] ON 

INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Company_NoSeries] OFF
SET IDENTITY_INSERT [dbo].[tbl_Customer_Contact_Master] ON 

INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, N'Neew Devel', N'newdev@new.com', N'4945651616', N'561619519', N'16159819', 1, 1, N'1', CAST(0x0000ACAA00F2876B AS DateTime), N'5/6/2001', N'5/7/2020', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 2, N'Customer 1', N'custom1@cust.com', N'', N'0808516165', N'0808516165', 1, 1, N'1', CAST(0x0000ACB400D88C5A AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Customer_Contact_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Customer_Master] ON 

INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (1, 2, 0, N'Customer 1', N'', N'custom address', N'1', N'1', N'Vadoadara', N'1', N'804818', N'0265484941', N'abc@aabc.cpm', 1, 1, N'', N'Active', N'', N'', N'', N'', N'1', CAST(0x0000ACB400D893A4 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Customer_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Customer_Noseries] ON 

INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (2, 2, N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Customer_Noseries] OFF
SET IDENTITY_INSERT [dbo].[tbl_Employee_master] ON 

INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 2, N'Developer', N'v', N'Developer', N'Male', N'Developer house', N'Developer house', N'1', N'1', N'Vadodara', N'1', N'0848489', N'9989894482', N'9989894482', N'9989894482', N'9989894482', N'2', N'9989894482', N'13/01/2021', N'14/01/2021', N'13/01/2021', 1, 1, N'Developer', N'', N'Deve', N'Deve', N'DEve', N'Active', N'Dev bank', N'9989894482', N'9989894482', N'', CAST(0x0000ACAA00F011DF AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1002, 3, N'test employee18012021', N'test', N'test', N'Male', N'address', N'address', N'1', N'1', N'Vadodara', N'1', N'080909', N'9898051521', N'0805231025', N'0805231025', N'0805231025', N'2', N'', N'', N'13/01/2021', N'12/01/2021', 1, 1, N'test@test.com', N'test', N'', N'', N'', N'Active', N'', N'', N'', N'1', CAST(0x0000ACB400B61611 AS DateTime), N'', N'', N'Employee', N'', N'')
INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1003, 5, N'Test 2', N'Test', N't3st', N'Female', N'ADdress test', N'ADdress test', N'1', N'1', N'Vadodara', N'1', N'390008', N'9898054655', N'9898054655', N'9898054655', N'9898054655', N'2', N'', N'', N'22/01/2021', N'16/01/2021', 1, 1, N'Admin', N'Admin', N'', N'', N'', N'Active', N'', N'', N'', N'1', CAST(0x0000ACB400BA81D8 AS DateTime), N'', N'', N'Employee', N'', N'')
INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1004, 6, N'teste2', N'testw', N'teste', N'Female', N'estsetse', N'estsetse', N'1', N'1', N'vad', N'1', N'3431314', N'0265123421', N'', N'', N'', N'2', N'', N'', N'15/01/2021', N'', 1, 1, N'tesets@ad.cim', N'', N'', N'', N'', N'Active', N'', N'', N'', N'', CAST(0x0000ACB400BD886F AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1005, 7, N'Test 3 employee', N'test', N'test', N'Male', N'test address', N'test address', N'1', N'1', N'Vadodara', N'1', N'1234512', N'122311213', N'1231313133', N'1231313133', N'1231313133', N'2', N'', N'', N'23/01/2021', N'', 1, 1, N'abc@qqbc.com', N'abc', N'', N'', N'', N'Active', N'', N'', N'', N'', CAST(0x0000ACB4012358B4 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Employee_master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Employee_NoSeries] ON 

INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (2, 2, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (1002, 3, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (1003, 4, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (1004, 5, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (1005, 6, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (1006, 7, N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Employee_NoSeries] OFF
SET IDENTITY_INSERT [dbo].[TermsandConditions_Master] ON 

INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Delivery', N'Delivery done in 10 days', N'', CAST(0x0000ACB400B6CA8E AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'Payment', N'Payment should be done on delivery itself', N'', CAST(0x0000ACB400B6E609 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[TermsandConditions_Master] OFF
ALTER TABLE [dbo].[SiteError] ADD  CONSTRAINT [DF_SiteError_ModifiedON]  DEFAULT (getdate()) FOR [ModifiedON]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[62] 4[3] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Company_Master"
            Begin Extent = 
               Top = 173
               Left = 625
               Bottom = 296
               Right = 795
            End
            DisplayFlags = 280
            TopColumn = 22
         End
         Begin Table = "Country_Master"
            Begin Extent = 
               Top = 0
               Left = 255
               Bottom = 130
               Right = 425
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "State_Master"
            Begin Extent = 
               Top = 0
               Left = 607
               Bottom = 130
               Right = 777
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "City_Master"
            Begin Extent = 
               Top = 62
               Left = 1085
               Bottom = 192
               Right = 1255
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "IndustryTable"
            Begin Extent = 
               Top = 232
               Left = 287
               Bottom = 362
               Right = 461
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BusinessTypeTable"
            Begin Extent = 
               Top = 350
               Left = 703
               Bottom = 480
               Right = 895
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Customer_Contact_Master"
            Begin Extent = 
               Top = 16
               Left = 45
               Bottom = 146
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "DepartmentTable"
            Begin Extent = 
               Top = 158
               Left = 293
               Bottom = 288
               Right = 467
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DesignationTable"
            Begin Extent = 
               Top = 6
               Left = 483
               Bottom = 136
               Right = 657
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Contact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Contact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "State_Master"
            Begin Extent = 
               Top = 0
               Left = 506
               Bottom = 130
               Right = 676
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Country_Master"
            Begin Extent = 
               Top = 44
               Left = 64
               Bottom = 174
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "City_Master"
            Begin Extent = 
               Top = 13
               Left = 736
               Bottom = 143
               Right = 906
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tbl_Customer_Master"
            Begin Extent = 
               Top = 112
               Left = 307
               Bottom = 242
               Right = 477
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BusinessTypeTable"
            Begin Extent = 
               Top = 108
               Left = 913
               Bottom = 238
               Right = 1104
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "IndustryTable"
            Begin Extent = 
               Top = 258
               Left = 38
               Bottom = 388
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 68
         Width = 284
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Record'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Record'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Customer_Record'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[66] 4[3] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Employee_master"
            Begin Extent = 
               Top = 226
               Left = 553
               Bottom = 356
               Right = 763
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "DepartmentTable"
            Begin Extent = 
               Top = 366
               Left = 727
               Bottom = 496
               Right = 901
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DesignationTable"
            Begin Extent = 
               Top = 209
               Left = 1023
               Bottom = 339
               Right = 1197
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RoleTable"
            Begin Extent = 
               Top = 322
               Left = 250
               Bottom = 452
               Right = 424
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Country_Master"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "State_Master"
            Begin Extent = 
               Top = 33
               Left = 525
               Bottom = 163
               Right = 695
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "City_Master"
            Begin Extent = 
               Top = 23
               Left = 933
               Bottom = 153
               Right = 110' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Employee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'3
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 29
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Employee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Employee'
GO
