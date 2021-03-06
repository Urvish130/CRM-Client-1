USE [Aykadb]
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
/****** Object:  StoredProcedure [dbo].[updateunitofmeasurement]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updateunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[updatetermsandconditions]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatetermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[updatestatus]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatestatus]
GO
/****** Object:  StoredProcedure [dbo].[updatestate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatestate]
GO
/****** Object:  StoredProcedure [dbo].[updatesource]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatesource]
GO
/****** Object:  StoredProcedure [dbo].[updaterole]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updaterole]
GO
/****** Object:  StoredProcedure [dbo].[UpdateQuotTerms]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[UpdateQuotTerms]
GO
/****** Object:  StoredProcedure [dbo].[UpdateQuotationTerms]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[UpdateQuotationTerms]
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderTerms2]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[UpdateOrderTerms2]
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderTerms]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[UpdateOrderTerms]
GO
/****** Object:  StoredProcedure [dbo].[updatemachinetype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatemachinetype]
GO
/****** Object:  StoredProcedure [dbo].[updateitemsubgroup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updateitemsubgroup]
GO
/****** Object:  StoredProcedure [dbo].[updateitemgroup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updateitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[updateinquiryfile]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updateinquiryfile]
GO
/****** Object:  StoredProcedure [dbo].[updateindustryname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updateindustryname]
GO
/****** Object:  StoredProcedure [dbo].[updatefollowuptype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatefollowuptype]
GO
/****** Object:  StoredProcedure [dbo].[updatedesignation]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatedesignation]
GO
/****** Object:  StoredProcedure [dbo].[updatedepartment]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatedepartment]
GO
/****** Object:  StoredProcedure [dbo].[updatecoverletter]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatecoverletter]
GO
/****** Object:  StoredProcedure [dbo].[updatecountry]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatecountry]
GO
/****** Object:  StoredProcedure [dbo].[updateCompressortype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updateCompressortype]
GO
/****** Object:  StoredProcedure [dbo].[updatecity]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatecity]
GO
/****** Object:  StoredProcedure [dbo].[updatebusinesstype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updatebusinesstype]
GO
/****** Object:  StoredProcedure [dbo].[updateapplicationtype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[updateapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[Update_UserRights]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[Update_UserRights]
GO
/****** Object:  StoredProcedure [dbo].[unitofmeasurementdisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[unitofmeasurementdisp]
GO
/****** Object:  StoredProcedure [dbo].[termsandconditionsdisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[termsandconditionsdisp]
GO
/****** Object:  StoredProcedure [dbo].[tbl_UserRights_NoSeries_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_UserRights_NoSeries_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_SubItem_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_SubItem_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_QuotBOM_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_QuotBOM_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_No_Series_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_No_Series_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Master_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Followup_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Followup_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Followup_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Followup_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Details_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Details_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Details_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_Details_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_BOM_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_BOM_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_BOM_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Quotation_BOM_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_OrderBOM_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_OrderBOM_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_No_Series_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Order_No_Series_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Master_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Order_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Order_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Followup_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Order_Followup_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Followup_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Order_Followup_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Details_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Order_Details_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Details_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Order_Details_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_BOM_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Order_BOM_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_BOM_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Order_BOM_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_ItemImage_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_ItemImage_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_ItemDocument_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_ItemDocument_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_ItemBOM_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_ItemBOM_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_NoSeries_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Item_NoSeries_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_Master_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Item_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Item_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inquiry_No_Series_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Inquiry_No_Series_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Master_Update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Master_Update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Followup_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Followup_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Followup_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Followup_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Details_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Details_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Details_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Inqiury_Details_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_NoSeries_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Employee_NoSeries_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_master_Update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Employee_master_Update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Employee_master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_Document_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Employee_Document_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Noseries_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Noseries_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Master_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Contact_Master_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Contact_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Contact_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Customer_Contact_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_NoSeries_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Company_NoSeries_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Master_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Company_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Company_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Contact_Master_update]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Company_Contact_Master_update]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Contact_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_Company_Contact_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[tbl_BOM_Master_Insert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[tbl_BOM_Master_Insert]
GO
/****** Object:  StoredProcedure [dbo].[statusdisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[statusdisp]
GO
/****** Object:  StoredProcedure [dbo].[sp_quotationfilter]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[sp_quotationfilter]
GO
/****** Object:  StoredProcedure [dbo].[sp_inquiryfilter]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[sp_inquiryfilter]
GO
/****** Object:  StoredProcedure [dbo].[sp_employeefilter]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[sp_employeefilter]
GO
/****** Object:  StoredProcedure [dbo].[sourcedisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[sourcedisp]
GO
/****** Object:  StoredProcedure [dbo].[SiteErrorSelectAll]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[SiteErrorSelectAll]
GO
/****** Object:  StoredProcedure [dbo].[SiteErrorInsert]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[SiteErrorInsert]
GO
/****** Object:  StoredProcedure [dbo].[SiteErrorDelete]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[SiteErrorDelete]
GO
/****** Object:  StoredProcedure [dbo].[showunitofmeasurement]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[showtermsandconditions]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showtermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[showstatus]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showstatus]
GO
/****** Object:  StoredProcedure [dbo].[showsource]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showsource]
GO
/****** Object:  StoredProcedure [dbo].[showrole]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showrole]
GO
/****** Object:  StoredProcedure [dbo].[showmachinetype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showmachinetype]
GO
/****** Object:  StoredProcedure [dbo].[showitemgroup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[showindustryname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showindustryname]
GO
/****** Object:  StoredProcedure [dbo].[showfollowuptable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showfollowuptable]
GO
/****** Object:  StoredProcedure [dbo].[showdesignation]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showdesignation]
GO
/****** Object:  StoredProcedure [dbo].[showdepartment]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showdepartment]
GO
/****** Object:  StoredProcedure [dbo].[showcoverletter]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showcoverletter]
GO
/****** Object:  StoredProcedure [dbo].[showcountry]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showcountry]
GO
/****** Object:  StoredProcedure [dbo].[showcompressortype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showcompressortype]
GO
/****** Object:  StoredProcedure [dbo].[showbusinesstype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showbusinesstype]
GO
/****** Object:  StoredProcedure [dbo].[showapplicationtype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[showapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[roledisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[roledisp]
GO
/****** Object:  StoredProcedure [dbo].[QuotTermsAndConditionByID]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[QuotTermsAndConditionByID]
GO
/****** Object:  StoredProcedure [dbo].[quotationtermsandconditionsdisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[quotationtermsandconditionsdisp]
GO
/****** Object:  StoredProcedure [dbo].[quotationtermsandconditions]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[quotationtermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[QuotationByQuotNo]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[QuotationByQuotNo]
GO
/****** Object:  StoredProcedure [dbo].[ordertermsandconditionsdisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[ordertermsandconditionsdisp]
GO
/****** Object:  StoredProcedure [dbo].[OrderFilterforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[OrderFilterforadmin]
GO
/****** Object:  StoredProcedure [dbo].[machinetypedisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[machinetypedisp]
GO
/****** Object:  StoredProcedure [dbo].[logindata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[logindata]
GO
/****** Object:  StoredProcedure [dbo].[itemgroupdisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[itemgroupdisp]
GO
/****** Object:  StoredProcedure [dbo].[insertunitofmeasurement]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[inserttermsandconditions]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[inserttermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[insertstatus]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertstatus]
GO
/****** Object:  StoredProcedure [dbo].[insertstate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertstate]
GO
/****** Object:  StoredProcedure [dbo].[insertsource]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertsource]
GO
/****** Object:  StoredProcedure [dbo].[insertrole]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertrole]
GO
/****** Object:  StoredProcedure [dbo].[insertmachinetype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertmachinetype]
GO
/****** Object:  StoredProcedure [dbo].[insertitemsubgroup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertitemsubgroup]
GO
/****** Object:  StoredProcedure [dbo].[insertitemgroup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[insertinquiryfiles]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertinquiryfiles]
GO
/****** Object:  StoredProcedure [dbo].[insertindustryname1]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertindustryname1]
GO
/****** Object:  StoredProcedure [dbo].[insertfollowuptype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertfollowuptype]
GO
/****** Object:  StoredProcedure [dbo].[insertdesignation]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertdesignation]
GO
/****** Object:  StoredProcedure [dbo].[insertdepartment]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertdepartment]
GO
/****** Object:  StoredProcedure [dbo].[insertcoverletter]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertcoverletter]
GO
/****** Object:  StoredProcedure [dbo].[insertcountry]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertcountry]
GO
/****** Object:  StoredProcedure [dbo].[insertcompressortype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertcompressortype]
GO
/****** Object:  StoredProcedure [dbo].[insertcity]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertcity]
GO
/****** Object:  StoredProcedure [dbo].[insertbusinesstype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertbusinesstype]
GO
/****** Object:  StoredProcedure [dbo].[insertapplicationtype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insertapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[Insert_UserRights]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[Insert_UserRights]
GO
/****** Object:  StoredProcedure [dbo].[Insert_RoleRight]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[Insert_RoleRight]
GO
/****** Object:  StoredProcedure [dbo].[insert_quotations_tandc]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insert_quotations_tandc]
GO
/****** Object:  StoredProcedure [dbo].[insert_order_tandc]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[insert_order_tandc]
GO
/****** Object:  StoredProcedure [dbo].[InqFilterforEmp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[InqFilterforEmp]
GO
/****** Object:  StoredProcedure [dbo].[InqFilterforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[InqFilterforadmin]
GO
/****** Object:  StoredProcedure [dbo].[indutrynamedisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[indutrynamedisp]
GO
/****** Object:  StoredProcedure [dbo].[GetUserPermissionByno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetUserPermissionByno]
GO
/****** Object:  StoredProcedure [dbo].[GetUserPermissionByEmpno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetUserPermissionByEmpno]
GO
/****** Object:  StoredProcedure [dbo].[GetUOMbyItemID]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetUOMbyItemID]
GO
/****** Object:  StoredProcedure [dbo].[gettallQuotationsitemdatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[gettallQuotationsitemdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[gettallQuotationsInquirydatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[gettallQuotationsInquirydatabyno]
GO
/****** Object:  StoredProcedure [dbo].[gettallorderitemdatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[gettallorderitemdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[GetSubItemDDL]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetSubItemDDL]
GO
/****** Object:  StoredProcedure [dbo].[getstatedatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getstatedatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getstatedata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getstatedata]
GO
/****** Object:  StoredProcedure [dbo].[getscitydatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getscitydatabyid]
GO
/****** Object:  StoredProcedure [dbo].[GetRepotedEmp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetRepotedEmp]
GO
/****** Object:  StoredProcedure [dbo].[GetQuotFollowDate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetQuotFollowDate]
GO
/****** Object:  StoredProcedure [dbo].[GetQuotDetails]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetQuotDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetQuotBOMDetails]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetQuotBOMDetails]
GO
/****** Object:  StoredProcedure [dbo].[getQuotationFollowupDetailsdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getQuotationFollowupDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getquotationFollowupdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getquotationFollowupdata]
GO
/****** Object:  StoredProcedure [dbo].[getquotationetailsdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getquotationetailsdata]
GO
/****** Object:  StoredProcedure [dbo].[getQuotationDetailsdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getQuotationDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getQuotationDetailsBOMbyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getQuotationDetailsBOMbyid]
GO
/****** Object:  StoredProcedure [dbo].[GetQuotationBOM]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetQuotationBOM]
GO
/****** Object:  StoredProcedure [dbo].[GetPageList]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetPageList]
GO
/****** Object:  StoredProcedure [dbo].[GetOrderTermsAndConditionByID]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetOrderTermsAndConditionByID]
GO
/****** Object:  StoredProcedure [dbo].[GetOrderTermsAndCondition]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetOrderTermsAndCondition]
GO
/****** Object:  StoredProcedure [dbo].[getorderFollowupDetailsdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getorderFollowupDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getorderFollowupdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getorderFollowupdata]
GO
/****** Object:  StoredProcedure [dbo].[getOrderFollowup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getOrderFollowup]
GO
/****** Object:  StoredProcedure [dbo].[getOrderDetailsdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getOrderDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getOrderDetailsBOMbyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getOrderDetailsBOMbyid]
GO
/****** Object:  StoredProcedure [dbo].[GetOrderDetails]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetOrderDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetOrderCountOfBOM]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetOrderCountOfBOM]
GO
/****** Object:  StoredProcedure [dbo].[GetOrderBOM]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetOrderBOM]
GO
/****** Object:  StoredProcedure [dbo].[GetListOfSubGroup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetListOfSubGroup]
GO
/****** Object:  StoredProcedure [dbo].[GetLastID]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetLastID]
GO
/****** Object:  StoredProcedure [dbo].[getitemsubgroupdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getitemsubgroupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getitemimagedata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getitemimagedata]
GO
/****** Object:  StoredProcedure [dbo].[getitemdocumentdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getitemdocumentdata]
GO
/****** Object:  StoredProcedure [dbo].[getinquiryfilesdatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getinquiryfilesdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getinquiryfilesdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getinquiryfilesdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[GetInquiryDetails]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetInquiryDetails]
GO
/****** Object:  StoredProcedure [dbo].[getInqiuryDetailsdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getInqiuryDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getInqiuryDetailsdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getInqiuryDetailsdata]
GO
/****** Object:  StoredProcedure [dbo].[GetInqbycreated]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetInqbycreated]
GO
/****** Object:  StoredProcedure [dbo].[getFollowupDetailsdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getFollowupDetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getFollowupdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getFollowupdata]
GO
/****** Object:  StoredProcedure [dbo].[GetFollowDate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetFollowDate]
GO
/****** Object:  StoredProcedure [dbo].[GetEmpRole]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetEmpRole]
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeListData]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetEmployeeListData]
GO
/****** Object:  StoredProcedure [dbo].[getemployeedatano]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getemployeedatano]
GO
/****** Object:  StoredProcedure [dbo].[GetEmpDDL]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetEmpDDL]
GO
/****** Object:  StoredProcedure [dbo].[getdocumentadata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getdocumentadata]
GO
/****** Object:  StoredProcedure [dbo].[getDesibyContact]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getDesibyContact]
GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentddl]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetDepartmentddl]
GO
/****** Object:  StoredProcedure [dbo].[getCustomerIdbyname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getCustomerIdbyname]
GO
/****** Object:  StoredProcedure [dbo].[getCustomercontactdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getCustomercontactdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getCustomercontactdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getCustomercontactdata]
GO
/****** Object:  StoredProcedure [dbo].[getCustomerConatctPerson]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getCustomerConatctPerson]
GO
/****** Object:  StoredProcedure [dbo].[GetCoverLatterData]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetCoverLatterData]
GO
/****** Object:  StoredProcedure [dbo].[GetCountOfBOM]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetCountOfBOM]
GO
/****** Object:  StoredProcedure [dbo].[getcompanycontactdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getcompanycontactdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getcompanycontactdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getcompanycontactdata]
GO
/****** Object:  StoredProcedure [dbo].[getcitydatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getcitydatabyid]
GO
/****** Object:  StoredProcedure [dbo].[getcitydata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getcitydata]
GO
/****** Object:  StoredProcedure [dbo].[GetBOMTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetBOMTable]
GO
/****** Object:  StoredProcedure [dbo].[GetBOMOrderDetails]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetBOMOrderDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetBOMdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetBOMdata]
GO
/****** Object:  StoredProcedure [dbo].[GetBombyItemID]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetBombyItemID]
GO
/****** Object:  StoredProcedure [dbo].[GetBOMByID]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetBOMByID]
GO
/****** Object:  StoredProcedure [dbo].[getallstateforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallstateforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallstatebycountryid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallstatebycountryid]
GO
/****** Object:  StoredProcedure [dbo].[getallstate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallstate]
GO
/****** Object:  StoredProcedure [dbo].[GetAllroleRights]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetAllroleRights]
GO
/****** Object:  StoredProcedure [dbo].[getallRoleforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallRoleforadmin]
GO
/****** Object:  StoredProcedure [dbo].[GetAllReportList]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetAllReportList]
GO
/****** Object:  StoredProcedure [dbo].[getallQuotationdataforEmp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallQuotationdataforEmp]
GO
/****** Object:  StoredProcedure [dbo].[getallQuotationdataforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallQuotationdataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallQuotationdatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallQuotationdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getallorderdetailsdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallorderdetailsdata]
GO
/****** Object:  StoredProcedure [dbo].[getallOrderdataforEmployee]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallOrderdataforEmployee]
GO
/****** Object:  StoredProcedure [dbo].[getallOrderdataforByEmpID]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallOrderdataforByEmpID]
GO
/****** Object:  StoredProcedure [dbo].[getallOrderdataforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallOrderdataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallOrderdatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallOrderdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getallitemsubgroupforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallitemsubgroupforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallitemsubgroup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallitemsubgroup]
GO
/****** Object:  StoredProcedure [dbo].[getallItemdataRegiforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallItemdataRegiforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallItemdataforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallItemdataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallitemdatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallitemdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getallitemdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallitemdata]
GO
/****** Object:  StoredProcedure [dbo].[getallitem]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallitem]
GO
/****** Object:  StoredProcedure [dbo].[getallinquiryfollwup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallinquiryfollwup]
GO
/****** Object:  StoredProcedure [dbo].[getallinqiurydetailsdata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallinqiurydetailsdata]
GO
/****** Object:  StoredProcedure [dbo].[getallInqiurydataforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallInqiurydataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallInqiurydatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallInqiurydatabyno]
GO
/****** Object:  StoredProcedure [dbo].[GetAllEmployeeddl]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[GetAllEmployeeddl]
GO
/****** Object:  StoredProcedure [dbo].[getallemployeedataforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallemployeedataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallemployeedata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallemployeedata]
GO
/****** Object:  StoredProcedure [dbo].[getallCustomerMasterataforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallCustomerMasterataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallCustomerMasterata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallCustomerMasterata]
GO
/****** Object:  StoredProcedure [dbo].[getallCustomerdatabynoForreport]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallCustomerdatabynoForreport]
GO
/****** Object:  StoredProcedure [dbo].[getallCustomerdatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallCustomerdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[getallcompanydataforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallcompanydataforadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallcompanydatabycomno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallcompanydatabycomno]
GO
/****** Object:  StoredProcedure [dbo].[getallcompanydatabyadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallcompanydatabyadmin]
GO
/****** Object:  StoredProcedure [dbo].[getallcompanydata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallcompanydata]
GO
/****** Object:  StoredProcedure [dbo].[getallcityforadmin]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[getallcityforadmin]
GO
/****** Object:  StoredProcedure [dbo].[followuptypedisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[followuptypedisp]
GO
/****** Object:  StoredProcedure [dbo].[EdituserRights]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[EdituserRights]
GO
/****** Object:  StoredProcedure [dbo].[designationdisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[designationdisp]
GO
/****** Object:  StoredProcedure [dbo].[depaartmentdisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[depaartmentdisp]
GO
/****** Object:  StoredProcedure [dbo].[deleteunitofmeasurement]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[deletetermsandconditions]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletetermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[deletestatus]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletestatus]
GO
/****** Object:  StoredProcedure [dbo].[deletestatedatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletestatedatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletesource]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletesource]
GO
/****** Object:  StoredProcedure [dbo].[DeleteRoleRights]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[DeleteRoleRights]
GO
/****** Object:  StoredProcedure [dbo].[deleterole]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleterole]
GO
/****** Object:  StoredProcedure [dbo].[deletequotationtandc]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletequotationtandc]
GO
/****** Object:  StoredProcedure [dbo].[deletequotationfollowupdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletequotationfollowupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletequotationdetailsdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletequotationdetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletequotationdetailsBOMbyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletequotationdetailsBOMbyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteordertandc]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteordertandc]
GO
/****** Object:  StoredProcedure [dbo].[deleteorderfollowupdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteorderfollowupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteOrderdetailsdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteOrderdetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteOrderdetailsBOMbyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteOrderdetailsBOMbyid]
GO
/****** Object:  StoredProcedure [dbo].[deletemachinetype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletemachinetype]
GO
/****** Object:  StoredProcedure [dbo].[deleteitemsubgroupdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteitemsubgroupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteitemimgdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteitemimgdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteitemgroup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[deleteitemdocumentdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteitemdocumentdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[DeleteItemBOMbyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[DeleteItemBOMbyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteitematano]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteitematano]
GO
/****** Object:  StoredProcedure [dbo].[deleteinquiryfollowupdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteinquiryfollowupdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteinquiryfilesdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteinquiryfilesdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteinquirydetailsdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteinquirydetailsdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteindustryname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteindustryname]
GO
/****** Object:  StoredProcedure [dbo].[deletefollowuptype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletefollowuptype]
GO
/****** Object:  StoredProcedure [dbo].[deleteemployeedocumentdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteemployeedocumentdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteemployeedatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteemployeedatabyno]
GO
/****** Object:  StoredProcedure [dbo].[deletedesignation]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletedesignation]
GO
/****** Object:  StoredProcedure [dbo].[deletedepartment]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletedepartment]
GO
/****** Object:  StoredProcedure [dbo].[deleteCustomerdatabyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteCustomerdatabyno]
GO
/****** Object:  StoredProcedure [dbo].[deleteCustomercontactdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteCustomercontactdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deleteCustomer]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteCustomer]
GO
/****** Object:  StoredProcedure [dbo].[deletecoverletter]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletecoverletter]
GO
/****** Object:  StoredProcedure [dbo].[deletecountry]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletecountry]
GO
/****** Object:  StoredProcedure [dbo].[deletecompressortype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletecompressortype]
GO
/****** Object:  StoredProcedure [dbo].[deletecompanydatabyCompanyno]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletecompanydatabyCompanyno]
GO
/****** Object:  StoredProcedure [dbo].[deletecompanydata]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletecompanydata]
GO
/****** Object:  StoredProcedure [dbo].[deletecompanycontactdatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletecompanycontactdatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletecompany]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletecompany]
GO
/****** Object:  StoredProcedure [dbo].[deletecitydatabyid]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletecitydatabyid]
GO
/****** Object:  StoredProcedure [dbo].[deletebusinesstype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deletebusinesstype]
GO
/****** Object:  StoredProcedure [dbo].[deleteapplicationtype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[deleteapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[coverletterdisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[coverletterdisp]
GO
/****** Object:  StoredProcedure [dbo].[countrydisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[countrydisp]
GO
/****** Object:  StoredProcedure [dbo].[compressortypedisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[compressortypedisp]
GO
/****** Object:  StoredProcedure [dbo].[CheckUserRights]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[CheckUserRights]
GO
/****** Object:  StoredProcedure [dbo].[checkunitofmeasurement]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkunitofmeasurement]
GO
/****** Object:  StoredProcedure [dbo].[checktermsandconditions]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checktermsandconditions]
GO
/****** Object:  StoredProcedure [dbo].[checkstatus]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkstatus]
GO
/****** Object:  StoredProcedure [dbo].[checkstatename]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkstatename]
GO
/****** Object:  StoredProcedure [dbo].[checksource]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checksource]
GO
/****** Object:  StoredProcedure [dbo].[checkrole]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkrole]
GO
/****** Object:  StoredProcedure [dbo].[checkQuotationProductName]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkQuotationProductName]
GO
/****** Object:  StoredProcedure [dbo].[checkQuotationFollowup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkQuotationFollowup]
GO
/****** Object:  StoredProcedure [dbo].[CheckQuotationBOM]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[CheckQuotationBOM]
GO
/****** Object:  StoredProcedure [dbo].[checkQuotationalready]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkQuotationalready]
GO
/****** Object:  StoredProcedure [dbo].[checkProductName]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkProductName]
GO
/****** Object:  StoredProcedure [dbo].[checkOrderProductName]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkOrderProductName]
GO
/****** Object:  StoredProcedure [dbo].[checkOrderFollowup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkOrderFollowup]
GO
/****** Object:  StoredProcedure [dbo].[checkmachinetypenameupdate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkmachinetypenameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkmachinetypename]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkmachinetypename]
GO
/****** Object:  StoredProcedure [dbo].[checkmachinetype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkmachinetype]
GO
/****** Object:  StoredProcedure [dbo].[CheckloginRights]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[CheckloginRights]
GO
/****** Object:  StoredProcedure [dbo].[checklogindetails]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checklogindetails]
GO
/****** Object:  StoredProcedure [dbo].[checkitemsubgroupname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkitemsubgroupname]
GO
/****** Object:  StoredProcedure [dbo].[checkItemname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkItemname]
GO
/****** Object:  StoredProcedure [dbo].[checkitemgroup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkitemgroup]
GO
/****** Object:  StoredProcedure [dbo].[CheckItemBOM]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[CheckItemBOM]
GO
/****** Object:  StoredProcedure [dbo].[checkInqiuryalready]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkInqiuryalready]
GO
/****** Object:  StoredProcedure [dbo].[checkindustrynameupdate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkindustrynameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkindustryname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkindustryname]
GO
/****** Object:  StoredProcedure [dbo].[checkfollowuptype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkfollowuptype]
GO
/****** Object:  StoredProcedure [dbo].[checkFollowup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkFollowup]
GO
/****** Object:  StoredProcedure [dbo].[checkEmployee]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkEmployee]
GO
/****** Object:  StoredProcedure [dbo].[checkdesignation]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkdesignation]
GO
/****** Object:  StoredProcedure [dbo].[checkdepartment]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkdepartment]
GO
/****** Object:  StoredProcedure [dbo].[checkCustomername]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkCustomername]
GO
/****** Object:  StoredProcedure [dbo].[checkcustomercontactname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkcustomercontactname]
GO
/****** Object:  StoredProcedure [dbo].[checkCustName]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkCustName]
GO
/****** Object:  StoredProcedure [dbo].[checkcoverletter]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkcoverletter]
GO
/****** Object:  StoredProcedure [dbo].[checkcountryname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkcountryname]
GO
/****** Object:  StoredProcedure [dbo].[checkcompressortypenameupdate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkcompressortypenameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkcompressortypename]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkcompressortypename]
GO
/****** Object:  StoredProcedure [dbo].[checkcompressortype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkcompressortype]
GO
/****** Object:  StoredProcedure [dbo].[checkcompanyname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkcompanyname]
GO
/****** Object:  StoredProcedure [dbo].[checkcompanycontactname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkcompanycontactname]
GO
/****** Object:  StoredProcedure [dbo].[checkcityname]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkcityname]
GO
/****** Object:  StoredProcedure [dbo].[checkbusinesstypenameupdate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkbusinesstypenameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkbusinesstypename]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkbusinesstypename]
GO
/****** Object:  StoredProcedure [dbo].[CheckBOMQuot]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[CheckBOMQuot]
GO
/****** Object:  StoredProcedure [dbo].[checkapplicationtypenameupdate]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkapplicationtypenameupdate]
GO
/****** Object:  StoredProcedure [dbo].[checkapplicationtypename]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkapplicationtypename]
GO
/****** Object:  StoredProcedure [dbo].[checkapplicationtype]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[checkapplicationtype]
GO
/****** Object:  StoredProcedure [dbo].[businesstypedisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[businesstypedisp]
GO
/****** Object:  StoredProcedure [dbo].[applicationtypedisp]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP PROCEDURE [dbo].[applicationtypedisp]
GO
ALTER TABLE [dbo].[SiteError] DROP CONSTRAINT [DF_SiteError_ModifiedON]
GO
/****** Object:  Table [dbo].[UnitofMeasurementTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[UnitofMeasurementTable]
GO
/****** Object:  Table [dbo].[TermsandConditions_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[TermsandConditions_Master]
GO
/****** Object:  Table [dbo].[tbl_UserRights_Noseries]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_UserRights_Noseries]
GO
/****** Object:  Table [dbo].[tbl_UserRights_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_UserRights_Master]
GO
/****** Object:  Table [dbo].[tbl_RoleRights_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_RoleRights_Master]
GO
/****** Object:  Table [dbo].[tbl_Role_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Role_Master]
GO
/****** Object:  Table [dbo].[tbl_QuotationBOM_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_QuotationBOM_Master]
GO
/****** Object:  Table [dbo].[tbl_Quotation_Followup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Quotation_Followup]
GO
/****** Object:  Table [dbo].[tbl_PageMaster]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_PageMaster]
GO
/****** Object:  Table [dbo].[tbl_OrderBOM_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_OrderBOM_Master]
GO
/****** Object:  Table [dbo].[tbl_Order_Followup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Order_Followup]
GO
/****** Object:  Table [dbo].[tbl_ItemBOM_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_ItemBOM_Master]
GO
/****** Object:  Table [dbo].[tbl_Item_NoSeries]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Item_NoSeries]
GO
/****** Object:  Table [dbo].[tbl_Inqiury_Followup]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Inqiury_Followup]
GO
/****** Object:  Table [dbo].[tbl_Employee_NoSeries]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Employee_NoSeries]
GO
/****** Object:  Table [dbo].[tbl_Employee_Document_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Employee_Document_Master]
GO
/****** Object:  Table [dbo].[tbl_Customer_Noseries]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Customer_Noseries]
GO
/****** Object:  Table [dbo].[tbl_Company_NoSeries]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Company_NoSeries]
GO
/****** Object:  Table [dbo].[tbl_Company_Contact_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Company_Contact_Master]
GO
/****** Object:  Table [dbo].[tbl_BOM_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_BOM_Master]
GO
/****** Object:  Table [dbo].[StatusTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[StatusTable]
GO
/****** Object:  Table [dbo].[SourceTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[SourceTable]
GO
/****** Object:  Table [dbo].[SiteError]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[SiteError]
GO
/****** Object:  Table [dbo].[Quotationstandc]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Quotationstandc]
GO
/****** Object:  Table [dbo].[Quotationscoverletter]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Quotationscoverletter]
GO
/****** Object:  Table [dbo].[Quotation_No_Series]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Quotation_No_Series]
GO
/****** Object:  Table [dbo].[Quotation_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Quotation_Master]
GO
/****** Object:  Table [dbo].[Quotation_Details]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Quotation_Details]
GO
/****** Object:  Table [dbo].[Ordertandc]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Ordertandc]
GO
/****** Object:  Table [dbo].[Order_No_Series]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Order_No_Series]
GO
/****** Object:  Table [dbo].[Order_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Order_Master]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Order_Details]
GO
/****** Object:  Table [dbo].[MachineTypeTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[MachineTypeTable]
GO
/****** Object:  Table [dbo].[ItemSubgroupTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[ItemSubgroupTable]
GO
/****** Object:  Table [dbo].[Itemimagemaster]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Itemimagemaster]
GO
/****** Object:  Table [dbo].[ItemGroupTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[ItemGroupTable]
GO
/****** Object:  Table [dbo].[Itemdocumentmaster]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Itemdocumentmaster]
GO
/****** Object:  Table [dbo].[Itemaster]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Itemaster]
GO
/****** Object:  Table [dbo].[Inquiry_No_Series]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Inquiry_No_Series]
GO
/****** Object:  Table [dbo].[Inquiry_Files]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Inquiry_Files]
GO
/****** Object:  Table [dbo].[Inqiury_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Inqiury_Master]
GO
/****** Object:  Table [dbo].[Inqiury_Details]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Inqiury_Details]
GO
/****** Object:  Table [dbo].[FollowUpTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[FollowUpTable]
GO
/****** Object:  Table [dbo].[CoverLetter_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[CoverLetter_Master]
GO
/****** Object:  Table [dbo].[CompressorTypeTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[CompressorTypeTable]
GO
/****** Object:  Table [dbo].[ApplicationTypeTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[ApplicationTypeTable]
GO
/****** Object:  Table [dbo].[AdminTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[AdminTable]
GO
/****** Object:  View [dbo].[V_Employee]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP VIEW [dbo].[V_Employee]
GO
/****** Object:  Table [dbo].[tbl_Employee_master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Employee_master]
GO
/****** Object:  View [dbo].[V_Customer_Record]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP VIEW [dbo].[V_Customer_Record]
GO
/****** Object:  Table [dbo].[tbl_Customer_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Customer_Master]
GO
/****** Object:  View [dbo].[V_Customer_Contact]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP VIEW [dbo].[V_Customer_Contact]
GO
/****** Object:  Table [dbo].[tbl_Customer_Contact_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Customer_Contact_Master]
GO
/****** Object:  Table [dbo].[DesignationTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[DesignationTable]
GO
/****** Object:  Table [dbo].[DepartmentTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[DepartmentTable]
GO
/****** Object:  View [dbo].[V_Company]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP VIEW [dbo].[V_Company]
GO
/****** Object:  Table [dbo].[tbl_Company_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[tbl_Company_Master]
GO
/****** Object:  Table [dbo].[State_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[State_Master]
GO
/****** Object:  Table [dbo].[IndustryTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[IndustryTable]
GO
/****** Object:  Table [dbo].[Country_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[Country_Master]
GO
/****** Object:  Table [dbo].[City_Master]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[City_Master]
GO
/****** Object:  Table [dbo].[BusinessTypeTable]    Script Date: 17/03/2021 01:27:37 PM ******/
DROP TABLE [dbo].[BusinessTypeTable]
GO
/****** Object:  Table [dbo].[BusinessTypeTable]    Script Date: 17/03/2021 01:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[City_Master]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Country_Master]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[IndustryTable]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[State_Master]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_Company_Master]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  View [dbo].[V_Company]    Script Date: 17/03/2021 01:27:38 PM ******/
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
/****** Object:  Table [dbo].[DepartmentTable]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DesignationTable]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_Customer_Contact_Master]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  View [dbo].[V_Customer_Contact]    Script Date: 17/03/2021 01:27:38 PM ******/
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
/****** Object:  Table [dbo].[tbl_Customer_Master]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  View [dbo].[V_Customer_Record]    Script Date: 17/03/2021 01:27:38 PM ******/
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
/****** Object:  Table [dbo].[tbl_Employee_master]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  View [dbo].[V_Employee]    Script Date: 17/03/2021 01:27:38 PM ******/
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
/****** Object:  Table [dbo].[AdminTable]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ApplicationTypeTable]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CompressorTypeTable]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CoverLetter_Master]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoverLetter_Master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Createby] [varchar](50) NULL,
	[Createdatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_CoverLetter_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUpTable]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Inqiury_Details]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Inqiury_Master]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Inquiry_Files]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Inquiry_No_Series]    Script Date: 17/03/2021 01:27:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Itemaster]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Itemdocumentmaster]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ItemGroupTable]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Itemimagemaster]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ItemSubgroupTable]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[MachineTypeTable]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Order_Details]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[Discount] [decimal](18, 2) NULL,
	[FinalbasePrice] [decimal](18, 2) NULL,
	[GST] [decimal](18, 2) NULL,
	[ADBenefit] [decimal](18, 2) NULL,
	[NetValue] [decimal](18, 2) NULL,
	[TotalValue] [decimal](18, 2) NULL,
	[Extra6] [varchar](50) NULL,
	[Extra7] [varchar](50) NULL,
	[Extra8] [varchar](50) NULL,
	[Extra9] [varchar](50) NULL,
	[Extra10] [varchar](50) NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Master]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [bigint] NULL,
	[NoSeries] [bigint] NULL,
	[OrderDate] [varchar](50) NULL,
	[Custname] [int] NULL,
	[Custcontact] [int] NULL,
	[Custcontactno] [varchar](50) NULL,
	[Dept] [int] NULL,
	[Design] [int] NULL,
	[ContactEmail] [varchar](350) NULL,
	[ContactMno1] [varchar](50) NULL,
	[ContactMno2] [varchar](50) NULL,
	[TotalCost] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Benifit] [decimal](18, 2) NULL,
	[FinalPrice] [decimal](18, 2) NULL,
	[GST] [decimal](18, 2) NULL,
	[FinalPriceGST] [decimal](18, 2) NULL,
	[InqiuryStatus] [int] NULL,
	[InqiurySource] [int] NULL,
	[QuotationNo] [int] NULL,
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
/****** Object:  Table [dbo].[Order_No_Series]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Ordertandc]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Quotation_Details]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[Discount] [decimal](18, 2) NULL,
	[FinalbasePrice] [decimal](18, 2) NULL,
	[GST] [decimal](18, 2) NULL,
	[ADBenefit] [decimal](18, 2) NULL,
	[NetValue] [decimal](18, 2) NULL,
	[TotalValue] [decimal](18, 2) NULL,
	[Extra6] [varchar](50) NULL,
	[Extra7] [varchar](50) NULL,
	[Extra8] [varchar](50) NULL,
	[Extra9] [varchar](50) NULL,
	[Extra10] [varchar](50) NULL,
 CONSTRAINT [PK_Quotation_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotation_Master]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[CoverLetter] [int] NULL,
	[TotalCost] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Benifit] [decimal](18, 2) NULL,
	[FinalPrice] [decimal](18, 2) NULL,
	[GST] [decimal](18, 2) NULL,
	[FinalPriceGST] [decimal](18, 2) NULL,
	[InqiuryStatus] [int] NULL,
	[InqiurySource] [int] NULL,
	[InquiryNo] [int] NULL,
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
/****** Object:  Table [dbo].[Quotation_No_Series]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Quotationscoverletter]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotationscoverletter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Noseries] [bigint] NULL,
	[coverId] [int] NULL,
	[covertitle] [varchar](max) NULL,
	[coverDescription] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateDatetime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_Quotationscoverletter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotationstandc]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[SiteError]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[SourceTable]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[StatusTable]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_BOM_Master]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BOM_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemNo] [int] NULL,
	[Name] [varchar](50) NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_BOM_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Company_Contact_Master]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_Company_NoSeries]    Script Date: 17/03/2021 01:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_Customer_Noseries]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_Employee_Document_Master]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_Employee_NoSeries]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_Inqiury_Followup]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_Item_NoSeries]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_ItemBOM_Master]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ItemBOM_Master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ItemNo] [int] NULL,
	[SubItemName] [varchar](50) NULL,
	[SubRate] [decimal](18, 2) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [datetime] NULL,
	[Exrta1] [varchar](50) NULL,
	[Exrta2] [varchar](50) NULL,
	[Exrta3] [varchar](50) NULL,
	[Exrta4] [varchar](50) NULL,
	[Exrta5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ItemBOM_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Order_Followup]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_OrderBOM_Master]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OrderBOM_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemNo] [int] NULL,
	[SubItemName] [int] NULL,
	[SubRate] [decimal](18, 2) NULL,
	[Qty] [varchar](50) NULL,
	[OrderBOM] [int] NULL,
	[OrderNO] [int] NULL,
	[Createby] [int] NULL,
	[CreateDateTime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
	[Extra6] [varchar](50) NULL,
	[Extra7] [varchar](50) NULL,
	[Extra8] [varchar](50) NULL,
	[Extra9] [varchar](50) NULL,
	[Extra10] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_OrderBOM_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PageMaster]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PageMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_PageMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Quotation_Followup]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[tbl_QuotationBOM_Master]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_QuotationBOM_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemNo] [int] NULL,
	[SubItemName] [int] NULL,
	[SubRate] [decimal](18, 2) NULL,
	[Qty] [varchar](50) NULL,
	[QuotationBOM] [int] NULL,
	[QuotationNO] [int] NULL,
	[Createby] [int] NULL,
	[CreateDateTime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_QuotationBOM_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Role_Master]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role_Master](
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
/****** Object:  Table [dbo].[tbl_RoleRights_Master]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RoleRights_Master](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [varchar](50) NULL,
	[RoleName] [varchar](50) NULL,
	[CreateStatus] [varchar](50) NULL,
	[EditStatus] [varchar](50) NULL,
	[UpdateStatus] [varchar](50) NULL,
	[DeleteStatus] [varchar](50) NULL,
	[ViewStatus] [varchar](50) NULL,
	[ViewallStatus] [varchar](50) NULL,
	[EmailStatus] [varchar](50) NULL,
	[PrintStatus] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [datetime] NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
	[Extra6] [varchar](50) NULL,
	[Extra7] [varchar](50) NULL,
	[Extra8] [varchar](50) NULL,
	[Extra9] [varchar](50) NULL,
	[Extra10] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_RoleRights_Master] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserRights_Master]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserRights_Master](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [varchar](50) NULL,
	[RoleName] [varchar](50) NULL,
	[CreateStatus] [varchar](50) NULL,
	[EditStatus] [varchar](50) NULL,
	[Noseries] [varchar](50) NULL,
	[DeleteStatus] [varchar](50) NULL,
	[ViewStatus] [varchar](50) NULL,
	[ViewallStatus] [varchar](50) NULL,
	[EmailStatus] [varchar](50) NULL,
	[PrintStatus] [varchar](50) NULL,
	[Createby] [varchar](50) NULL,
	[CreateDateTime] [datetime] NULL,
	[EmployeeID] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
	[Extra3] [varchar](50) NULL,
	[Extra4] [varchar](50) NULL,
	[Extra5] [varchar](50) NULL,
	[Extra6] [varchar](50) NULL,
	[Extra7] [varchar](50) NULL,
	[Extra8] [varchar](50) NULL,
	[Extra9] [varchar](50) NULL,
	[Extra10] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_UserRights_Master] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserRights_Noseries]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserRights_Noseries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NOT NULL,
	[Extra1] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_UserRights_Noseries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TermsandConditions_Master]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[UnitofMeasurementTable]    Script Date: 17/03/2021 01:27:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
SET IDENTITY_INSERT [dbo].[AdminTable] ON 

INSERT [dbo].[AdminTable] ([id], [Name], [Designation], [Email], [Password]) VALUES (1, N'admin', N'Admin', N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[AdminTable] OFF
SET IDENTITY_INSERT [dbo].[ApplicationTypeTable] ON 

INSERT [dbo].[ApplicationTypeTable] ([id], [ApplicationType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, N'Comfort', N'1', N'Sep 29 2020 10:42AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ApplicationTypeTable] ([id], [ApplicationType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, N'Process', N'1', N'Nov 30 2020 11:34AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ApplicationTypeTable] ([id], [ApplicationType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (11, N'Cold Room Application', N'1', N'Jan 20 2021  8:19PM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[ApplicationTypeTable] OFF
SET IDENTITY_INSERT [dbo].[BusinessTypeTable] ON 

INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (17, N'Networking', N'1', CAST(N'2020-11-02T22:47:17.157' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (18, N'Energy', N'1', CAST(N'2020-11-07T11:10:46.077' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (19, N'Food Industry', N'1', CAST(N'2020-11-12T07:04:59.023' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (20, N'Information and Technology', N'1', CAST(N'2020-11-16T10:13:01.267' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (21, N'Metal Production', N'1', CAST(N'2020-11-16T10:13:11.783' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (22, N'Textile Industry', N'1', CAST(N'2020-11-16T10:13:21.157' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (23, N'Rubber Industry', N'1', CAST(N'2020-11-16T10:13:27.017' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (24, N'Pharma ', N'1', CAST(N'2020-11-16T10:13:35.753' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (25, N'Chemical Industry', N'1', CAST(N'2021-01-20T19:54:12.853' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (26, N'Tyre Industry', N'1', CAST(N'2021-01-20T19:54:23.133' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[BusinessTypeTable] ([id], [BusinessTypeName], [Createdby], [CreatedDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (27, N'btest', N'1', CAST(N'2021-01-21T19:48:38.957' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[BusinessTypeTable] OFF
SET IDENTITY_INSERT [dbo].[City_Master] ON 

INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Vadodara', N'1', N'1', CAST(N'2020-09-24T18:37:15.507' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'Surat', N'1', N'', CAST(N'2020-10-05T18:07:58.843' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'Anand', N'1', N'1', CAST(N'2020-10-10T14:43:47.920' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'', N'0', N'1', CAST(N'2020-10-10T14:44:56.293' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, N'Ahmedabad', N'1', N'', CAST(N'2020-10-16T07:00:32.920' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, N'Pune', N'2', N'', CAST(N'2020-11-02T22:46:15.993' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, N'Bharuch', N'1', N'', CAST(N'2021-01-02T13:44:48.390' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, N'Mumbai', N'2', N'', CAST(N'2021-01-09T14:23:07.437' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, N'Hyderabad', N'26', N'1', CAST(N'2021-01-20T20:02:57.270' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (11, N'Chennai', N'25', N'1', CAST(N'2021-01-20T20:04:18.183' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[City_Master] ([id], [City], [Statename], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (12, N'Coimbatore', N'25', N'1', CAST(N'2021-01-20T20:04:32.153' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[City_Master] OFF
SET IDENTITY_INSERT [dbo].[CompressorTypeTable] ON 

INSERT [dbo].[CompressorTypeTable] ([id], [CompressorType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'Scroll', N'1', N'Oct 10 2020  3:26PM', N'', N'', N'', N'', N'')
INSERT [dbo].[CompressorTypeTable] ([id], [CompressorType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'screw', N'', N'Oct 19 2020  4:08PM', N'', N'', N'', N'', N'')
INSERT [dbo].[CompressorTypeTable] ([id], [CompressorType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'Reciprocating', N'1', N'Nov 30 2020 11:35AM', N'', N'', N'', N'', N'')
INSERT [dbo].[CompressorTypeTable] ([id], [CompressorType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, N'Fixed Speed ', N'1', N'Nov 30 2020 11:36AM', N'', N'', N'', N'', N'')
INSERT [dbo].[CompressorTypeTable] ([id], [CompressorType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, N'Digital Scroll', N'1', N'Nov 30 2020 11:36AM', N'', N'', N'', N'', N'')
INSERT [dbo].[CompressorTypeTable] ([id], [CompressorType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, N'Inverter', N'1', N'Nov 30 2020 11:36AM', N'', N'', N'', N'', N'')
INSERT [dbo].[CompressorTypeTable] ([id], [CompressorType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, N'Semi Hermetic Screw Type', N'1', N'Jan 20 2021  8:20PM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[CompressorTypeTable] OFF
SET IDENTITY_INSERT [dbo].[Country_Master] ON 

INSERT [dbo].[Country_Master] ([id], [Country], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'India', N'', CAST(N'2020-09-24T18:36:49.333' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Country_Master] ([id], [Country], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'United Kingdom', N'1', CAST(N'2020-11-07T11:11:27.093' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Country_Master] ([id], [Country], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'United States of America', N'1', CAST(N'2020-11-07T11:11:35.593' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Country_Master] ([id], [Country], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'Thailand', N'1', CAST(N'2020-11-30T11:21:45.320' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Country_Master] ([id], [Country], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, N'USA', N'', CAST(N'2021-01-21T19:42:02.560' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Country_Master] OFF
SET IDENTITY_INSERT [dbo].[CoverLetter_Master] ON 

INSERT [dbo].[CoverLetter_Master] ([id], [Title], [Description], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Test', N'Test', N'', CAST(N'2021-02-12T11:37:36.823' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[CoverLetter_Master] OFF
SET IDENTITY_INSERT [dbo].[DepartmentTable] ON 

INSERT [dbo].[DepartmentTable] ([id], [Department], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'HVAC', N'1', N'Oct  5 2020  6:06PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DepartmentTable] ([id], [Department], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'Accounts and Finance', N'1', N'Oct 10 2020  2:45PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DepartmentTable] ([id], [Department], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'Maintainace', N'1', N'Nov  2 2020 10:51PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DepartmentTable] ([id], [Department], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, N'Plant', N'1', N'Nov 30 2020 11:23AM', N'', N'', N'', N'', N'')
INSERT [dbo].[DepartmentTable] ([id], [Department], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, N'Sales', N'1', N'Jan  5 2021 10:34PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DepartmentTable] ([id], [Department], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (11, N'Maintainance', N'1', N'Jan 20 2021  7:57PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DepartmentTable] ([id], [Department], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (12, N'Utility', N'1', N'Jan 20 2021  7:58PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DepartmentTable] ([id], [Department], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (13, N'Technical Sales', N'1', N'Jan 20 2021  8:05PM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[DepartmentTable] OFF
SET IDENTITY_INSERT [dbo].[DesignationTable] ON 

INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Manager', N'1', N'Oct  5 2020  6:06PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'CEO', N'1', N'Oct 10 2020  2:48PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'Plant Head', N'1', N'Nov 30 2020 11:23AM', N'', N'', N'', N'', N'')
INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, N'Marketting Specialist', N'1', N'Jan  5 2021 10:34PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, N'Managing Director', N'', N'Jan  9 2021 10:48PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, N'Technical Executive', N'1', N'Jan  9 2021 10:50PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, N'Sales Executive', N'1', N'Jan  9 2021 10:50PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (12, N'Utility Manager', N'1', N'Jan 20 2021  7:59PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (13, N'Assistant Manager', N'1', N'Jan 20 2021  8:06PM', N'', N'', N'', N'', N'')
INSERT [dbo].[DesignationTable] ([id], [Designation], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (14, N'Executive', N'1', N'Jan 20 2021  8:06PM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[DesignationTable] OFF
SET IDENTITY_INSERT [dbo].[FollowUpTable] ON 

INSERT [dbo].[FollowUpTable] ([id], [FollowUpType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Email', N'1', CAST(N'2020-10-10T14:49:27.523' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[FollowUpTable] ([id], [FollowUpType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'Call', N'1', CAST(N'2020-10-10T14:49:48.410' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[FollowUpTable] ([id], [FollowUpType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'Re Visit', N'1', CAST(N'2020-11-30T11:23:42.853' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[FollowUpTable] ([id], [FollowUpType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'Personal Visit', N'1', CAST(N'2021-01-20T20:07:03.590' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[FollowUpTable] OFF
SET IDENTITY_INSERT [dbo].[IndustryTable] ON 

INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (25, N'IT', N'1', CAST(N'2020-11-02T22:47:00.057' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (27, N'FMCG', N'1', CAST(N'2020-11-07T11:09:32.077' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (28, N'Construction Industry', N'1', CAST(N'2020-11-07T11:09:49.780' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (29, N'Pharmacutical', N'1', CAST(N'2020-11-12T07:04:27.350' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (30, N'Reality Industry', N'1', CAST(N'2020-11-12T07:04:35.850' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (31, N'Consultantcy', N'1', CAST(N'2020-11-12T07:04:43.243' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (32, N'Generic', N'1', CAST(N'2020-12-30T22:11:44.040' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (33, N'Automobile Industry', N'1', CAST(N'2021-01-20T19:53:09.320' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (34, N'Conustrution', N'1', CAST(N'2021-01-20T19:56:31.260' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (35, N'Textile', N'1', CAST(N'2021-01-23T22:50:33.750' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (36, N'Chemical', N'1', CAST(N'2021-01-23T22:50:50.393' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (37, N'Marine and Fisheries', N'1', CAST(N'2021-01-23T22:51:01.360' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (38, N'Oil and Gas', N'1', CAST(N'2021-01-23T22:51:15.970' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[IndustryTable] ([id], [IndustryName], [CreateBy], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (39, N'Tyre Industries', N'1', CAST(N'2021-01-23T22:51:23.410' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[IndustryTable] OFF
SET IDENTITY_INSERT [dbo].[Inqiury_Details] ON 

INSERT [dbo].[Inqiury_Details] ([Id], [Noseries], [Item], [UOM], [Qty], [Rate], [Amount], [Inqiuryapplicationtype], [Inqiurymanufacturename], [Inqiuryequipmenttype], [Inqiuryserialno], [Inqiurymanufactureddate], [Inqiurypowerunitconsuption], [Inqiurycoolingcapacity], [Inqiurymachinetype], [Inqiurycompressortype], [Inqiurycompressorinonecircuit], [Inqiurynumberofcircuits], [Inqiuryhotgasdischarge], [Inqiurytypeofrefrigerant], [Inqiuryannualpowerusage], [Inqiuryavergedailyhours], [Inqiurydaysrunperyear], [InqiuryelectricityrateperKWH], [Inqiurypercentageofoperationperhour], [Inqiuryestimatedistance], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, 1, 7, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 9, N'', N'', N'', N'', N'', N'', 3, 5, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'1', CAST(N'2021-03-03T14:47:31.077' AS DateTime), N'dsds', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Inqiury_Details] OFF
SET IDENTITY_INSERT [dbo].[Inqiury_Master] ON 

INSERT [dbo].[Inqiury_Master] ([Id], [InqiuryNo], [Noseries], [Inquirydate], [Custname], [Custcontact], [Custcontactno], [Dept], [Design], [ContactEmail], [ContactMno1], [ContactMno2], [InqiuryStatus], [InquirySource], [Remarks], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, 1, N'03/03/2021', 20, 6, N'', 4, 1, N'montu@intas.com', N'981211211', N'', 18, 2, N'', N'1', CAST(N'2021-03-03T14:47:39.183' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Inqiury_Master] OFF
SET IDENTITY_INSERT [dbo].[Inquiry_No_Series] ON 

INSERT [dbo].[Inquiry_No_Series] ([id], [No], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
INSERT [dbo].[Inquiry_No_Series] ([id], [No], [Extra1], [Extra2]) VALUES (2, 2, N'', N'')
SET IDENTITY_INSERT [dbo].[Inquiry_No_Series] OFF
SET IDENTITY_INSERT [dbo].[Itemaster] ON 

INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 3, 49, 15, N'IOT', N'IOT', N'IOT Device', N'', N'', 7, CAST(30000.00 AS Decimal(18, 2)), 18, N'84191920', N'', N'1', CAST(N'2021-02-18T15:31:54.010' AS DateTime), N'No', N'1', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 4, 49, 12, N'Ambient', N'Ambient Gauge', N'ambient', N'', N'', 7, CAST(1700.00 AS Decimal(18, 2)), 18, N'84810000', N'', N'1', CAST(N'2021-02-12T17:04:54.373' AS DateTime), N'No', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, 7, 50, 16, N'SCC', N'SCC', N'SCC', N'', N'', 7, CAST(40000.00 AS Decimal(18, 2)), 18, N'85044010', N'', N'1', CAST(N'2021-02-18T15:32:05.297' AS DateTime), N'Yes', N'1', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, 8, 50, 13, N'FalkonAir F2', N'F2', N'FalkonAir Panel F2', N'F2', N'', 7, CAST(86250.00 AS Decimal(18, 2)), 18, N'84191920', N'', N'1', CAST(N'2021-02-12T16:19:54.010' AS DateTime), N'No', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, 9, 49, 12, N'PT500', N'Elitech PT500', N'PT500', N'1', N'', 7, CAST(15000.00 AS Decimal(18, 2)), 18, N'84191920', N'', N'1', CAST(N'2021-02-12T16:54:10.903' AS DateTime), N'No', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, 10, 49, 12, N'Elitech PT800', N'Elitech PT800', N'Elitech PT800', N'', N'', 7, CAST(15000.00 AS Decimal(18, 2)), 18, N'84191920', N'', N'1', CAST(N'2021-02-12T16:55:47.763' AS DateTime), N'No', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, 11, 50, 13, N'FalkonAir F3', N'F3', N'Solar Thermal Panel', N'', N'', 7, CAST(45000.00 AS Decimal(18, 2)), 18, N'84191920', N'', N'1', CAST(N'2021-02-12T16:56:45.827' AS DateTime), N'No', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, 12, 48, 17, N'7/8"', N'NRV 7/8"', N'NRV 7/8"', N'', N'', 8, CAST(1500.00 AS Decimal(18, 2)), 18, N'84191920', N'', N'1', CAST(N'2021-02-12T21:54:31.467' AS DateTime), N'No', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, 13, 48, 17, N'NRV', N'NRV 5/8"', N'NRV 5/8"', N'', N'', 7, CAST(1000.00 AS Decimal(18, 2)), 18, N'84191920', N'', N'1', CAST(N'2021-02-12T21:55:56.683' AS DateTime), N'No', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, 15, 48, 18, N'Copper', N'Copper', N'Copper', N'', N'', 10, CAST(500.00 AS Decimal(18, 2)), 18, N'74110000', N'', N'1', CAST(N'2021-02-13T08:01:53.797' AS DateTime), N'No', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (11, 16, 52, 19, N'Man days', N'Solar Man days', N'', N'', N'', 7, CAST(4000.00 AS Decimal(18, 2)), 18, N'99729', N'', N'1', CAST(N'2021-02-13T08:03:38.217' AS DateTime), N'No', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (12, 17, 50, 13, N'Solar Thermal Solution', N'Solar Thermal Solution', N'', N'', N'', 9, CAST(122250.00 AS Decimal(18, 2)), 18, N'84191920', N'', N'1', CAST(N'2021-02-13T08:09:15.647' AS DateTime), N'Yes', N'', N'', N'', N'')
INSERT [dbo].[Itemaster] ([id], [no], [itemgroup], [itemsubgroup], [Modelno], [Itemname], [ItemFinalname], [Itemalis], [Itemcategoryno], [ItemUOM], [Itemrate], [Itemgst], [ItemHsn], [ItemDesc], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (13, 19, 50, 16, N'', N'Test Item', N'', N'', N'', 8, CAST(200.00 AS Decimal(18, 2)), 10, N'HSN123', N'', N'1', CAST(N'2021-02-18T15:32:31.487' AS DateTime), N'No', N'2', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Itemaster] OFF
SET IDENTITY_INSERT [dbo].[ItemGroupTable] ON 

INSERT [dbo].[ItemGroupTable] ([id], [ItemGroup], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (44, N'HVAC', N'', N'Nov 29 2020  3:12PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemGroupTable] ([id], [ItemGroup], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (45, N'Refrigeration', N'', N'Nov 30 2020 11:24AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemGroupTable] ([id], [ItemGroup], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (46, N'EN', N'', N'Dec 29 2020 11:55AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemGroupTable] ([id], [ItemGroup], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (47, N'Maingroup', N'', N'Dec 29 2020 11:55AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemGroupTable] ([id], [ItemGroup], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (48, N'Accessories', N'', N'Jan 20 2021  8:08PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemGroupTable] ([id], [ItemGroup], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (49, N'Energy Monitoring Device', N'', N'Jan 20 2021  8:10PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemGroupTable] ([id], [ItemGroup], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (50, N'Energy Conservation', N'', N'Jan 20 2021  8:15PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemGroupTable] ([id], [ItemGroup], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (51, N'Test Group', N'1', N'Feb 12 2021 11:13AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemGroupTable] ([id], [ItemGroup], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (52, N'Labor Charges', N'1', N'Feb 13 2021  8:02AM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[ItemGroupTable] OFF
SET IDENTITY_INSERT [dbo].[ItemSubgroupTable] ON 

INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Falkonair F2', 0, N'', N'Oct  5 2020 10:32AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'Falkonair F2', 20, N'', N'Oct  5 2020 10:32AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'123', 20, N'1', N'Oct 10 2020  3:28PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'Air Conditioning', 44, N'1', N'Nov 30 2020 11:40AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, N'Peocess', 44, N'1', N'Nov 30 2020 11:40AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, N'Cold Room', 45, N'1', N'Nov 30 2020 11:40AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, N'Cold Storage', 45, N'1', N'Nov 30 2020 11:41AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, N'Free-on', 45, N'1', N'Nov 30 2020 11:41AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, N'Amonia', 45, N'1', N'Nov 30 2020 11:41AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, N'Subgroup', 47, N'', N'Dec 29 2020 11:56AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (11, N'Accessories', 44, N'', N'Jan 20 2021  8:08PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (12, N'Pressure Temperature Gauge', 49, N'', N'Jan 20 2021  8:11PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (13, N'Solar Thermal', 50, N'', N'Jan 20 2021  8:16PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (14, N'Test Sub-Group', 51, N'1', N'Feb 12 2021 11:13AM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (15, N'IOT', 49, N'1', N'Feb 12 2021  4:57PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (16, N'Smart Compressor Control', 50, N'1', N'Feb 12 2021  5:05PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (17, N'NRV', 48, N'1', N'Feb 12 2021  5:07PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (18, N'Branch Pipe', 48, N'1', N'Feb 12 2021  9:56PM', N'', N'', N'', N'', N'')
INSERT [dbo].[ItemSubgroupTable] ([id], [SubgroupName], [itemgroupid], [Createby], [CreateDateTIme], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (19, N'Man Days', 52, N'1', N'Feb 13 2021  8:02AM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[ItemSubgroupTable] OFF
SET IDENTITY_INSERT [dbo].[MachineTypeTable] ON 

INSERT [dbo].[MachineTypeTable] ([id], [MachineType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'Ductable Units', N'1', N'Sep 29 2020 11:49AM', N'', N'', N'', N'', N'')
INSERT [dbo].[MachineTypeTable] ([id], [MachineType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, N'Refrigeration Rack', N'1', N'Sep 30 2020 10:46AM', N'', N'', N'', N'', N'')
INSERT [dbo].[MachineTypeTable] ([id], [MachineType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, N'Air Cooled Chiller', N'1', N'Oct 10 2020  3:25PM', N'', N'', N'', N'', N'')
INSERT [dbo].[MachineTypeTable] ([id], [MachineType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, N'Top Discharge VRF', N'', N'Oct 19 2020  4:08PM', N'', N'', N'', N'', N'')
INSERT [dbo].[MachineTypeTable] ([id], [MachineType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, N'Side Discharge VRF', N'1', N'Nov 30 2020 11:36AM', N'', N'', N'', N'', N'')
INSERT [dbo].[MachineTypeTable] ([id], [MachineType], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, N'DX Fix Speed Units', N'1', N'Jan 20 2021  8:19PM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[MachineTypeTable] OFF
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([Id], [Qno], [Item], [UOM], [Qty], [Rate], [Amount], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Discount], [FinalbasePrice], [GST], [ADBenefit], [NetValue], [TotalValue], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (1, 1, 1, 7, CAST(1.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), N'1', CAST(N'2021-03-03T16:05:52.430' AS DateTime), N'0', N'No', N'', N'84191920', N'18', CAST(0.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), CAST(5400.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(27000.00 AS Decimal(18, 2)), CAST(35400.00 AS Decimal(18, 2)), N'', N'', N'', N'', N'')
INSERT [dbo].[Order_Details] ([Id], [Qno], [Item], [UOM], [Qty], [Rate], [Amount], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Discount], [FinalbasePrice], [GST], [ADBenefit], [NetValue], [TotalValue], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (2, 1, 3, 7, CAST(1.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), N'1', CAST(N'2021-03-03T16:05:52.507' AS DateTime), N'0', N'Yes', N'', N'85044010', N'18', CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(360.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), CAST(2360.00 AS Decimal(18, 2)), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
SET IDENTITY_INSERT [dbo].[Order_Master] ON 

INSERT [dbo].[Order_Master] ([Id], [OrderNo], [NoSeries], [OrderDate], [Custname], [Custcontact], [Custcontactno], [Dept], [Design], [ContactEmail], [ContactMno1], [ContactMno2], [TotalCost], [Discount], [Benifit], [FinalPrice], [GST], [FinalPriceGST], [InqiuryStatus], [InqiurySource], [QuotationNo], [Remarks], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, 1, N'03/03/2021', 20, 6, N'', 4, 1, N'montu@intas.com', N'981211211', N'', CAST(32000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(3200.00 AS Decimal(18, 2)), CAST(28800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(37760.00 AS Decimal(18, 2)), 18, 2, 1, N'', N'1', CAST(N'2021-03-03T16:05:59.603' AS DateTime), N'QuottoOrder', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Order_Master] OFF
SET IDENTITY_INSERT [dbo].[Order_No_Series] ON 

INSERT [dbo].[Order_No_Series] ([id], [No], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
SET IDENTITY_INSERT [dbo].[Order_No_Series] OFF
SET IDENTITY_INSERT [dbo].[Ordertandc] ON 

INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, 12, N'cancellation Charges', N'Cancellation charges', N'True', N'1', CAST(N'2021-03-03T16:05:52.730' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 1, 10, N'Freight Terms', N'Freight Terms', N'False', N'1', CAST(N'2021-03-03T16:05:52.747' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, 1, 13, N'INCO Terms', N'Ex-Works', N'False', N'1', CAST(N'2021-03-03T16:05:52.753' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, 1, 9, N'Interest Charges', N'Interest', N'False', N'1', CAST(N'2021-03-03T16:05:52.760' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, 1, 11, N'Packing and Forwarding ', N'P&F Value', N'True', N'1', CAST(N'2021-03-03T16:05:52.767' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, 1, 5, N'Payment Terms', N'<ol><li>30% advance </li><li>40% after 50% work complete</li><li>30% GO live </li></ol>', N'True', N'1', CAST(N'2021-03-03T16:05:52.773' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, 1, 7, N'Tax', N'GST <div>VAT</div><div>TAX</div>', N'True', N'1', CAST(N'2021-03-03T16:05:52.780' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, 1, 14, N'Transporter', N'Transporter', N'False', N'1', CAST(N'2021-03-03T16:05:52.783' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, 1, 15, N'Validity', N'30 days from the date of this order', N'False', N'1', CAST(N'2021-03-03T16:05:52.790' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Ordertandc] ([Id], [Qno], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, 1, 8, N'Warranty terms', N'Warranty', N'False', N'1', CAST(N'2021-03-03T16:05:52.797' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Ordertandc] OFF
SET IDENTITY_INSERT [dbo].[Quotation_Details] ON 

INSERT [dbo].[Quotation_Details] ([Id], [Noseries], [Item], [UOM], [Qty], [Rate], [Amount], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Discount], [FinalbasePrice], [GST], [ADBenefit], [NetValue], [TotalValue], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (1, 1, 1, 7, CAST(1.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), N'1', CAST(N'2021-03-05T16:44:41.110' AS DateTime), N'0', N'No', N'', N'84191920', N'18', CAST(10.00 AS Decimal(18, 2)), CAST(27000.00 AS Decimal(18, 2)), CAST(4860.00 AS Decimal(18, 2)), CAST(2700.00 AS Decimal(18, 2)), CAST(24300.00 AS Decimal(18, 2)), CAST(31860.00 AS Decimal(18, 2)), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotation_Details] ([Id], [Noseries], [Item], [UOM], [Qty], [Rate], [Amount], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Discount], [FinalbasePrice], [GST], [ADBenefit], [NetValue], [TotalValue], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (2, 1, 3, 7, CAST(1.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), N'1', CAST(N'2021-03-05T16:45:34.130' AS DateTime), N'', N'Yes', N'', N'85044010', N'18', CAST(110.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(396.00 AS Decimal(18, 2)), CAST(220.00 AS Decimal(18, 2)), CAST(1980.00 AS Decimal(18, 2)), CAST(2596.00 AS Decimal(18, 2)), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Quotation_Details] OFF
SET IDENTITY_INSERT [dbo].[Quotation_Master] ON 

INSERT [dbo].[Quotation_Master] ([Id], [QuotationNo], [NoSeries], [QuotationDate], [Custname], [Custcontact], [Custcontactno], [Dept], [Design], [ContactEmail], [ContactMno1], [ContactMno2], [CoverLetter], [TotalCost], [Discount], [Benifit], [FinalPrice], [GST], [FinalPriceGST], [InqiuryStatus], [InqiurySource], [InquiryNo], [Remarks], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, 1, N'03/03/2021', 20, 6, N'', 4, 1, N'montu@intas.com', N'981211211', N'', 1, CAST(29200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2920.00 AS Decimal(18, 2)), CAST(26280.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(34456.00 AS Decimal(18, 2)), 18, 2, 1, N'', N'1', CAST(N'2021-03-05T18:51:34.137' AS DateTime), N'InqtoQuotation', N'Jeet Pandya', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Quotation_Master] OFF
SET IDENTITY_INSERT [dbo].[Quotation_No_Series] ON 

INSERT [dbo].[Quotation_No_Series] ([id], [No], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
SET IDENTITY_INSERT [dbo].[Quotation_No_Series] OFF
SET IDENTITY_INSERT [dbo].[Quotationstandc] ON 

INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, 12, N'cancellation Charges', N'Cancellation charges', N'True', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 1, 10, N'Freight Terms', N'Freight Terms', N'False', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, 1, 13, N'INCO Terms', N'Ex-Works', N'False', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, 1, 9, N'Interest Charges', N'Interest', N'False', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, 1, 11, N'Packing and Forwarding ', N'P&F Value', N'True', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, 1, 5, N'Payment Terms', N'<ol><li>30% advance </li><li>40% after 50% work complete</li><li>30% GO live </li></ol>', N'True', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, 1, 7, N'Tax', N'GST <div>VAT</div><div>TAX</div>', N'True', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, 1, 14, N'Transporter', N'Transporter', N'False', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, 1, 15, N'Validity', N'30 days from the date of this order', N'False', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Quotationstandc] ([Id], [Noseries], [TermsId], [Termstitle], [TermsDescription], [Status], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, 1, 8, N'Warranty terms', N'Warranty', N'False', N'1', CAST(N'2021-03-03T16:04:43.203' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Quotationstandc] OFF
SET IDENTITY_INSERT [dbo].[SiteError] ON 

INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (1, N'', N'''dpcoverletter'' has a SelectedValue which is invalid because it does not exist in the list of items.
Parameter name: value', N'   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UpdateQuotation.bindcoverletter() in d:\Jeet\Aykasln\Ayka Project\UpdateQuotation.aspx.cs:line 113', N'System.Web', N'::1', N'Chrome 88', N'Type : System.ArgumentOutOfRangeException Method Name : Void PerformDataBinding(System.Collections.IEnumerable) FileName :  Line No : ', N'http://localhost:23378/UpdateQuotation.aspx?no=5', N'1', CAST(N'2021-02-11T22:25:14.183' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (2, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddepartment() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1348', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-11T23:00:18.263' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (3, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddesignation() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1376', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-11T23:00:18.590' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (4, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddepartment() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1348', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-11T23:52:16.110' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (5, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddesignation() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1376', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-11T23:52:16.453' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (6, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddepartment() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1348', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-12T00:09:32.723' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (7, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddesignation() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1376', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-12T00:09:33.037' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (8, N'', N'''dpcoverletter'' has a SelectedValue which is invalid because it does not exist in the list of items.
Parameter name: value', N'   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UpdateQuotation.bindcoverletter() in d:\Jeet\Aykasln\Ayka Project\UpdateQuotation.aspx.cs:line 113', N'System.Web', N'::1', N'Chrome 88', N'Type : System.ArgumentOutOfRangeException Method Name : Void PerformDataBinding(System.Collections.IEnumerable) FileName :  Line No : ', N'http://localhost:23378/UpdateQuotation.aspx?no=5', N'1', CAST(N'2021-02-12T23:51:12.197' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (9, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Extra2''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.itemregister_aspx.__DataBinding__control71(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx:line 138
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
   at ItemRegister.bindDetail() in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx.cs:line 51', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/ItemRegister.aspx', N'1', CAST(N'2021-02-18T14:52:00.793' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Extra2''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.itemregister_aspx.__DataBinding__control71(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx:line 138
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
   at ItemRegister.bindDetail() in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx.cs:line 51', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/ItemRegister.aspx', N'1', CAST(N'2021-02-18T14:53:14.213' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (11, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Extra2''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.itemregister_aspx.__DataBinding__control71(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx:line 138
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
   at ItemRegister.bindDetail() in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx.cs:line 51', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/ItemRegister.aspx', N'1', CAST(N'2021-02-18T14:53:26.710' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (12, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Extra2''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.itemregister_aspx.__DataBinding__control71(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx:line 138
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
   at ItemRegister.bindDetail() in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx.cs:line 51', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/ItemRegister.aspx', N'', CAST(N'2021-02-18T14:56:19.350' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (13, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Extra2''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.itemregister_aspx.__DataBinding__control71(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx:line 138
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
   at ItemRegister.bindDetail() in d:\Jeet\Aykasln\Ayka Project\ItemRegister.aspx.cs:line 51', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/ItemRegister.aspx', N'', CAST(N'2021-02-18T14:56:19.593' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10009, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseDecimal(String value, NumberStyles options, NumberFormatInfo numfmt)
   at System.Convert.ToDecimal(String value)
   at QuotationEntry.binditemdata() in d:\Jeet\Aykasln\Ayka Project\QuotationEntry.aspx.cs:line 452', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/QuotationEntry.aspx?no=2', N'1', CAST(N'2021-02-26T15:11:45.760' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10010, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Title''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.updatequotation_aspx.__DataBinding__control346(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\UpdateQuotation.aspx:line 1134
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
   at UpdateQuotation.BindDetail() in d:\Jeet\Aykasln\Ayka Project\UpdateQuotation.aspx.cs:line 578', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UpdateQuotation.aspx?no=48', N'1', CAST(N'2021-02-26T16:50:45.777' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10011, N'', N'''dpcoverletter'' has a SelectedValue which is invalid because it does not exist in the list of items.
Parameter name: value', N'   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UpdateQuotation.bindcoverletter() in d:\Jeet\Aykasln\Ayka Project\UpdateQuotation.aspx.cs:line 119', N'System.Web', N'::1', N'Chrome 88', N'Type : System.ArgumentOutOfRangeException Method Name : Void PerformDataBinding(System.Collections.IEnumerable) FileName :  Line No : ', N'http://localhost:23378/UpdateQuotation.aspx?no=48', N'1', CAST(N'2021-02-26T16:50:45.810' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10012, N'', N'''dpcoverletter'' has a SelectedValue which is invalid because it does not exist in the list of items.
Parameter name: value', N'   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UpdateQuotation.bindcoverletter() in d:\Jeet\Aykasln\Ayka Project\UpdateQuotation.aspx.cs:line 119', N'System.Web', N'::1', N'Chrome 88', N'Type : System.ArgumentOutOfRangeException Method Name : Void PerformDataBinding(System.Collections.IEnumerable) FileName :  Line No : ', N'http://localhost:23378/UpdateQuotation.aspx?no=48', N'1', CAST(N'2021-02-26T16:54:01.610' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10013, N'', N'''dpcoverletter'' has a SelectedValue which is invalid because it does not exist in the list of items.
Parameter name: value', N'   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UpdateQuotation.bindcoverletter() in d:\Jeet\Aykasln\Ayka Project\UpdateQuotation.aspx.cs:line 129', N'System.Web', N'::1', N'Chrome 88', N'Type : System.ArgumentOutOfRangeException Method Name : Void PerformDataBinding(System.Collections.IEnumerable) FileName :  Line No : ', N'http://localhost:23378/UpdateQuotation.aspx?no=48', N'1', CAST(N'2021-02-26T16:55:34.573' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10014, N'', N'''dpcoverletter'' has a SelectedValue which is invalid because it does not exist in the list of items.
Parameter name: value', N'   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UpdateQuotation.bindcoverletter() in d:\Jeet\Aykasln\Ayka Project\UpdateQuotation.aspx.cs:line 129', N'System.Web', N'::1', N'Chrome 88', N'Type : System.ArgumentOutOfRangeException Method Name : Void PerformDataBinding(System.Collections.IEnumerable) FileName :  Line No : ', N'http://localhost:23378/UpdateQuotation.aspx?no=48', N'1', CAST(N'2021-02-26T17:14:20.077' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10015, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddepartment() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1359', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-26T18:15:42.323' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10016, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddesignation() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1387', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-26T18:15:42.340' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10017, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddepartment() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1359', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-26T18:16:06.007' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10018, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddesignation() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1387', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-26T18:16:06.020' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10019, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddepartment() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1359', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-26T18:20:29.620' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10020, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddesignation() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1387', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-26T18:20:29.627' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10021, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddepartment() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1371', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-26T18:25:34.793' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10022, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddesignation() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1399', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-26T18:25:34.810' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10023, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Discount''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.orderentry_aspx.__DataBinding__control187(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx:line 814
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
   at OrderEntry.binditemdata() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 384', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx?quoteno=52', N'1', CAST(N'2021-02-26T18:37:33.460' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10024, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Discount''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.orderentry_aspx.__DataBinding__control187(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx:line 814
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
   at OrderEntry.binditemdata() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 384', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx?quoteno=52', N'1', CAST(N'2021-02-26T18:37:34.340' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10025, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddepartment() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1430', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-27T12:52:03.263' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10026, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddesignation() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1458', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-27T12:52:03.290' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10027, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddepartment() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1431', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-27T13:14:26.513' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10028, N'', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at OrderEntry.binddesignation() in d:\Jeet\Aykasln\Ayka Project\OrderEntry.aspx.cs:line 1459', N'mscorlib', N'::1', N'Chrome 88', N'Type : System.FormatException Method Name : Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean) FileName :  Line No : ', N'http://localhost:23378/OrderEntry.aspx', N'1', CAST(N'2021-02-27T13:14:26.573' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (10029, N'', N'''dpcoverletter'' has a SelectedValue which is invalid because it does not exist in the list of items.
Parameter name: value', N'   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UpdateQuotation.bindcoverletter() in d:\Jeet\Aykasln\Ayka Project\UpdateQuotation.aspx.cs:line 136', N'System.Web', N'::1', N'Chrome 88', N'Type : System.ArgumentOutOfRangeException Method Name : Void PerformDataBinding(System.Collections.IEnumerable) FileName :  Line No : ', N'http://localhost:23378/UpdateQuotation.aspx?no=2', N'1', CAST(N'2021-02-27T15:04:03.930' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20009, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 60', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'', CAST(N'2021-03-02T17:36:33.237' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20010, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 60', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-02T17:43:23.970' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20011, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T11:26:00.290' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20012, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Estatus''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.employeeregister_aspx.__DataBinding__control92(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\EmployeeRegister.aspx:line 144
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
   at EmployeeRegister.bindDetail() in d:\Jeet\Aykasln\Ayka Project\EmployeeRegister.aspx.cs:line 50', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/EmployeeRegister.aspx', N'1', CAST(N'2021-03-03T12:15:08.287' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20013, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''Estatus''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.employeeregister_aspx.__DataBinding__control92(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\EmployeeRegister.aspx:line 144
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
   at EmployeeRegister.bindDetail() in d:\Jeet\Aykasln\Ayka Project\EmployeeRegister.aspx.cs:line 50', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/EmployeeRegister.aspx', N'1', CAST(N'2021-03-03T12:15:22.783' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20014, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:19:33.003' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20015, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:19:36.730' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20016, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:20:11.093' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20017, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:24:46.560' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20018, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:26:00.460' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20019, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:26:22.287' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20020, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:26:41.147' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20021, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:30:07.220' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20022, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:30:07.620' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20023, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:31:16.217' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20024, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:32:39.727' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20025, N'', N'Must declare the scalar variable "@no".', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteScalar()
   at UserPermission.bindReport() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 178', N'.Net SqlClient Data Provider', N'::1', N'Chrome 88', N'Type : System.Data.SqlClient.SqlException Method Name : Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action]) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:32:58.850' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20026, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:33:29.317' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20027, N'', N'Object reference not set to an instance of an object.', N'   at UserPermission.bindReport() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 177', N'App_Web_ei0xj3xo', N'::1', N'Chrome 88', N'Type : System.NullReferenceException Method Name : Void bindReport() FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:33:31.970' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20028, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:33:55.090' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20029, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''RoleName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName, String format)
   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindRole() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 133', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:34:14.147' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20030, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''PageName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.userpermission_aspx.__DataBinding__control33(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx:line 109
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
   at UserPermission.bindReport() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 183', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:39:25.787' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20031, N'', N'''ddlRole'' has a SelectedValue which is invalid because it does not exist in the list of items.
Parameter name: value', N'   at System.Web.UI.WebControls.ListControl.PerformDataBinding(IEnumerable dataSource)
   at System.Web.UI.WebControls.ListControl.OnDataBinding(EventArgs e)
   at System.Web.UI.WebControls.ListControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at UserPermission.bindReport() in d:\Jeet\Aykasln\Ayka Project\UserPermission.aspx.cs:line 184', N'System.Web', N'::1', N'Chrome 88', N'Type : System.ArgumentOutOfRangeException Method Name : Void PerformDataBinding(System.Collections.IEnumerable) FileName :  Line No : ', N'http://localhost:23378/UserPermission.aspx', N'1', CAST(N'2021-03-03T12:41:48.600' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20032, N'', N'There is no row at position 1.', N'   at System.Data.RBTree`1.GetNodeByIndex(Int32 userIndex)
   at System.Data.DataRowCollection.get_Item(Int32 index)
   at InquiryRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 121', N'System.Data', N'::1', N'Chrome 88', N'Type : System.IndexOutOfRangeException Method Name : NodePath GetNodeByIndex(Int32) FileName :  Line No : ', N'http://localhost:23378/InquiryRegistry.aspx', N'1', CAST(N'2021-03-05T17:42:36.723' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20033, N'', N'Column ''NextFolldate'' does not belong to table .', N'   at System.Data.DataRow.GetDataColumn(String columnName)
   at System.Data.DataRow.get_Item(String columnName)
   at InquiryRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 119', N'System.Data', N'::1', N'Chrome 88', N'Type : System.ArgumentException Method Name : System.Data.DataColumn GetDataColumn(System.String) FileName :  Line No : ', N'http://localhost:23378/InquiryRegistry.aspx', N'1', CAST(N'2021-03-05T18:09:33.410' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20034, N'', N'DataBinding: ''QuotationModel'' does not contain a property with the name ''ContactName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control80(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 184
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:36:01.770' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20035, N'', N'DataBinding: ''QuotationModel'' does not contain a property with the name ''ContactName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control80(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 184
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:36:08.310' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20036, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''NextFollowDate''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control115(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 219
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:37:40.323' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20037, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''NextFollowDate''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control115(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 219
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:37:44.950' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20038, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''NextFollowDate''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control115(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 219
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:38:32.833' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20039, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''NextFollowDate''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control115(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 219
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:38:35.730' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20040, N'', N'DataBinding: ''System.Data.DataRowView'' does not contain a property with the name ''NextFollowDate''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control115(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 219
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:40:05.597' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20041, N'', N'DataBinding: ''QuotationModel'' does not contain a property with the name ''ContactName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control80(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 184
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:44:24.187' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20042, N'', N'DataBinding: ''QuotationModel'' does not contain a property with the name ''ContactName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control80(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 184
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:45:20.310' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20043, N'', N'DataBinding: ''QuotationModel'' does not contain a property with the name ''ContactName''.', N'   at System.Web.UI.DataBinder.GetPropertyValue(Object container, String propName)
   at System.Web.UI.DataBinder.Eval(Object container, String[] expressionParts)
   at System.Web.UI.DataBinder.Eval(Object container, String expression)
   at System.Web.UI.TemplateControl.Eval(String expression)
   at ASP.quotationregistry_aspx.__DataBinding__control80(Object sender, EventArgs e) in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx:line 184
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
   at QuotationRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\QuotationRegistry.aspx.cs:line 164', N'System.Web', N'::1', N'Chrome 88', N'Type : System.Web.HttpException Method Name : System.Object GetPropertyValue(System.Object, System.String) FileName :  Line No : ', N'http://localhost:23378/QuotationRegistry.aspx', N'1', CAST(N'2021-03-05T18:47:05.693' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20044, N'', N'Object reference not set to an instance of an object.', N'   at InquiryRegistry.grddata_RowDataBound(Object sender, GridViewRowEventArgs e) in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 439
   at System.Web.UI.WebControls.GridView.OnRowDataBound(GridViewRowEventArgs e)
   at System.Web.UI.WebControls.GridView.CreateRow(Int32 rowIndex, Int32 dataSourceIndex, DataControlRowType rowType, DataControlRowState rowState, Boolean dataBind, Object dataItem, DataControlField[] fields, TableRowCollection rows, PagedDataSource pagedDataSource)
   at System.Web.UI.WebControls.GridView.CreateChildControls(IEnumerable dataSource, Boolean dataBinding)
   at System.Web.UI.WebControls.CompositeDataBoundControl.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.GridView.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.DataBoundControl.OnDataSourceViewSelectCallback(IEnumerable data)
   at System.Web.UI.DataSourceView.Select(DataSourceSelectArguments arguments, DataSourceViewSelectCallback callback)
   at System.Web.UI.WebControls.DataBoundControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at System.Web.UI.WebControls.GridView.DataBind()
   at InquiryRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 134', N'App_Web_5trkaav0', N'::1', N'Chrome 88', N'Type : System.NullReferenceException Method Name : Void grddata_RowDataBound(System.Object, System.Web.UI.WebControls.GridViewRowEventArgs) FileName :  Line No : ', N'http://localhost:23378/InquiryRegistry.aspx', N'1', CAST(N'2021-03-09T12:29:01.413' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20045, N'', N'Object reference not set to an instance of an object.', N'   at InquiryRegistry.grddata_RowDataBound(Object sender, GridViewRowEventArgs e) in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 439
   at System.Web.UI.WebControls.GridView.OnRowDataBound(GridViewRowEventArgs e)
   at System.Web.UI.WebControls.GridView.CreateRow(Int32 rowIndex, Int32 dataSourceIndex, DataControlRowType rowType, DataControlRowState rowState, Boolean dataBind, Object dataItem, DataControlField[] fields, TableRowCollection rows, PagedDataSource pagedDataSource)
   at System.Web.UI.WebControls.GridView.CreateChildControls(IEnumerable dataSource, Boolean dataBinding)
   at System.Web.UI.WebControls.CompositeDataBoundControl.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.GridView.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.DataBoundControl.OnDataSourceViewSelectCallback(IEnumerable data)
   at System.Web.UI.DataSourceView.Select(DataSourceSelectArguments arguments, DataSourceViewSelectCallback callback)
   at System.Web.UI.WebControls.DataBoundControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at System.Web.UI.WebControls.GridView.DataBind()
   at InquiryRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 134', N'App_Web_5trkaav0', N'::1', N'Chrome 88', N'Type : System.NullReferenceException Method Name : Void grddata_RowDataBound(System.Object, System.Web.UI.WebControls.GridViewRowEventArgs) FileName :  Line No : ', N'http://localhost:23378/InquiryRegistry.aspx', N'1', CAST(N'2021-03-09T12:29:08.747' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20046, N'', N'Object reference not set to an instance of an object.', N'   at InquiryRegistry.grddata_RowDataBound(Object sender, GridViewRowEventArgs e) in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 439
   at System.Web.UI.WebControls.GridView.OnRowDataBound(GridViewRowEventArgs e)
   at System.Web.UI.WebControls.GridView.CreateRow(Int32 rowIndex, Int32 dataSourceIndex, DataControlRowType rowType, DataControlRowState rowState, Boolean dataBind, Object dataItem, DataControlField[] fields, TableRowCollection rows, PagedDataSource pagedDataSource)
   at System.Web.UI.WebControls.GridView.CreateChildControls(IEnumerable dataSource, Boolean dataBinding)
   at System.Web.UI.WebControls.CompositeDataBoundControl.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.GridView.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.DataBoundControl.OnDataSourceViewSelectCallback(IEnumerable data)
   at System.Web.UI.DataSourceView.Select(DataSourceSelectArguments arguments, DataSourceViewSelectCallback callback)
   at System.Web.UI.WebControls.DataBoundControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at System.Web.UI.WebControls.GridView.DataBind()
   at InquiryRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 134', N'App_Web_p2fpvf12', N'::1', N'Chrome 88', N'Type : System.NullReferenceException Method Name : Void grddata_RowDataBound(System.Object, System.Web.UI.WebControls.GridViewRowEventArgs) FileName :  Line No : ', N'http://localhost:23378/InquiryRegistry.aspx', N'1', CAST(N'2021-03-09T12:29:56.877' AS DateTime))
INSERT [dbo].[SiteError] ([ErrorID], [ErrorCode], [ExceptionMessage], [ExceptionStackTrace], [Source], [IPAddress], [Browser], [Description], [WebURL], [ModifiedBY], [ModifiedON]) VALUES (20047, N'', N'Object reference not set to an instance of an object.', N'   at InquiryRegistry.grddata_RowDataBound(Object sender, GridViewRowEventArgs e) in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 439
   at System.Web.UI.WebControls.GridView.OnRowDataBound(GridViewRowEventArgs e)
   at System.Web.UI.WebControls.GridView.CreateRow(Int32 rowIndex, Int32 dataSourceIndex, DataControlRowType rowType, DataControlRowState rowState, Boolean dataBind, Object dataItem, DataControlField[] fields, TableRowCollection rows, PagedDataSource pagedDataSource)
   at System.Web.UI.WebControls.GridView.CreateChildControls(IEnumerable dataSource, Boolean dataBinding)
   at System.Web.UI.WebControls.CompositeDataBoundControl.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.GridView.PerformDataBinding(IEnumerable data)
   at System.Web.UI.WebControls.DataBoundControl.OnDataSourceViewSelectCallback(IEnumerable data)
   at System.Web.UI.DataSourceView.Select(DataSourceSelectArguments arguments, DataSourceViewSelectCallback callback)
   at System.Web.UI.WebControls.DataBoundControl.PerformSelect()
   at System.Web.UI.WebControls.BaseDataBoundControl.DataBind()
   at System.Web.UI.WebControls.GridView.DataBind()
   at InquiryRegistry.bindDetail() in d:\Jeet\Aykasln\Ayka Project\InquiryRegistry.aspx.cs:line 134', N'App_Web_p2fpvf12', N'::1', N'Chrome 88', N'Type : System.NullReferenceException Method Name : Void grddata_RowDataBound(System.Object, System.Web.UI.WebControls.GridViewRowEventArgs) FileName :  Line No : ', N'http://localhost:23378/InquiryRegistry.aspx', N'1', CAST(N'2021-03-09T12:30:02.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[SiteError] OFF
SET IDENTITY_INSERT [dbo].[SourceTable] ON 

INSERT [dbo].[SourceTable] ([id], [Source], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Call', N'1', N'Oct 10 2020  3:29PM', N'', N'', N'', N'', N'')
INSERT [dbo].[SourceTable] ([id], [Source], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'Email', N'', N'Nov 16 2020 10:17AM', N'', N'', N'', N'', N'')
INSERT [dbo].[SourceTable] ([id], [Source], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'Social Media', N'1', N'Nov 30 2020 11:45AM', N'', N'', N'', N'', N'')
INSERT [dbo].[SourceTable] ([id], [Source], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'Networking', N'1', N'Nov 30 2020 11:45AM', N'', N'', N'', N'', N'')
INSERT [dbo].[SourceTable] ([id], [Source], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, N'Cold Calling', N'1', N'Jan 20 2021  8:22PM', N'', N'', N'', N'', N'')
INSERT [dbo].[SourceTable] ([id], [Source], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, N'LlinkDin', N'1', N'Jan 20 2021  8:22PM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[SourceTable] OFF
SET IDENTITY_INSERT [dbo].[State_Master] ON 

INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'Gujarat', 1, N'', CAST(N'2020-09-24T18:37:05.840' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'Maharashtra', 1, N'1', CAST(N'2020-10-10T14:41:21.607' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'', 0, N'1', CAST(N'2020-10-10T14:41:24.310' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'Madhya Pradesh', 1, N'1', CAST(N'2020-11-25T19:41:01.190' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, N'Abc', 4, N'1', CAST(N'2020-11-30T11:22:03.947' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, N'Andhra Pradesh', 1, N'1', CAST(N'2021-01-09T14:12:48.083' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, N'Arunachal Pradesh', 1, N'1', CAST(N'2021-01-09T14:13:01.210' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, N'Assam', 1, N'1', CAST(N'2021-01-09T14:13:12.413' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, N'Bihar', 1, N'1', CAST(N'2021-01-09T14:13:22.803' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, N'Chhattisgarh', 1, N'1', CAST(N'2021-01-09T14:14:44.803' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (11, N'Goa', 1, N'1', CAST(N'2021-01-09T14:14:56.210' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (12, N'Haryana', 1, N'1', CAST(N'2021-01-09T14:15:24.430' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (13, N'Himachal Pradesh', 1, N'1', CAST(N'2021-01-09T14:15:34.180' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (14, N'Jharkhand', 1, N'1', CAST(N'2021-01-09T14:15:47.930' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (15, N'Karnataka', 1, N'1', CAST(N'2021-01-09T14:15:57.057' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (16, N'Kerala', 1, N'1', CAST(N'2021-01-09T14:16:06.760' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (17, N'Manipur', 1, N'1', CAST(N'2021-01-09T14:16:44.587' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (18, N'Meghalaya', 1, N'1', CAST(N'2021-01-09T14:16:57.227' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (19, N'Mizoram', 1, N'1', CAST(N'2021-01-09T14:17:06.430' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (20, N'Nagaland', 1, N'1', CAST(N'2021-01-09T14:17:18.010' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (21, N'Odisha', 1, N'1', CAST(N'2021-01-09T14:17:31.527' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (22, N'Punjab', 1, N'1', CAST(N'2021-01-09T14:17:47.497' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (23, N'Rajasthan', 1, N'1', CAST(N'2021-01-09T14:18:05.183' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (24, N'Sikkim', 1, N'1', CAST(N'2021-01-09T14:18:15.637' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (25, N'Tamil Nadu', 1, N'1', CAST(N'2021-01-09T14:18:28.357' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (26, N'Telangana', 1, N'1', CAST(N'2021-01-09T14:18:36.247' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (27, N'Tripura', 1, N'1', CAST(N'2021-01-09T14:18:46.887' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (28, N'Uttar Pradesh', 1, N'1', CAST(N'2021-01-09T14:18:56.700' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (29, N'Uttarakhand', 1, N'1', CAST(N'2021-01-09T14:19:09.653' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (30, N'West Bengal', 1, N'1', CAST(N'2021-01-09T14:19:20.060' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (31, N'Andaman and Nicobar Islands', 1, N'1', CAST(N'2021-01-09T14:19:46.013' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (32, N'Chandigarh', 1, N'1', CAST(N'2021-01-09T14:19:57.340' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (33, N'Dadra and Nagar Haveli and Daman and Diu', 1, N'1', CAST(N'2021-01-09T14:20:35.200' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (34, N'Delhi', 1, N'1', CAST(N'2021-01-09T14:20:42.920' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (35, N'Jammu Kashmir', 1, N'1', CAST(N'2021-01-09T14:20:59.467' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (36, N'Ladakh', 1, N'1', CAST(N'2021-01-09T14:21:07.700' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (37, N'Lakshwadeep', 1, N'1', CAST(N'2021-01-09T14:21:21.123' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[State_Master] ([id], [State], [Countryname], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (38, N'Puducherry', 1, N'1', CAST(N'2021-01-09T14:21:31.780' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[State_Master] OFF
SET IDENTITY_INSERT [dbo].[StatusTable] ON 

INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, N'Not contacted yet', N'1', CAST(N'2020-11-30T11:47:09.240' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, N'Contacted: Waiting answer', N'1', CAST(N'2020-11-30T11:47:22.257' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, N'Contacted: Ready for a meeting', N'1', CAST(N'2020-11-30T11:47:27.647' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, N'Site Survey with Presentation', N'1', CAST(N'2020-11-30T11:47:32.350' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, N'Preliminary Proposal Submitted', N'1', CAST(N'2020-11-30T11:47:36.523' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (11, N'Letter of Intent', N'1', CAST(N'2020-11-30T11:47:40.883' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (12, N'Meter Installation', N'1', CAST(N'2020-11-30T11:47:44.600' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (13, N'Final Proposal', N'1', CAST(N'2020-11-30T11:47:48.023' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (14, N'Contract with Customer', N'1', CAST(N'2020-11-30T11:47:51.803' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (15, N'Design and Installation', N'1', CAST(N'2020-11-30T11:47:56.350' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (16, N'Commissioning and Validation of system', N'1', CAST(N'2020-11-30T11:48:01.790' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (17, N'Turned into customer', N'1', CAST(N'2020-11-30T11:48:06.913' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[StatusTable] ([id], [Status], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (18, N'Contacted: Not Interested', N'1', CAST(N'2020-11-30T11:48:10.633' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[StatusTable] OFF
SET IDENTITY_INSERT [dbo].[tbl_BOM_Master] ON 

INSERT [dbo].[tbl_BOM_Master] ([Id], [ItemNo], [Name], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 5, N'Uniqtech BOM', N'1', N'Feb 12 2021 11:16AM', N'', N'', N'')
INSERT [dbo].[tbl_BOM_Master] ([Id], [ItemNo], [Name], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 6, N'Uniqtech BOM', N'1', N'Feb 12 2021 11:22AM', N'', N'', N'')
INSERT [dbo].[tbl_BOM_Master] ([Id], [ItemNo], [Name], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, 7, N'Uniqtech BOMData', N'1', N'Feb 12 2021 11:26AM', N'', N'', N'')
INSERT [dbo].[tbl_BOM_Master] ([Id], [ItemNo], [Name], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, 17, N'Solar Thermal 1 Panel', N'1', N'Feb 13 2021  8:05AM', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_BOM_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Company_Contact_Master] ON 

INSERT [dbo].[tbl_Company_Contact_Master] ([id], [Companyno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 7, N'Mikir parekh', N'mikir@uniqtechsolutions.com', N'123', N'8320604985', N'', 1, 1, N'1', CAST(N'2020-10-10T13:23:50.790' AS DateTime), N'05/10/2020', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Company_Contact_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Company_Master] ON 

INSERT [dbo].[tbl_Company_Master] ([id], [Companyno], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BusinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 7, N'Uniqtech Solutions', N'', N'Testing Address', N'1', N'1', N'Vadodara', N'1', N'388001', N'123456', N'abc@gmail.com', 16, 22, N'', N'Active', N'123456', N'123', N'123', N'123', N'1', CAST(N'2020-10-10T13:23:17.413' AS DateTime), N'543VB4TMIGQJF2IDVD3G.png', 0xFFD8FFE000104A46494600010100000100010000FFDB00430001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101FFDB00430101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101FFC0001108036F034803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FEFC89393C9EA7B9F5A4C9F53F99A1BA9FA9FE749401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5AFA1F27D4FE66BE775EA3EA3F9D7D0F400B93EA7F335E79E3D271A5727ADEF73FF4E95E855E79E3DE9A57D6F7F95A50079DE4FA9FCCD28272393D4773EB4DA55EA3EA3F9D007D1193EA7F33464FA9FCCD251401E7BE3D271A5727ADEF73FF004E95E7593EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5A2917A8FA8FE745007A29F1E8C9FF008951EA7FE5F47AFF00D7A527FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF2257A1D7CF0DD4FD4FF003A00F44FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3E735E8BE02E9AAFD6CBF95DD001FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC895E76DD4FD4FF003A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C895E875F3C3753F53FCE803D13FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BAF43A2803CF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF22579DB753F53FCE92803D1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF002257A1D7CF0DD4FD4FF3A00F44FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F3E735E8BE02E9AAFD6CBF95DD001FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC895E875F3C3753F53FCE803D13FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BAF43A2803CF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF2257A1D7CF0DD4FD4FF003A00F44FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3E735E8BE02E9AAFD6CBF95DD001FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC895E76DD4FD4FF003A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C895E875F3C3753F53FCE803D13FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BAF43A2803CF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF22579DB753F53FCE92803D1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF002257A1D7CF0DD4FD4FF3A00F44FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F3E735E8BE02E9AAFD6CBF95DD001FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC895E875F3C3753F53FCE803D13FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BAF43A2803CF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF2257A1D7CF0DD4FD4FF003A00F44FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3E735E8BE02E9AAFD6CBF95DD001FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC895E76DD4FD4FF003A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C895E875F3C3753F53FCE803D13FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BAF43A2803CF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF22579DB753F53FCE92803D1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D1E02E9AAFD6CBF95DD7A1D0079E8F010C8FF89A9EA3FE5C87AFFD7DD15E86BD47D47F3A2803E7820E4F07A9EC7D69307D0FE46BE886EA7EA7F9D250079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FF00B7BAE67E34FED1DF017F672F0D5CF8C3E3B7C5FF0087BF09FC396B14B33EA5E39F14E91E1F4956152D22D9C37F7515CDF4CAA09F22CA19E66FE18CD7F3A9FB5DFF00C1D59FF04ABF83ECFA6FC3FF0019F8FBF68AF10E97F6C4163F09BC2720D1EE2693CA5831E29F15DCF87B457B62F1132CD693DECD1467CC4B694954600FEA528AFF00374F8E7FF07987C60D60DC59FECEDFB22F827C116DFBD8A2D6BE2978E756F1CEA522F222BB8F4BF0F69BE10B0B09F1866B59AEF58850E57CE94609FCA0F8B3FF000737FF00C15BBE2789A2D3BE38E83F0C2D5DD8C31FC38F01F87349B8823258AC7F6DD46D755B894A86DA2490B390064E79A00FF5636E0B678E4F5E3F9D40D736E9F7EE214FF7A58D7F9B0AFF001B1F883FF0570FF829AFC50698F8C3F6E5FDA52E56E0933C5A37C52F1378520901EA8D6FE15BDD1A0F2CF78C46232382B8E2BE57F12FED2BFB44F8CCC87C5FF1E3E31F8A4CB9F34F887E25F8CB59F333D77FF686B371BF3DF766803FDCDBC077F62A355CDEDA0E6CBADCC23FE7EFD5EBD0BFB474FF00F9FEB3FF00C0983FF8BAFF00039BCF15789F51CFDBFC47AEDEEECEEFB5EAD7F71BB24139F36E1F3920139EE01ED59BFDA3A87FCFF5E7FE04CFFF00C5D007FBEC7F68E9FF00F3FD67FF0081507FF175F3C9BFB0C9FF004DB4EA7FE5E61F5FF7EBFC2B7FB4750FF9FEBCFF00C099FF00F8BA4FB7DF7FCFEDDFFE04CDFF00C5D007FBA97DBEC7FE7F6D3FF0261FFE2EBD13C05A85801AAE6FACC7365D6E61FF00A7BFF6EBFC1A7EDF7DFF003FB77FF81337FF001747F685F8E97D783FEDE66FFE2E803FDF67FB474FFF009FEB3FFC0983FF008BA3FB474FFF009FEB3FFC0A83FF008BAFF027FED1D43FE7FAF3FF000267FF00E2E8FED1D43FE7FAF3FF000267FF00E2E803FDD48DFD864FFA6DA753FF002F30FAFF00BF49F6FB1FF9FDB4FF00C0987FF8BAFF000ADFB7DF7FCFEDDFFE04CDFF00C5D1F6FBEFF9FDBBFF00C099BFF8BA00FF00796F016A16006AB9BEB31CD975B987FE9EFF00DBAF43FED1D3FF00E7FACFFF000260FF00E2EBFC09BFB42FC74BEBC1FF006F337FF174BFDA3A87FCFF005E7FE04CFF00FC5D007FBEC7F68E9FFF003FD67FF81507FF00175F3C9BFB0C9FF4DB4EA7FE5E61F5FF007EBFC2B7FB4750FF009FEBCFFC099FFF008BA4FB7DF7FCFEDDFF00E04CDFFC5D007FBA97DBEC7FE7F6D3FF000261FF00E2EBD13C05A85801AAE6FACC7365D6E61FFA7BFF006EBFC1A7EDF7DFF3FB77FF0081337FF1747F685F8E97D783FEDE66FF00E2E803FDF67FB474FF00F9FEB3FF00C0983FF8BA3FB474FF00F9FEB3FF00C0A83FF8BAFF00027FED1D43FE7FAF3FF0267FFE2E8FED1D43FE7FAF3FF0267FFE2E803FDD48DFD864FF00A6DA753FF2F30FAFFBF49F6FB1FF009FDB4FFC0987FF008BAFF0ADFB7DF7FCFEDDFF00E04CDFFC5D1F6FBEFF009FDBBFFC099BFF008BA00FF796F016A16006AB9BEB31CD975B987FE9EFFDBAF43FED1D3FFE7FACFF00F0260FFE2EBFC09BFB42FC74BEBC1FF6F337FF00174BFDA3A87FCFF5E7FE04CFFF00C5D007FBEC7F68E9FF00F3FD67FF0081507FF175F3C9BFB0C9FF004DB4EA7FE5E61F5FF7EBFC2B7FB4750FF9FEBCFF00C099FF00F8BA4FB7DF7FCFEDDFFE04CDFF00C5D007FBA97DBEC7FE7F6D3FF0261FFE2EBD13C05A85801AAE6FACC7365D6E61FF00A7BFF6EBFC1A7EDF7DFF003FB77FF81337FF001747F685F8E97D783FEDE66FFE2E803FDF67FB474FFF009FEB3FFC0983FF008BA3FB474FFF009FEB3FFC0A83FF008BAFF027FED1D43FE7FAF3FF000267FF00E2E8FED1D43FE7FAF3FF000267FF00E2E803FDD48DFD864FFA6DA753FF002F30FAFF00BF49F6FB1FF9FDB4FF00C0987FF8BAFF000ADFB7DF7FCFEDDFFE04CDFF00C5D1F6FBEFF9FDBBFF00C099BFF8BA00FF00796F016A16006AB9BEB31CD975B987FE9EFF00DBAF43FED1D3FF00E7FACFFF000260FF00E2EBFC09BFB42FC74BEBC1FF006F337FF174BFDA3A87FCFF005E7FE04CFF00FC5D007FBEC7F68E9FFF003FD67FF81507FF00175F3C9BFB0C9FF4DB4EA7FE5E61F5FF007EBFC2B7FB4750FF009FEBCFFC099FFF008BA4FB7DF7FCFEDDFF00E04CDFFC5D007FBA97DBEC7FE7F6D3FF000261FF00E2EBD13C05A85801AAE6FACC7365D6E61FFA7BFF006EBFC1A7EDF7DFF3FB77FF0081337FF1747F685F8E97D783FEDE66FF00E2E803FDF67FB474FF00F9FEB3FF00C0983FF8BA3FB474FF00F9FEB3FF00C0A83FF8BAFF00027FED1D43FE7FAF3FF0267FFE2E8FED1D43FE7FAF3FF0267FFE2E803FDD48DFD864FF00A6DA753FF2F30FAFFBF40BEB26202DE5AB13D00B88893F401F35FE159F6FBEFF009FDBBFFC099BFF008BADCF0FF8DBC65E13D460D5FC2DE2CF12F86F55B69125B7D4B42D7353D26FE096360D1C90DDD85D413C7246C0323A48195802A4119A00FF00786F017DDD50F626C883EA3177C8F5AF43AFF3B6FF008365BFE0B59FB467C54F8F7A37FC13FF00F6A4F889E20F8B5A2F8BBC2FE26D47E07F8DBC63A8CFACF8C742F10F847469BC47A9784B54D7AF9E4D4358D2352F0CE93ABDED8DC6A5757379677DA6C7691BCB1DF2883FBC2C9F53F99A00FA1EBE796072783D4F63EB429391C9EA3B9F5AFA1A803E78C1F43F91AF44F010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2803D0E8AF9E327D4FE669549C8E4F51DCFAD000C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74AF3BC9F53F99A00FA1EBE796072783D4F63EB429391C9EA3B9F5AFA1A803E78C1F43F91AF44F010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2803D0E8AF9E327D4FE669549C8E4F51DCFAD000C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF006F75E875F027EDF5FB74FECB9FB0A7C3CB1F891FB4C7C58F0F7C3DD1C8D4174AD2AE2E05E78ABC4B7291C0E2CFC37E19B332EAFABCEDE5B216B6B636F13B289E68B7A93FC387EDB7FF0007837C4FF11DFEB5E12FD85BE0B699E01F0DC53CF6B61F157E2FF97AFF008C353811D923BFD3FC13A7CDFD81E1F49972E90EA3A97886E0A98DD8DA4A1E1001FE910CE8809775503925982803D492462BE717BDB35660D776CA4139DD3C43BFBBD7F8E2FC71FF0082C07FC14B3F685BDBCB9F88BFB62FC6C1697BBD64D13C1DE30D47C01A08B67E3EC674BF064BA25BDC5A8000F2EF05C96DA0C8CEC335F066BBF11BE20F8A2696E7C4BE3AF187882E2762F34FAD789759D52595C92C5A492F6F6767624924B124939EB401FEE5AB7768FC25D5BB9F459A36FE4C6BD37C02415D53041C9B2C63FEDEEBFC27BC2DF1A7E30F81AEA1BEF05FC55F88DE12BDB721A0BBF0D78DBC49A1DCC2CA77298A7D3752B696321BE605181079EB5FA61F003FE0BC1FF0552FD9DAEB4F3E1AFDADFE23F8DB47B06423C39F173516F89DA55C226008E69BC59FDA1ABAA6C1B310EA710DB8C82550A807FB3A515FC06FEC21FF00077EF80FC597DA1F80BF6F3F83F2FC3CBDBA6B7B16F8D3F0A1EE758F09ACCDE5C5F6BF14F816F99F5AD1EDDB0F35CEA1A0EA3ADA095D51745B4B656993FB18F82FF1C7E12FED0FE00D0BE29FC12F885E18F897E00F1142B3E95E26F09EAD6DAAE9F31C2B496D33DBC8CF697B6FB82DCD8DD243756EE76CD0A371401EA8C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74AF3BC9F53F99A00FA1EBE796072783D4F63EB429391C9EA3B9F5AFA1A803E78C1F43F91AF44F010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2803D0E8AF9E327D4FE669549C8E4F51DCFAD000C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99A00FA217A8FA8FE7457CF009C8E4F51DCFAD1401F43B753F53FCE92BCF4F8F464FF00C4A8F53FF2FA3D7FEBD293FE13D1FF0040A3FF0081A3FF00912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00F43AF3CF1EF4D2BEB7BFCAD28FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F201E734ABD47D47F3AF44FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC97401E874579E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44A003C7BD34AFADEFF2B4AF379248E18DE596448A28D59E49246548E34504B3BBB10AAAA012CCC4000124E2BF333FE0A5DFF05B6FD873FE09EDE1F683E3278EC6BDF17D6CEEAE3C2FF02FE1F490F89BC77AE492AA85975A309874EF04E92258510EA7E229EDCDC069869D697F35B4B057F9E37FC145FF00E0E27FDBBFF6ECBBD73C1FE1AF185E7ECE9F016FA4B8B783E1A7C30BF974DD5B5BD39F74689E35F1B40B06BFAD79B0B1171A5DA5C69DA1485F1369F72F14532807F773FB75FF00C1C03FF04E9FD8523D5F41F107C4F3F19BE2C69C66B78BE14FC16FB178AF5887508D5F6C5E21D7CDE5B785BC376D14C112ECDF6ACFA9468ECF67A55FC914908FE423F6E2FF0083B87FE0A0FF00B459D6FC2FFB395B787BF64CF005F19ADAD6F7C2891F893E27BD8392AA66F18EAF6E6D74DBC9222CAF3E89A4594D0B10F69710CA8B20FE52679E6B99A5B8B99A5B8B89A479669E691E59A596462CF2492396777762599D98B33124924D45401EA3F14FE37FC65F8E3E24BEF18FC66F8ABF10FE2AF8AB5397CEBFF10FC42F18EBFE2FD5EE9F2C479B7FAEDFDF5C154DC44681C246A76A2AA802BCBA8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803F787FE0DAAF87FAD78F3FE0B11FB2ECBA54737D8BC110FC4FF001D788AF625765D3F47D23E17F8B2D22927D9CAC37DAD6A5A468C18FC9E6EA7107F949AFF00587AFE2DFF00E0CE5FF827AEA9A5F817E347EDE5E35D3A4D266F883027C25F8457579661A6BBF0969BA92DFF008D359B10D2C320B1D475FD374ED304FB5A29E5D126589CB43281FDC6FF00C2043FE82A7FF0087FF25D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44A00F43AF3CF1EF4D2BEB7BFCAD28FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F201E734ABD47D47F3AF44FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C97401E874579E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D7F3B3FF0005C5FF0082FA7C1CFF008259F8267F869F0F9F48F8A3FB60F8BF4BB86F0AFC3F8A74BAD1FE1ED9CB10587C61F11E4B7995ECED83481B47D05586A1AD4D1B129058C53DCAF9F7FC1743FE0E03F00FFC1367E1D6A3F08FE10B68DE2DFDB1BC71A15C1F0B787BED49AB69BF0BF4DBD496DA0F1C78D608E1586399240F2683A05C4C973A9CF0F9F34234F8E477FF002B9F8AFF00163E23FC72F887E2BF8AFF0016FC63AE78F7E21F8DF58BBD77C51E2BF115EC97DAA6ADA9DECAD34D34D2C876C71A96D96F6D02C56D6B02A416F1450C688A01E95FB51FED69FB427ED9BF163C43F1A7F68FF89FE27F89BE3BF10DDCD70D79AF6A3713E9FA35A49233C1A2F86F49DFFD9FA0E8962ADE559E99A65BDBDB4483714695A491FE72A28A0028A28A0028A28A002BF46BFE09D9FF000542FDA9BFE09ADF1574FF001DFC0DF1AEA13F83AEEF6DCF8F3E116B77B7575F0FFC77A5AB8F3E0D4347694C163AB24658E9FAFE9E906A7652E009A5B679EDA6FCE5A2803FDACFFE096BFF000557FD9C3FE0AA3F026CBE297C1BD5D346F1CE890DAD8FC55F845ACDCC0BE2EF87DE216890CD1CF6CAFBB52F0FDEC9BA4D17C4168AD677B0111C86DEFA1B9B587F4F6BFC353F619FDBA3F682FF00827BFC7FF08FED09FB3CF8BEEFC3DE24F0F5F5B8D7342925924F0D78EBC36678DB55F0978B34B0E20D4748D56DD5E062C16EACA568EFB4F9EDAF6DE09D3FD6E3FE097BFF00057BF80BFF00053DF809A7FC4FF85E6D74AF883A05BD969FF177E14DE6AAABE23F00789A4873207B692D565BFF000E6A6E924FA16BB6E24B3BC84496CF2477F69796D0007E9878F7A695F5BDFE5695E755E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E803CED7A8FA8FE75F43D79E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF00225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BA00F43A2BCF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF00225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA00F3B5EA3EA3F9D15E8A3C04323FE26A7A8FF009721EBFF005F7450079D3753F53FCE929C41C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FFB7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FF00B7BA00F43A28AF933F6D1FDB63F67AFD81FE06789BE3F7ED1FE39D3BC1DE0ED0626874FB392685FC41E2ED7648A492C3C33E14D20C8B75ACEB7A8344DE55B5B232C1024D7976F05A5BCF34601278DBC6DE0EF871E17D77C71E3FF14E81E0AF0778674FBAD5BC43E28F146AD63A1E83A2E99671B4D737DA96A9A8CD6F67676D0C6ACCF2CF322003AE6BF856FF0082BC7FC1D43AAEA171E28F801FF04D9BE8EC34968EF743F12FED33A8586FD4EEC3096D2F13E14E9B7998AC22752EB6FE2ED4ADA5BBD8CB73A3DADA4FE45F47F86FFF000577FF0082E77ED19FF053AF16EA9E10B39EF3E13FECB7A46A8C7C21F08746BE984FAFC36936EB4F107C47D46178D75FD6679145D43A72C71E8FA30F260B582E2E619751BAFC2FA00E9FC65E35F177C44F136B1E33F1DF8975BF17F8B3C417B36A3ADF88BC47A95DEAFAC6A97B70E649AE6F6FEF659AE2791DD8925DC819C2800015CC514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450015FA37FF0004BAFF008275FC52FF0082967ED51E10F815E05D3F53B5F085ACD6FE22F8BDE3CB7B4924D37C05F0F6CEF6DE2D5753BBBB28D6B16A37E668F4BD0AD256F32F753BA8552368A39D93C2FF00638FD8EBE38FEDD1F1DBC23FB3FF00C04F0B5D788BC5FE27BA8CDEDE98A61A27857428E58D752F137896FE38DE3D3B47D3227F3269A4C34D218EDADD64B89A346FF59BFF00825F7FC1333E0AFF00C1317F678D23E10FC34B58F5AF1AEB1058EABF16BE275E59C306B9E3FF0016A5BFFA4DC48C81A4B3D074E9A59EDFC3FA3F9D2A5859106496E2F26B9B99803F45BF650F831E00FD9DBE0F783BE077C2CD12DFC3BF0FBE17784FC35E0EF0B6936CBB52DF4CD1ED2E2DD2595892F3DE5E4AB25EDF5D4ACF3DDDEDC4F733BBCD2BBB7D315E79E02040D57231CD975FFB7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FF00B7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FFB7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FF00B7BA00F43AFE6CFF00E0BD7FF05ECF875FF04C4F875A9FC1CF839A9E81E39FDB3FC71A0CE3C35E19F3E1D4B4FF0084FA7EA30C905AF8E3C756904A5A3B84CB5CF87BC3F72D0CDAACD12CF3AAD82BBC8BFF0005EDFF0082F4FC3DFF008261FC37D4BE0FFC1DBDD0BC75FB66F8E74529E19F0D35C477BA5FC2BD2F52468D3C71E3782DE4322DC4709927F0EE81234336A774B0CF7063D3D5DE4FF29EF8B3F163E227C73F88DE2FF8B5F163C59AC78E3E21F8EF5ABBD7FC53E27D76EE4BCD4B54D4AF642F2492CB2B3158A35DB0DB5BC7B61B6B78E2820448A345000DF8ABF15BE21FC6FF00885E2AF8ABF15BC59AC78DFC7FE35D5EEB5CF12F89B5CBA7BBD4352D42F24324B23BB9DB1429911DBDB42B1DBDB40A90C11C7122A8F3DA28A0028A28A0028A28A0028A28A0028A28A002BEBDFD893F6DEF8FBFB017C76F0CFC7CFD9FBC552E87E23D16E228B5BD0EE9A69FC31E37F0F34C8FA8785FC57A5A4B126A1A4EA11068C90D1DDD9CA52EEC2E2DAEE28A65F90A8A00FF0067FF00F8243FFC150BE007FC14EFE054BF133E166AB67A2FC40D16DF46B4F8ADF08AFB52B79BC53E00F10490DCF99E6DBFEEAE2FFC39A84AB2BE87AFC76E96B7D12490B795796D736F17EB8D7F869FEC33FB73FED01FF04F6F8FDE16FDA17F678F15CFA078A3419E28759D16792793C37E36F0EB4F1C9A8785BC55A6C52C49A8E91A8226D6562B35ACDE5DD5A4B0DCC51C8BFEBBFF00F04A3FF82ADFC00FF82AA7ECFDA6FC50F861A85AF87FE2568367A7597C60F8417B7F04DE22F00F89A5B71F68D91E526D4BC337F711CEFA16BA904715E5BAF973C76F7914D6F1807EA6D7CF0DD4FD4FF3AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF6F7401E8745145007CF0DD4FD4FF3A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF006F75E87400ABD47D47F3A285EA3EA3F9D14003753F53FCE9295BA9FA9FE749401E79E3D240D2B071CDEF4FFB74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FF00B74AF43AFCE9FF008298FEDE5F023FE09DFF00B3EEA5FB407C76D65E0D334B8B52B3F0AF84B4D781BC4DE3FF0015C9040DA5F85FC3B6D3BA235CDE4CAA6EEF24FF0046D36C84D7B71B92211B807927FC1417FE0A19FB3EFF00C137FE046AFF001BFE3C78815095B9B1F02780B4EBA8078B7E23F89E3B769ADF40F0F59C85DF66E311D4F559216B2D22D6417174C59A1866FF00293FF8291FFC14BFF687FF008298FC72D5BE2C7C66D6E6B1F0C59DF5FC5F0D7E15E997970DE10F873E1C9E6FF45D374CB672AB79A9B5B476EBAAEBB731FDBB53B88CC8E638BCB823C4FF00828AFF00C1443E3C7FC1493F682D7FE38FC69D6678ECBCEB9D3FE1EFC3FB3BBB87F0C7C39F090B8792C741D0ED646F2FCDD8CB2EA9A93462EB54BD325CDC31FDDA27C0F40051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140057D37FB227EC89F1C7F6DEF8E5E10FD9FF00E007846EFC55E37F165EC513C8A92268FE1CD204A8BA87893C4BA8846874AD0F4A85CCF7977391C288A159679238D8FD913F643F8E9FB6FF00C71F087ECFFF00B3F7842EFC59E38F16DF430BCA15E1D13C37A4F9A8BA87897C4FAA6C6B7D2341D26066B9BEBDB823089E54292CEF1C4FFEADBFF0498FF824DFC10FF8259FC0F83C1BE10B7D3BC5DF1A7C5F6D6577F187E314F608BAB789B558E2463A1E8934E9F6AD2FC17A54E641A5E96862372E4EA1A8AC976EA2000F70FF008240FF00C1217E067FC1277E02C3E08F064563E30F8D3E32B3D36F3E33FC639F4F48355F166B36D1B48348D20CA65B9D2FC21A45C4F3A693A62CAA663FE9D7AAD752623FD78A28A00F3CF1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E5272393D4773EB5F4357CF0BD47D47F3AFA1E800AF3CF1E920695838E6F7A7FDBA57A1D79E78F7A695F5BDFE569401E7793EA7F334AA4E4727A8EE7D69B4ABD47D47F3A00FA1E8A28A00F3CF1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E5272393D4773EB5F4357CF0BD47D47F3AFA1E800AFE663FE0E02FF82E8FC38FF826CF8057E11FC25BED23C77FB6178C34ABC4D07C2F1DD4571A77C2ED335281122F1B78D96232159A2085F42F0FB04B9D4EE5A39E630584724AFB9FF05EBFF82F6FC39FF8261FC3CBBF83DF082F74BF1DFED95E3CD22E17C37E1D89E0BED27E1469773118D3C6BE3A0B2FEEAE4170DE1EF0F956B9D4EE10DC5CA43610BC927F94E7C57F8AFF00117E38FC45F17FC59F8B3E2ED6FC77F10FC79AE5FF0088FC55E2AF10DF4FA86A9AB6ABA8CEF717134D3CEEC522567F2ADADA2D96D696E915B5B451411471A8037E2A7C53F881F1B7E2278BFE2BFC53F14EADE34F881E3BD6EF3C41E28F136B7772DE6A3AA6A77D219259659656629146BB60B5B78F6C16B6D1456D6F1C70C488BE7F45140051451400514514005145140051451400514514005145140057D7DFB107EDBBF1DFF601F8F9E17FDA0BE01789A7D17C49A2482D35CD1269666F0EF8DBC313CD149A9F853C51A7A3AC5A8693A82C2876C8A65B4BA8E0BEB478AEADE2917E41A2803FD8F7FE097DFF000540F815FF00053FF809A5FC54F8617B0F87FC7BA35BD958FC59F8497F7F0CFE23F87FE2574DB3C64288DF52F0E5FCB1CB3E85AEC50A457B68552E22B4BE8EE6D21FDB3AFF000CCFD883F6DCF8EFFB017C7DF097ED03F013C5177A2788740BA4875DD0649E63E1BF1C786A675FED4F0AF8AF4C575B7D4F49D4211F28991A6B1BB4B6D46C6482F6D60993FD78FF00E0941FF055EFD9FF00FE0AADFB3F69DF147E185FC3E1DF893A05BDAE9BF17BE106A7776E7C4BE04F12889567923856467D4BC2FA9CA1AE741D7215315CDB3AC174B6DA841736B1007EA8579E78F49034AC1C737BD3FEDD2BD0EBCF3C7BD34AFADEFF002B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF2B4AF3AA0070272393D4773EB4522F51F51FCE8A00F453E3D193FF12A3D4FFCBE8F5FFAF4A4FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44AF43AF9CAEAE20B382E2EEEA68ADEDADA296E2E2E26758E1820855A4966964721638E34567776215541248028031FE3FFED6DF0BBF663F83BE3EF8EDF19753B1F087C39F871E1FBEF10F88B5ABFD440C41670B3C363636EB6867D4355D4A711D8E97A6DA4735E5FDF4F05ADB4324B22A9FF21CFF0082BFFF00C157BE31FF00C1567F695D4FE26F8C2F352D03E1078467D4745F821F0ABED6E74AF06785A4B9C9D42EAD637FB2DC78AFC40915BDD6BFAA1579A468EDEC2397EC5636B1A7E92FFC1C8FFF000588BEFDB5FE395DFECB5F023C5529FD973E096AB358EAD7BA55C32D9FC5AF897613CF6FA9F886E258F6FDABC35E1F61FD99E1CB525A19EE12FB5893CC37164969FCB950014514500145145001451450014514500145145001451450014514A013C0049F403340094549E54BFF003CE4FF00BE1BFC28F265FF009E527FDF0DFE14011D1527932FFCF293FEF86FF0A3C997FE7949FF007C37F8500474549E4CBFF3CA4FFBE1BFC28F265FF9E527FDF0DFE14011D1527932FF00CF293FEF86FF000A3C997FE7949FF7C37F8500474549E4CBFF003CA4FF00BE1BFC28F265FF009E527FDF0DFE14011D1527932FFCF293FEF86FF0A3C997FE7949FF007C37F8500474549E4CBFF3CA4FFBE1BFC28F265FF9E527FDF0DFE14011D1527932FF00CF293FEF86FF000A3C997FE7949FF7C37F8500474549E4CBFF003CA4FF00BE1BFC28F265FF009E527FDF0DFE14011D1527932FFCF293FEF86FF0A3C997FE7949FF007C37F8500474549E4CBFF3CA4FFBE1BFC28F265FF9E527FDF0DFE14011D1527932FF00CF293FEF86FF000A3C997FE7949FF7C37F8500474549E4CBFF003CA4FF00BE1BFC28F265FF009E527FDF0DFE14011D1527932FFCF293FEF86FF0A3C997FE7949FF007C37F8500474549E4CBFF3CA4FFBE1BFC28F265FF9E527FDF0DFE14011D1527932FF00CF293FEF86FF000A3C997FE7949FF7C37F850047456A58687AD6AB28834BD2353D46624288AC6C2EAEE42C7A284822918939E06326BEDDFD9F7FE0983FF0502FDA92F6D6D7E087EC99F1A7C5F677722443C473783752F0DF836DDA4242FDB7C67E278F47F0BD9642B32ADCEAB1BBAA398D1CA91401F0757D5DFB19FEC5BFB40FEDE5F1DBC1DFB3EFECEBE08D47C5DE33F15EA11C1717890C91787FC2DA42664D4BC49E29D6197EC7A3E8BA55A24D757371732A34BE58B6B549EEA58617FEADFF0061EFF83403E26788AF747F167EDDDF17F4DF02787F105DDEFC2EF8457316B9E2CBA53E548DA76A3E31BDB6FEC4D25F633C375269B65AC18E542B6F34A8CB38FEE37F606FD847F654FD857E1FDD7C3AFD98FE10786FE1D691143611EA3ABDBC526A5E2EF11CF8B932DF789BC59A9BDD6BBAD5DCCEA1D8DE5EBC310090DB4305BC5142801F2F7FC1273FE08CBF03BFE0973F022C7C17E0F92C3C4BF1A3C53696D7BF187E305CE911BEB7E29D63607FEC6D2AE249D66D2FC1FA3B968B4BD2A0F2C4EE1F50BEF3AEE5062FD5C1E020083FDAA78E7FE3C87FF25D7A1D1401E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803CF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79F39AF45F0174D57EB65FCAEE800FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C975E87450079E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF0025D7F3BFFF0005D5FF0082FE7823FE09A5F0EEEFE127C278B4BF14FED8BE3ED0269BC27E1F9271A969BF0D347BE8E482DFC77E3181608E256DE5A4F0FE8734A27D56688CF2442C229246FE98EBF97CFF0082DEFF00C1117E1B7FC14EBE1D4FF113C056DA57827F6BAF01E89710F823C6C57EC963E3BD36D51E683C09E397894FDA6CDE405744D6258E5BAD0EE25658D8D8CF736F2007F96A7C56F8AFF11BE387C42F15FC56F8B5E31D77C7DF10FC6FAC5E6BBE28F15F88EFA5D4356D5B53BE95A69E69E7958EC8D59B65BDB42B1DB5AC0B1C16F1450C688BE7B5E93F17BE107C4BF80BF11BC59F097E2FF8375BF017C43F046AF75A27897C2FE20B37B3D434FBEB491A37F95B31DCDACC009ACEF6D649ACEF6DA48AE6D6796091246F36A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BEC3FD86BF6E5FDA07FE09F3FB407843F685FD9E7C617BE1DF12F876FAD86B9A1B4D2BF86BC75E1A33C6FAAF84BC5BA50758353D1B55B75785C3A8B8B298C57D6135B5EDBC13C7F1E51401FECF7FF04BBFF82BEFC06FF829F7C04B0F89FF000C05BE91F107C3F05969BF177E14DEEA889E23F01F899E05694FD99EDBCDD43C35A93879F42D7ADC4969770EFB59648B50B4BCB687F4CF8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCFF8877EC49FB6FF00C7EFD80BE3B7867E3DFECFBE2B9F41F1168B730C5AE68772D2CFE19F1BF874CC8FA8F85BC57A5AC91C7A8693A8C2AD1121A3BBB294A5E585C5B5DC314CBFEB83FF000486FF0082A1FC00FF00829E7C0A97E25FC2CD56CF45F881A2DBE8D67F15FE11DF5FC1278A3C01E20921BAF33CCB63E5CF7DE1CD4655964D0F5D8A116B7B12490318EF2D6EADE200FD2FFF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C975E87450079E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3D1E02191FF1353D47FCB90F5FFAFBA2BD0D7A8FA8FE745007CF041C9E0F53D8FAD260FA1FC8D7D10DD4FD4FF3A4A00F3CF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AFE36BFE0E72FF82AEB7EC7DFB3CC9FB24FC1CF11258FED07FB46E817769AF6A3A75D94D5FE1E7C21BB926B0D6B548BC89166B1D5BC5E23BAF0FE937326D68AC7FB5EEAD40B98609EDFFA31FDA43E3F780FF65CF817F147F681F89DA947A67823E15784356F16EB73C932C2D3A69D0335AE9B6CCE1B7DF6AB7AD6DA758C2A8F24D77750C51C6EECAA7FC6FBF6EFFDAFFE227EDE1FB577C64FDA93E26DDCD36BFF0013FC5573A85869CF33CB6DE1BF0B58A269BE15F0C69C8CC561B1D0B41B5B1B18A38C2ABBC52CEFBA69A47700F915999D99DD99DD98B33312CCCCC72CCCC724B1249249249393CD2514500145145001451450014514500145145001457BA7ECEBFB347C74FDAC7E28681F073F67BF86BE27F8A1F10BC47731C163A178674E9AF0DB44F224726A3AADDAA8B3D234AB5DE1AEF52D467B6B3B74E649412A0FF793FF0004E6FF008345FE1AFC26B0F0BFC56FF8289789E1F8A9E39BC30EA569F023C19737163F0FFC34D6E2DAE3ECBE30F12472C7A8F8C2F9A497C9B9B0D3A3D2F46B711C9199F56598490007F0CDFB327EC4FF00B57FED93E294F087ECCBF017E24FC60D5566B78AFAE3C27E1AD42EF41D145D394867F10789648A2D0341B57656DB71AB6A369136D608CCC315FD507EC97FF06647ED6BF11E2B0D73F6AFF8E7E02F801A45C4704F3F86BC1F6527C4BF1A2248164782564BAD17C3B673AA13148C753BB10CD9222B845E7FBE1F85FF00097E18FC13F08E9BE01F847E02F09FC37F06691188F4FF000DF83743D3F40D26DF0891B4BF64D3A082396E2558D3CFBA9849713B2879A577F9ABD1549C8E4F51DCFAD007F32FF04BFE0D3DFF00825A7C2E86D26F1EE9FF001A3E3DEB31244D7373F10BE211D1748378841924B2D0FE1DE93E0E58ECDC8C2D96AB7BAD1556224B8988561FA61E03FF0082337FC12FBE1BC36A9E17FD89FE06C73DA2044BFD57C236FAEEA32850003717BAC35ECF70C319DD333B64939C939FDBEA2803E07F875FB047EC4D6B05F5BC5FB26FECF621B716A90249F097C152F96AFF0068DE14CDA33B73B133C9E82BD2BFE184BF62AFFA34EFD9DFFF000CFF00813FF9475ED7E3D240D2B071CDEF4FFB74AF3BC9F53F99A00E60FEC25FB1560FFC6277ECEE3DFF00E15078138FFCA1D7879FD8B7F643C9FF008C5EF805D4FF00CD23F02FAFFD80ABE985272393D4773EB5F435007E707FC316FEC89FF46BDF00BFF0D1F817FF009475DCF833F61FFD8DEF46A3F6CFD95BF67C9FCB369E5F9BF087C08DB77FDA37EDCE87DF6AE7E82BEE6AF3CF1E920695838E6F7A7FDBA50078A7FC3097EC55FF00469DFB3BFF00E19FF027FF0028E83FB097EC5583FF00189DFB3B8F7FF8541E04E3FF002875D3E4FA9FCCD2A9391C9EA3B9F5A00F99CFEC5BFB21E4FF00C62F7C02EA7FE691F817D7FEC0549FF0C5BFB227FD1AF7C02FFC347E05FF00E51D7E8FD1401F0CF833F61FFD8DEF46A3F6CFD95BF67C9FCB369E5F9BF087C08DB77FDA37EDCE87DF6AE7E82BB8FF008612FD8ABFE8D3BF677FFC33FE04FF00E51D7B5F8F49034AC1C737BD3FEDD2BCEF27D4FE66803983FB097EC5583FF189DFB3B8F7FF008541E04E3FF2875E1E7F62DFD90F27FE317BE01753FF00348FC0BEBFF602AFA6149C8E4F51DCFAD7D0D401F9C1FF000C5BFB227FD1AF7C02FF00C347E05FFE51D773E0CFD87FF637BD1A8FDB3F656FD9F27F2CDA797E6FC21F0236DDFF0068DFB73A1F7DAB9FA0AFB9ABCF3C7A481A560E39BDE9FF006E9401E29FF0C25FB157FD1A77ECEFFF00867FC09FFCA3A0FEC25FB1560FFC6277ECEE3DFF00E15078138FFCA1D74F93EA7F334AA4E4727A8EE7D6803E673FB16FEC8793FF0018BDF00BA9FF009A47E05F5FFB01527FC316FEC89FF46BDF00BFF0D1F817FF009475FA3F45007C33E0CFD87FF637BD1A8FDB3F656FD9F27F2CDA797E6FC21F0236DDFF0068DFB73A1F7DAB9FA0AEE3FE184BF62AFF00A34EFD9DFF00F0CFF813FF009475ED7E3D240D2B071CDEF4FF00B74AF3BC9F53F99A00E60FEC25FB1560FF00C6277ECEE3DFFE15078138FF00CA1D7879FD8B7F643C9FF8C5EF805D4FFCD23F02FAFF00D80ABE985272393D4773EB5F435007E707FC316FEC89FF0046BDF00BFF000D1F817FF9475DCF833F61FF00D8DEF46A3F6CFD95BF67C9FCB369E5F9BF087C08DB77FDA37EDCE87DF6AE7E82BEE6AF3CF1E920695838E6F7A7FDBA50078A7FC3097EC55FF469DFB3BFFE19FF00027FF28E83FB097EC5583FF189DFB3B8F7FF008541E04E3FF2875D3E4FA9FCCD2A9391C9EA3B9F5A00F99CFEC5BFB21E4FFC62F7C02EA7FE691F817D7FEC0549FF000C5BFB227FD1AF7C02FF00C347E05FFE51D7E8FD1401F0CF833F61FF00D8DEF46A3F6CFD95BF67C9FCB369E5F9BF087C08DB77FDA37EDCE87DF6AE7E82BB8FF8612FD8A87FCDA77ECEFF00F867FC09FF00CA3AF6BF1E920695838E6F7A7FDBA579DE4FA9FCCD00687877F65BFD9A3C1F3A5D7853F67CF829E1BB98983C773A1FC2FF0005695708CBF75D67B2D1619432F660FB876359AB0A44364512C48B85548E308A15405501540002A80A0018000038A7A9391C9EA3B9F5AFA1A803E78C1F43F91AF44F010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2803D0E8AF9E327D4FE669549C8E4F51DCFAD000C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99A00FA1EBE796072783D4F63EB429391C9EA3B9F5AFA1A803E78C1F43F91AF44F010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2803D0E8AF9E327D4FE669549C8E4F51DCFAD000C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74AF3BC9F53F99A00FA1EBE796072783D4F63EB429391C9EA3B9F5AFA1A803F978FF0082DDFF00C1103E1AFF00C14DFE1C4DF10FE1F5B699E04FDADFC07A55CB7833C671C315A69FF102C2188C8BE07F1E347116BAB699900D135963F6BD16EDC7EF24B09AEADA4FF2E0F8C1F07FE24FC04F895E30F843F177C21AD7817E21F8135ABCD03C4DE19D7ACE5B2BFB0BFB295A36212450B716970A16E6C6FADDA5B3BEB3961BBB49A6B79A391BFDE9ABF9B6FF0082FB7FC10EFE18FF00C14CFE1CC3F123E1D5B691E00FDAF7C19A55EB7843C6E96B1C163F10B4FD3A15921F01F8E9A3F2DA6B5BA32B268FAE1DF79A2DD9889F3EC1AE2D2400FF00258A2BD2BE30FC20F88FF00FE2678CBE0FFC5BF0A6ADE09F887E02D6EEF40F13F86B5AB592D2FB4FBFB47C13B245026B5B988C7756379097B6BDB39A0BAB69248268DDBCD6800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AFB13F619FDB9FF00682FF827B7C7EF0B7ED0DFB3BF8AE5D03C53A0DC450EB3A2DCBDC4BE19F1B7875A68E4D47C2DE2BD3219E05D4748D423428CBBD2E2D652975673417112483E3BA2803FDA8BFE0947FF00055CF801FF000555F801A77C4FF861A85A787FE25787ECF4FB3F8C1F082F6FE19BC47E01F124D00131588F973EA3E19D42E239DF43D712048AEE15314CB0DE453409FA9D5FE199FB107EDB9F1DFF00601F8F9E18FDA0BE00F89A6D17C4BA23AD9EB9A2CD2CCDE1EF1B786269E09B53F0A78A2C23744BFD235110464AB8F36D2E6382F6D1E2BA822917FD603FE097BFF053FF00815FF053EF809A5FC54F8617B0E81E3ED1ADAC6CBE2D7C25BEBF8A7F10FC3EF13491E278B004526A7E1CBE9A39A5D0B5E8EDE28AFAD70B3C56B7B1DC5A4201FA5AC0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74AF3BC9F53F99A00FA217A8FA8FE7457CF009C8E4F51DCFAD1401F43B753F53FCE92BCF4F8F464FFC4A8F53FF002FA3D7FEBD293FE13D1FF40A3FF81A3FF912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCF99FC65D63C27F033E13FC46F8C7E39F11269FE11F865E0DF10F8DBC41752DAA46134CF0F69971A95C2233DE05334CB6FE44084FCF348883961401FC2F7FC1DDFFF00050C960B3F87BFF04EEF87FAC4910BFF00ECAF8B1F1D3EC573B45C5AC12C8FE00F08DFAC4C37C1F6B864F13DD5ACD9569ED745B828AD0C4CDFC1F57D49FB6BFED35E2FFDB1BF6ABF8E7FB4A78DAF27B9D63E2B7C41D77C456B04B2CB2C7A3F874DD35A785BC3B67E6B3BC7A7F87BC3B6DA668F63116252DACA30C59F731F96E800A28A2800A28A2800A28A2800A28A2800AFD85FF8249FFC119BF697FF0082AF7C58B7D0FC01652F80BE077876FE2FF85A1F1D35FD3AEA4F0E7876CA3DB2CFA468112AA0F1278BEF22222D3F47B69A38619254B8D4EEECACD5E5AF48FF008223FF00C1167E2DFF00C1583E3846D770EA3E09FD97BE1DDF5B5D7C5EF8A6F0B462E82C91C917817C1A645DBA8F8AB588CB79922FFA268B6026BEBD944C6C6D2F7FD5AFF66DF84FF057F647F837E0BF80BF00BE1868BF0FBE1AF80F4A874BD1B44D15A1B733BA0CDDEADAB5CAD97DA355D6F55B932DF6ADAB5F493DEDFDECF35C5C4CF2393401E55FF04EEFF82637ECA7FF0004CEF84563F0C3F677F025859EAF736B6A7C73F13B56B5B6BBF881F107568635592FFC41AE98CDC8B5126F6B2D1AD1E1D2F4F563F67B612BCB2C9F6578F7A695F5BDFE56947FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BA00F43A2BCF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF00225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC89401E875E79E3DE9A57D6F7F95A51FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE403CE6957A8FA8FE75E89FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92E803D0E8AF3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E803CED7A8FA8FE75F43D79E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BA00F43A2BCF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C89401E875E79E3DE9A57D6F7F95A51FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE403CE6957A8FA8FE75E89FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092E803D0E8AF3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E803CED7A8FA8FE75F43D79E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF00225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BA00F43A2BCF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF00225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC89401E875E79E3DE9A57D6F7F95A51FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE403CE6957A8FA8FE75E89FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92E803D0E8AFE61FF00E0BA9FF0707781BFE09BDE02BDF837F050E8DE30FDB17C69A4CFFD87A47DA62D5F48F851A65C218A3F17F8D205892217CC58B681E1E99CCF7D2C6D73771258C64CDB5FF0435FF8380FE1FF00FC14B3E1DDA7C2CF8B09A2F837F6C2F03E8F0378B3C32B771E95A5FC4AD3AD916297C6DE068258E45977B80DAEE850C8F73A4CF22CA91B584D0CA003FA1BF1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00F43AF3CF1EF4D2BEB7BFCAD28FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F201FCDDFFC16F7FE088DF0E7FE0A6DF0CAF7E207C3CB6D17C0DFB5DF81B4690F81FC6AF6E96DA7F8F2CAC834E9E05F1D4D6F1F9D35A5D2F9B068BACB096E744BC99242B3D91B8B593FCB87E317C1EF893F007E25F8BFE107C5DF09EADE08F889E04D62E743F13786F5AB67B6BDB0BEB66EA0380B3DADCC452E6CEEE12F6F776B2C571048F148AC7FDD87FE1021FF004153FF008043FF0092EBF9F8FF0082E37FC102FE1E7FC14C3E16EA3F11BE199D03C21FB61781341B8FF841BC61269D169967F10ACEC6396E6DFC05E3ABFB769259AD2E24DF0E87AC4F1DC4DA15D5C160AF652DC40E01FE4B3457A67C62F83BF12FE00FC49F16FC21F8BFE10D63C0BF113C0FAB5CE8BE25F0D6B96CD6D7D617B6CE50919CC7716B3A8135A5E5BBCB6B776EF1CF6F2C913AB1F33A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BEBCFD887F6DBF8EFFB01FC7DF09FED05F00FC4F73A2788F409C5BEB7A1CB34CDE1CF1B786AE1D3FB53C2DE2AD311D60D4B4AD4225055654696CAEE3B7D42C9E0BCB58264F90E8A00FF006A0FF82507FC157BE00FFC155BF67DD37E287C31BE83C3BF12B40B6B4D3FE2FF00C20D46F216F12780FC49E5859A48E30C1F53F0C6A72ABDC685AE409E55C5B3AC174B6DA843736B17EA857F8747EC03FB7A7C78FF008274FED1FE0AFDA2BE047892EF4DD5340BFB787C57E1692EA75F0DFC41F084B347FDB3E12F13D823AC37B61A85B06104B2219F4EBD5B7D42CDE2B9B78DC7FB06FEC1BFF0514F847FF0500FD99FC01FB48FC1F45B8D1FC5364B69E23D0A4D410EA7E0CF1A584300F11784B58856D9CC37DA55D4A3CB624ADDD94D697B09686E636201F63F8F7A695F5BDFE5695E755E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E803CED7A8FA8FE7457A28F010C8FF89A9EA3FE5C87AFFD7DD1401E74DD4FD4FF003A4A71072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7F313FF07767EDA173FB3B7FC13A348F809E15D63EC1E3AFDAD7C791782AEA1825D9791FC2EF09DAFF00C243E3BBA4DB93E55EDF3785FC3932B8025B5D72ECA36F8491FD3B780B81AAE78E6CBAF1D05DE6BFCBD3FE0EE5FDAAEE3E397FC14D66F833A76A6B77E14FD98BE1FE85E0982D2194B436FE2CF12C29E2BF13C9222B347F6AD97FA5DBBB8024F2ADE289F8894000FE5768A28A0028A28A0028A28A0028A28A002BF437FE0989FF0004ECF8BBFF000535FDAAFC17FB39FC2DB4B8B4D36E658F5DF897E3736CF2E97F0FFE1FD8DCC2BAD788750978844E5245B2D22D64911AFF0054B8B6B68F259B1F9FDA769F7DABEA163A56976773A86A5A95DDBD869F61670C971777B7B77325BDADADB5BC2AF2CF71713C891431468D24923AA22962057FAFCFFC1BEDFF0004A3D17FE0993FB1AE867C5DA2C11FED2DF1CEC346F1BFC6DD5A68626D47469A7B4FB4685F0F21B8DA648ACBC256B76F0DEDBA4861975B9B519FE7CA3D007EA77EC7DFB237C14FD87BF67FF87DFB397C04F0A59F85FC0BE02D16CF4F0F1A07D53C47AC2C118D5FC55E23BF23CED4F5ED7AF565BFD42EE638F366F26DE382D628208F59BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0EBF9A2FF0082F97FC17CFE1F7FC1333C01A9FC11F825AAE89E35FDB43C71E1FB8FEC2D16378753D33E0FE99A8C535B5AF8D7C690219201A92BEFB8F0F786EE8896FE5816EAF601A701E79FF05F3FF82F97803FE0999F0F755F825F04354F0FF8DFF6D1F1B688E9A2E87E7C3A9E9BF07B4CD4E1D9078D3C6D696F36E5D4BC891AEBC37E1EB968A4BE9961BDBB43A7295B8FF2ABF8A5F14BE20FC6BF883E2BF8A9F153C57AC78DFE2078DF58BCD7BC51E28D7AEE4BDD4F56D4EFA569679E79A4248505B6430C616182154861448D1540047F137E2778FF00E32F8F3C4FF13BE28F8AF59F1BF8F7C67AB5DEB9E26F13EBD76F7BA9EABA9DECAD34F3CF2BF0ABB98AC5042B1C16F1048608A38915058F851F163E237C0EF885E15F8ADF09BC5DACF817E20F82757B5D73C33E27D06E9AD351D3350B395658A4461BA39E072BE5DCDA5C472DADDC0CF05CC32C2EE87CF28A00FF0058EFF8200FFC1743E19FFC149FC043E117C56D5343F03FED8DE11D074F7F12F84DE44D3EC3E27D8697135BDEF8E3C0D0CCC12432C92A4FADF87E0965BAD2269BCC8D1EC1E3957FA62AFF00055F849F16FE23FC09F88FE11F8B7F093C5DAC7817E22781759B4D7BC2FE28D06EE4B3D474BD46CE4124724724640921900315CDB4A1E0BAB779209E3789D94FFAB2FF00C105BFE0BD1F0E7FE0A7BF0DF4DF847F17F51D03C0BFB67F81F4445F1478556E23D3F4DF8A7A769D1AC5378E3C0B6D732992495E354B8F10E830B4F36937324934264B078E4400FE916BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803F97AFF0082DDFF00C110BE197FC14DBE1D5D7C44F87F65A3781BF6BBF02E89751F823C6E2316563E3CB0B6596E60F02F8E9E05C5CDA4F3E5746D6A68A6BCD0EE267D8ED6535CDBC9FE5BFF00183E0EFC4CF805F123C59F08FE3078375AF017C44F046AD75A2F897C31AFDAB5ADFE9F7D6B2346F8E5A1B9B59801359DF5AC9359DEDB3C7736B3CD0489237FB8FB0393C1EA7B1F5AFC01FF0082DD7FC1107E1A7FC14E3E1C4DF107C016BA67813F6B7F01E93747C15E358E18ACEC3C7D65147E62F81FC7AF1C59BBB499E30344D65F75E68974EDB5DEC6E2EEDE500FF293A2BD2FE307C1EF897F00FE24F8BFE117C5FF0007EB7E03F889E05D66F341F1378675FB296CAFEC2FECA568D8859542DCD9DC285B8B1BFB6696CEFECE586EED269ADE68E46F34A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BFA72FF8361FFE0A47A8FEC91FB64E9FFB3678E7C4325BFC0DFDAAB54D37C28D677D39FECCF0F7C5A94AD978275FB6563B6D67D72778FC2D7CE8365D7DB74E370ADF6482583F98DAD5D075AD4BC37ADE8FE22D1AEE7D3F57D0B54B0D634BBEB595E1B9B3D434CBA8AF2CEEADE68D9648A6B7B886396291195D1D55958100D007FBCC780795D548E99B2FE5775E875F9E3FF04B8FDA4A1FDAEBF629F807FB4379D14DA97C47F85DE0CD4FC466168F6A78B2D2C6E34BF14AF951F16E0EBB657D2476EC37C50C912B67A9FD0EA0055EA3EA3F9D142F51F51FCE8A001BA9FA9FE7494ADD4FD4FF003A4A00F2EF8A5A95A68DA5A6AF7F730D9D8E9963AC6A17B7770E22B7B6B4B2B782E679E790E02450C51BC9239E1541278AFF000F3FDB1BE366A7FB487ED59FB43FC76D5659A4B9F8A7F183C7DE3181277691ED34BD5BC477F3E8DA6AB3166F274BD23EC5A7400B1DB0DB46A0902BFD82FF00E0B47F1764F81BFF0004DDFDACFE23DBDC7D96F74CF819F10F49D3E6593CB992FF00C55A6DBF85AD5ED9B2185CC526B02680A10E1E30CA415AFF0016377691DE462599D99D989C92CC4B124F7249249F5A006D1451400514514005145140051452805885032490001D4927000FA9A00FE9B3FE0D78FF00827D5B7ED6BFB6E4DF1DFC73A3FDBFE147EC9D1691E349A3BBB612E9DABFC4DD526B95F01694C65478657D3A4B0BFF0011CB1ED6319D2ED8B98DA680B7FA7E648E84FE75F891FF0006F47EC5B6FF00B1C7FC12D7E041D4B4C5B2F881FB401D4BE3CF8F2692DFC9BD79FC616BA547E18B0B866512345A6784ACB478604DC630D24F3A2ABDC4A5BF6DA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FF00B74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FFB74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FF00B74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FFB74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FF00B74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FFB74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FF00B74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FFB74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FF00B74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FFB74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015FCC3FF00C1C15FF05D6F87FF00F04E0F0337C16F8357FA378DFF006C4F1768F74BA56822E52E74DF84FA4EAD0C69078CFC631C2589BE58D1A6F0FF0087DDA29AFA731DD5CB456284CDB9FF0005F4FF0082F8F803FE0997F0F6FBE0AFC13BED23C73FB65F8EB4A961D17468E782F349F843A45EDBC8A3C69E32442E0EA40321F0EF875C09AF6722F2EFCAB28089FF00CA9FE287C4EF1EFC68F885E30F8ABF147C53AC78D7E2078F75ED47C4DE2CF146BD7935FEA9AC6B3AA5C3DCDDDD5CDC4CCCD8323948625DB0DBC2B1C1024714688A009F13BE26F8F3E3378FFC57F147E27F8A357F19F8F7C6FAC5DEBDE27F136B9772DF6A7AAEA778FBE59A79E6666DA8A16182152B15BDBC71410A2451A20E128A2800A28A2800AF43F84FF15FE217C0EF88DE10F8B3F0A7C55ABF827E20F81759B5D7BC2FE26D0EEE5B3D474CD46D1B2AF1CB132978668CBDBDDDB49BA0BBB5966B69E392195D0F9E51401FEAA9FF000436FF0082E2F803FE0A5DF0EECBE17FC52BAD23C0FF00B5E781F4A8D7C53E1617296FA77C49D32C638E37F1CF82E3959598CE312EBBA12F993E9374D23C466B078A6AFEA72BFC143E14FC55F883F043E22F83FE2CFC2AF156AFE09F885E02D76C3C47E15F13687772D9EA3A5EA9A74CB3432C72C4CBE64326D305DDACA1EDAF2D649AD6E629609648DBFD5A7FE082BFF05E9F873FF053FF0087369F08FE2E5DE91E02FDB23C05A4C117897C3325C4169A67C54D2ECE0446F1CF81D1D937CD26D2DAFF0087D01B9D2EE774F009AC268A5500FE91ABCF3C7A481A560E39BDE9FF006E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803F9B7FF82FAFFC10EFE17FFC14CBE1D43F11FE1DDAE93E01FDAF3C1BA5DF37843C6F1DBC76F61F106C34F891E2F02F8ECC4AAD716D726565D1B5B3BAF746BC110DD369EF736B27F950FC61F841F11FE01FC4CF197C1FF8B7E13D5FC11F113C03AE5E787FC4FE1AD6ED64B4BED3F50B390A921645027B4B988C775637B0192DAF6CE682EEDA59609A376FF763F1EF4D2BEB7BFCAD2BF9BEFF0082DEFF00C111FE1CFF00C14E3E195D78FBE1EC1A37817F6B9F02E91237823C6CF6C905878F2C2CD5E65F0278E258144B2DA5D0F322D17593E6DC689792A3949EC9AE2D6400FF00293A2BD37E327C1DF893F003E26F8C7E0F7C5DF09EADE08F889E03D66E743F13786F5AB592D6F6C2F6DC82182B8027B4BA85A2BAB1BC84BDBDE5A4D0DCDBC92432A39F32A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FF50FFF008350FE2A5E78F3FE0943A2F84AF2E1EE1FE12FC72F8A3E0FB7691CB3C767A8AF87FC5D6D6FCF48E14F10EC8941C2A63A66BFA5AC9F53F99AFE477FE0CE75BD1FF04F7F8FAD3FFC7937ED69E23FB0E739C8F855F0A85C91DB6799B40C7F189335FD70D00381391C9EA3B9F5A2917A8FA8FE745007A29F1E8C9FF8951EA7FE5F47AFFD7A527FC27A3FE8147FF0347FF22579DB753F53FCE92803F9F0FF0083AEBE2F3689FF000492F1EE9B6CCFA5DEF8DFE27FC34F05428B73E61BCB5BDD65B5CD4A0388E1CA9B0F0F4E1936BEE0DB8950986FF2A6AFF464FF0083C87C61369BFB12FECD3E098AE0C43C53FB4936B5730A9C1B8B6F0B7C3BF15C3B18778D2EBC436B291FDF48CF35FE73740051451400514514005145140057D31FB18FC13BCFDA43F6B4FD9BBE03D8AB97F8B1F1ABE1C781EEA644327D8B4AD7BC55A6596B3A948815C9834BD264BDD42E708C4416D236D6C60FCCF5FD05FF00C1B15F0A21F89BFF000571F827A9DCC31CD07C2BF0B7C45F894566457885C69FE1AB9F0F5A3157050CB15C788D27B727E649A159A321E256500FF586F0BF873489FC33E1EF09681670F87343F02E8BA5F87F47B0B641716F06996763069F616B020FB28821B4B5D3628A3501C15200DA179DCFF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44AF43AF9E1BA9FA9FE7401E89FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D7A1D1401E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912BCEDBA9FA9FE749401E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E8F0174D57EB65FCAEEBD0E803CF07808020FF6A9E39FF8F21FFC9741F1E8048FECA3C71FF1FA3FF912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B79F39AF45F0174D57EB65FCAEE800FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC975E87450079E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44AF43AF9E1BA9FA9FE7401E89FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D7A1D1401E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803CF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79F39AF45F0174D57EB65FCAEE800FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C975E87450079E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44AF43AF9E1BA9FA9FE7401E89FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D7A1D1401E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912BCEDBA9FA9FE749401E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E8F0174D57EB65FCAEEBD0E803CF07808020FF6A9E39FF8F21FFC975FCE57FC175FFE0E0AF037FC1383E1F5FF00C1AF82E749F177ED89E38D1EE1741D292EA1D5749F84FA65CA7929E31F19C4A88897E7797F0F6812169EFA68CDD5D471D8C5BA6DBFF82F8FFC17D3E1E7FC132FC03A8FC10F827AA68BE37FDB43C71A0CEDA1E891B47A9E95F0874ABF49ADADFC69E348E32D02EA5BD6497C3FE1BB871717B2422F2F205D3829B8FF002A7F89BF13BC7FF197C77E27F89DF147C59AD78E3C7BE32D5AEF5BF12F89FC417B2DF6A9AAEA57B2B4D3CF3CF293B577315860882416F12A430471C48880017E277C4FF883F19FC7DE2AF8A3F153C5DAEF8EFE2078DF59BEF1078A7C57E24D42E353D6358D57509DEE2E6E6EAEEE5E49082EE562894AC36F0AA410471C51A22F0745140051451400514514005145140057A1FC28F8B1F11FE06FC44F097C58F849E31D77C03F113C0DAD596BFE16F15F86EFE7D3B56D2B53B1996686586E20652F1395315D5ACC24B6BBB7796DAE629609648DBCF28A00FF0058EFF82197FC1C05F0FF00FE0A51F0E2CBE147C594D27C1FFB60F81345B61E2BF0E9BC8B4CD33E26E9D6D1885FC6DE088644904CEEC81B5FD0E26FB4E9573209A389EC278651FD1071E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B79FF00093F853F15FE22FC0FF885E15F8ABF09BC5FAD7817E20F82B57B5D73C33E28D02EDECF52D3351B391658A4475CA4D0BEDF2EE6D6E125B5BA81A482E6196191D0FF00AA5FFC1003FE0BA3F0CBFE0A4FE04FF8541F15B54D17C0FF00B63784341D3E5F12784DE45D3F4FF89FA6E971B5B5E78DFC0E931114AF24B2C72EB9E1E82592EF499A7F3628DF4F78E5500FE883FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D7A1D1401E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912BCEDBA9FA9FE749401E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E8F0174D57EB65FCAEEBD0E803F9B8FF82E1FFC102FE1D7FC14C7E176A5F117E1AB681E0EFDB0BC0BA14E7C0DE33974E4D36CBE20DA58A3DC5BF80FC777B6AD34D3D9DC3078344D62586E6E343BA9F72AC96725C40FFE547F18FE0DFC4BFD9FFE2578B7E10FC5FF00086AFE05F889E07D5AE745F12786B5BB67B6BDB1BCB672A59770D9716970A04F67796ED25B5DDBBC73DBCB244EAC7FDE8EBF97CFF82DD7FC110FE197FC14DBE1CDE7C43F0058E8BE07FDAF3C0DA1DCC5E07F1C794B6567E3CB0B459EEADBC07E3A9A05FF0048B29EE1DD747D6678E6BAD0EE6E24285ACE6B881C03FCA4A8AF4CF8C5F073E26FC00F891E2CF845F187C1BACF80BE22782356B9D17C4BE18D76D8DBDF585EDAC851B6952F05D5ACC009ACEFAD259ECEF2DDE3B8B59E5864476F33A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2B67C39A06ABE2AF10687E18D0AC6E753D6FC45ABE9BA1E91A759C4F3DDDFEA7AADE436363676D0461A49A7B9B99E28628D0177775550491401FEA3BFF0006967C1693C3FF00F04A4D1FC4173E669973F11FE327C45F1BB7996CD23DD5B19EC3C29613A86784795259F85A2923747915D64030AC8D9FE9DFFE1021FF004153FF008043FF0092EBE40FF82637ECE307EC91FB19FC07FD9E121821BEF865F0BBC15A2F883ECE6278E4F14CB6171A878A2559A2256E15B5EBCD40457059CCB0AC6DB88C57E8150079E8F010C8FF0089A9EA3FE5C87AFF00D7DD15E86BD47D47F3A2803E7820E4F07A9EC7D69307D0FE46BE886EA7EA7F9D25007F9FA7FC1E91AACF07807F606D103958350F16FC7ED4E48BA079749D23E15DAC3263B98D759997DBCDF7AFE06ABFBFCFF83E4657117FC134A107E4924FDADE561EAF0AFECDE887F013C9F9D7F00740051451400514514005145140057F5D5FF0678F84E2D5FF006EAF8EBE286895E5F097C009C4329196886B9E2BD22CA4DA7B798220A7E9DBBFF22B5FDB0FFC192F123FED7FFB604ACA0BC5FB3D787361EE37FC41D3837E9401FE899E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA579DE4FA9FCCD007D0F5F3CB0393C1EA7B1F5A149C8E4F51DCFAD7D0D401F3C60FA1FC8D7A2780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E9401E87457CF193EA7F334AA4E4727A8EE7D68006072783D4F63EB4983E87F235F43D1401E79E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA579DE4FA9FCCD007D0F5F3CB0393C1EA7B1F5A149C8E4F51DCFAD7D0D401F3C60FA1FC8D7A2780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E9401E87457CF193EA7F334AA4E4727A8EE7D68006072783D4F63EB4983E87F235F43D1401E79E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA579DE4FA9FCCD007D0F5F3CB0393C1EA7B1F5A149C8E4F51DCFAD7D0D401F3C60FA1FC8D7A2780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E9401E87457CF193EA7F334AA4E4727A8EE7D68006072783D4F63EB4983E87F235F43D1401E79E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA579DE4FA9FCCD007D0F5F3CB0393C1EA7B1F5A149C8E4F51DCFAD7D0D401F3C60FA1FC8D7A2780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E9401E87457CF193EA7F334AA4E4727A8EE7D68006072783D4F63EB4983E87F235F43D1401E79E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA579DE4FA9FCCD007D0F5F3CB0393C1EA7B1F5A149C8E4F51DCFAD7D0D401F3C60FA1FC8D7A2780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E9401E87457CF193EA7F334AA4E4727A8EE7D68006072783D4F63EB4983E87F235F43D1401E79E02040D57231CD975FFB7BAFE793FE0BE7FF0005F2F87FFF0004CDF87DAAFC10F821AB681E36FDB47C6DA14ABA2E86B343A9E9BF07B4CD4E078ADBC69E35B68242175308C6EBC39E1DBA68A5BF9522BCBB8C69C313E27FC1C17FF05D6F87FF00F04E1F02B7C16F831A8E87E36FDB1BC5BA45CAE93A0FDA12F34CF84FA56AB1C49178C7C650DBB96FED010A493787BC3F23452DECFE55DDD79760A7CEFF002C4F89FF0013BC7BF19BC7FE2BF8A3F13FC51AB78CFC7BE37D62EF5EF13F8975BBA96F352D5753BD90BCD34D34ACC4228DB1410A6D8ADE048E0851238D54003BE28FC52F883F1ABE2078AFE29FC54F166B3E37F881E36D62EF5EF1478A35EBC92F753D5B53BD95A59E79E694921416D90C318486089521851234551C0D14500145145001451450014514500145145001451450015E8DF093E2DFC47F813F11BC25F16BE1278BB59F02FC44F036B169AEF85FC51A0DDC967A9697A8D9C8248A48E443892193062B9B69964B7B981E48278E489D94F9CD1401FEB53FF0415FF82F57C39FF829E7C38D33E107C60D4B40F037EDA1E07D0A21E27F0BFDA21D3B4EF8ADA769D12C571E39F025ADC4BBE595D556E3C43A040D34DA4CF2BCF16FB064913FA47AFF00052F84FF0015FE21FC0EF88BE11F8B1F0A7C57ABF827E20F81B58B5D77C31E26D0EEA4B3D474CD42D5B2AF1CB191BE19A32F6F776D20682EAD659ADA78E4865743FEA1FF00F0436FF82E37803FE0A59F0EEC3E177C54BCD1BC0FFB5F7823488D7C53E165B84B4D37E2569B628913F8DFC1314F2F98ED32EC9B5ED094C93E9374F23C466B068A6001FD0C30393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00FE5F3FE0B71FF0441F867FF0538F87137C40F00DA695E04FDADFC09A45D0F0578DD225B3B0F1E584519993C0FE3C686326EED269100D1359915EF344BA91C248D6371776F27F96EFC61F83BF133E017C49F16FC22F8C1E0DD73C03F113C0FAC5DE87E25F0C7886CA6B1D42C2FAD2568D982CAA12E6CEE142DC58DFDB34B677F6924377693CD6F347237FBD2D7F373FF05F4FF821DFC2EFF8299FC3AB7F88DF0F2D349F00FED77E0CD2EFDBC21E378ADE1B5B1F88361630C6F1781BC78D1C7BAE6D6E19C8D1B5A39BDD1AEFCBFDE4BA7C973692807F92AD15E97F18BE0F7C49F803F137C65F07BE2EF84758F037C44F00EB97BE1FF13F86B5CB492D2FAC350B295A366559142DC59DCA04BAB0BEB7692D2FECA682EED2696DE68E46F34A0028A28A0028A28A0028A28A0028A28A0028A28A002BFA81FF00835F3FE09B97DFB587ED896BFB4E78F3C393DCFC10FD95B52B0F11C1797B6AC749F11FC5EDBF6AF076876F248163BC9BC3CC13C537F142CDF627B7D20DD055BD8127FC58FF00827FFEC17F1D7FE0A2FF00B48F82BF673F815A05C5F6A9AFDF5BCFE2BF14CD6F337877E1FF0084239E35D63C59E24BD4431DAD969F6ECE6084B7DA350BB30D9DA4724D2803FD90BFE09FBFB0D7C1FF00F8276FECBBF0F3F662F83360A9A27846C85DF88BC433410C5AB78DBC69A84501F1178BF5A78957CDBED56EA1511AB33FD92C60B3B18DCC36D18001F48F808606A8318E6CB0318E00BBE9EC38AF43AF3CF1E920695838E6F7A7FDBA579DE4FA9FCCD007D10BD47D47F3A2BE7804E4727A8EE7D68A00FA1DBA9FA9FE7495E7A7C7A327FE2547A9FF0097D1EBFF005E949FF09E8FFA051FFC0D1FFC89401FC257FC1F25FF0038CFFF00BBBCFF00DF69AFE01EBFBD6FF83DD35FFEDCFF00876CE2D7ECDF66FF0086B6FF0096FE76FF0037FE19BBFE9945B76F97FED673DB1CFF0005340051451400514514005145140057F6CBFF00064AFF00C9DDFED89FF66F5E19FF00D587A757F1355FDA47FC1965ADFF0062FED6DFB5ECBF66FB4F9DFB3F786D36F9DE4EDC7C41D3CE73E54B9F4C607D6803FD197C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D15E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00F43AF3CF1EF4D2BEB7BFCAD28FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F201E734ABD47D47F3AF44FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC97401E874579E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44A003C7BD34AFADEFF2B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC97401E76BD47D47F3AFA1EBCF07808020FF6A9E39FF8F21FFC9741F1E8048FECA3C71FF1FA3FF912803D0EBCF3C7BD34AFADEFF2B4A3FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBC8079CD2AF51F51FCEBD13FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D007A1D15E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44A00F43AF3CF1EF4D2BEB7BFCAD28FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F201E734ABD47D47F3AF44FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C97401E874579E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D7F343FF0005F4FF0082F97807FE0997F0F6FBE0A7C12BCD1FC75FB65F8EB4A921D1F465B886EB49F841A3DFDBCAA3C6DE3148C4A1F535051BC3DE1C7F2E6BD9D96F2EDA1B18089F0FFE0BB1FF000705781BFE09C3F0FAFF00E0CFC161A5F8BFF6C3F1CE91731E85A5C77706A7A47C26D32E62112F8C7C67104455D4184BBFC39A0B79935F4F1B5CDDA45650969BFCB17E27FC4FF881F1A3E2078B3E29FC53F166B7E39F881E39D6EFFC45E29F14F88AFE7D4756D5F56D4A77B8BAB9B9B9B8777C1772B0C29B61B785638208E3863445005F8A1F13FC7DF1A3E2178BFE2AFC51F14EAFE35F881E3CD7750F1278AFC51AEDE4D7DAA6AFABEA53BDC5CDCDC5C4CCCD8DCDE5C312958ADE048E0851228D1070545140051451400514514005777F0C7E18F8FBE3378FFC29F0BBE17F85758F1B78FBC6FACD9681E17F0C683672DF6A7AB6A97F2AC30410410AB108A58C9713C9B20B68124B89E48E18DDD66F853F0ABE217C70F88BE10F84DF0A7C29AC78DFE21F8F35BB2F0F7857C2FA0D9CB7BA9EADAADFCA2286086185599513265B89DF6C36D6F1C93CEE9146EC3FD503FE0851FF0006FE7823FE09B9F0DB4EF8B9F19C683E2FFDB1BC6FA5472F88F5E8ECA3D534BF859A5DF4514A7C11E0CBAB830B2DD46311F8875E8A249B51BA57B7B664B08916500FCC0FF82767FC19BDF09AD3E1FE8DE3BFF82897C45F157897E20EBF676B7EFF00073E156AA3C35E1BF0643710A4A74CD7FC5CB15C6AFE20D7622C16E9F49FEC9D32CE4125BC6751DA2E8E87FC1437FE0CDEF831A97C3BD63C6DFF0004F2F887E2CF087C49F0FD95D5FDBFC24F8A3AB0F14F85BC6F1DBC2D22E95A4F8AE54B6D63C35ADCCC36DADCEA2DABE9970FB2DA68AC43B5E27F6B67C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912803FC237E27FC32F1E7C18F885E31F855F13FC31AB7833E207807C41A9785FC5BE18D72D64B3D4F47D6B49B97B5BCB4B982400E1648CB43326E86E2068E781E4864476E12BFB95FF0083CABF657F877A378C3F675FDB33C21A0D87877C61F136EF5FF859F1356CD618DBC4777E1CD36D357F0B6BF75E54309B9D463B09751D32EEE645321B7B5B04777C284FE1AA800A28A2800A28A2800AF41F853F153E20FC10F88BE10F8B1F0AFC53AB782BE20F80F5CB2F10F85BC4DA25DCB67A8E99A9D84AB2C52472C4CBE643280D05DDACBBEDEEED649ADAE2392096446F3EA2803FD6A7FE0829FF0005E9F877FF00053EF87167F08BE2EDD68FE02FDB27C07A4C517897C32F730DAE99F1574AB282346F1D782124319334B82DAFF87977DC697721E780CD6134522FF48F5FE0A3F0A3E2BFC45F81DF113C23F163E1378BF5CF01FC43F02EB765E20F0B78ABC3B7D369FAA695AA584CB3412C53C2CA5E272A62BAB598496D776EF2DB5CC52C12C91B7FAA5FFC10C3FE0E02F007FC14A3E1C59FC28F8B51E95E0EFDB07C07A3DB2F8ABC3CD790699A5FC4FD3ADE3F29BC6DE0689D64F3A4631EEF10E86845CE9575209A18E4B09E295403FA20F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00F43AF3CF1EF4D2BEB7BFCAD28FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F201FCDF7FC16F3FE088FF0E3FE0A71F0CAEBC7BF0FE1D1FC09FB5C78174991FC11E3636914363E3CB0B349265F01F8E248424B35A5DE5A2D1B5A2D25CE8778E8E52E6C9AE2D24FF2DEF8C7F077E24FC00F89BE32F83DF177C27AB7823E22780B59B9D0BC4FE1AD6AD64B5BEB0BEB7219582C8A04F697503C5776379097B6BDB39E0BAB6924825476FF00761FF84087FD054FFE010FFE4BAFE7F3FE0B89FF00040CF879FF000532F859A8FC43F86B2683E0EFDB07C0BA1CCDE05F194DA72E9F63F102CEC11E787C05E3ABCB569A79ACEE71241A26B1245713E8777306092D93CF6EC01FE4AB457A6FC64F839F12FF0067FF00897E2EF841F17FC23ABF81FE22781B57B9D17C49E1BD6AD9EDAF6C6F6D9CAEE50E02DC5A5C26D9ECEF2067B7BBB6923B882478A4563E6540051451400514514005145140057D7FFB0FFEC43F1DFF006FFF008FDE14FD9F3E01786A7D67C47AF4E93EB9AECF14CBE1CF04786A19106A7E2AF14EA288D169FA569F131237B09AF6E4C36566935D4F146D3FEC2FFB0BFED01FF050BFDA07C2BFB3BFECEFE159B5EF14EBD34771AD6B57293C5E1AF04786A39E28B52F15F8AF538E29534ED234E49433330335D4C63B4B48E6B89638CFFADC7FC12EFF00E090FF0002BFE0989F00348F85DF0D3EC7ABFC44D66D2C6FFE2EFC57BAD222FF008487C7DE2748419CFDA9A659EC7C35A7CCF343A16891910DA5B932CDE75E4D3CEE01D27FC1283FE0949F00FF00E0953FB3E69DF0B3E1959DBF88FE246BF6F67A87C5EF8BF7D63143E21F1EF88D23DD2AA3664974DF0D69D2BC90E89A245318ADE0026B869EF259A76FD4EAF3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E803CED7A8FA8FE7457A28F010C8FF89A9EA3FE5C87AFFD7DD1401E74DD4FD4FF003A4A71072783D4F63EB4983E87F23401FC257FC1EABFF38E3FFBBB0FFDF73AFE12EBFBB4FF0083D5411FF0EE3C8C7FC9D87FEFB9D7F09740051451400514514005145140057F655FF0667FFC9D87ED6FFF006407C39FFAB034FAFE356BFB2AFF008333C13FB587ED6F81FF003407C39FFA9FE9F401FE907E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0EBF9A2FF0082F8FF00C17D3E1E7FC132FC05A87C11F827A9E8DE37FDB3BC71A1CE745D12331EA5A57C21D2AFA292DEDFC67E34442D00D48BEE97C3DE1B9DBED17D245F6BBC8534F40673FE0BE5FF0005F2F87DFF0004CCF87FAAFC11F823AAE83E36FDB47C6DA0CCBA1E88B2C1A9E9BF07F4DD4E0921B5F1AF8D2DA27641A8A86375E1DF0EDCB472DFCB125DDDC634E1FBFF00F2AAF8A3F14BE217C6BF881E2AF8A7F157C5BACF8E7E2078DB58BCD77C51E29D7EF24BDD5356D4EFA569A79E79A438550CDB218225482DE2548608E3891500047F133E26F8FF00E3278EFC4FF137E28F8B35BF1C78F7C67ABDDEB9E26F147886FA6D4355D5B53BE95A69EE2E2E266621773158608C2416F12A430471C4888385A28A0028A28A0028A28A002BD0BE14FC29F889F1C3E21F84BE147C27F096B3E3AF887E39D66D341F0B785B40B492F753D5B53BD90450C30C3183B235C992E2E252905B40924F3C91C51BB867C2EF85BF10BE35F8FF00C2DF0B7E15784B5AF1CF8FFC6BABDA687E19F0BF87ECA5BFD5354D4AF6558A186186253B2352DE65C5C4A52DEDA05927B8963863775FF541FF00837F3FE0851F0DBFE09BDE068BE33FC5FD2F47F1B7ED93E2DD06C575EF12488B7DA6FC2AD3B5685E6BCF057825A5531A5CA144B7D7BC43146973A94D1B5BC0F1D82AA4801B9FF0410FF8208FC3CFF8264FC39D2FE337C6AD2B42F1BFEDA3E36D191FC43E216861D474CF849A65FA79927827C11712AB05BC589921F117886158E7D46E11EDAD9934F45597FA54A28A00F9E1BA9FA9FE751C92470C6F2CAE91C51A349249230448D10167777621555541666620000924014F959625924918471C61DE491C8544450599DD9B0155402598900004938AFE167FE0E12FF8385BEC4BE2EFD877F614F1BC4D785EFBC39F1DBE3A786AED265B5450F69AA7C3EF87FAA5BB3462ECBF9969E24F11DA4AC6D824DA5E9CEB3B4F730807E717FC1D21FF000530F047ED87FB49783FF66DF835AF5AF89BE177ECBB73E23B3D77C4DA6CAB3E95E21F8ABAC3DB58789534CBA8C98EFEC7C376DA641A3A5E46D240F7DFDA42D9DA32D249FCAD53E59649E49269A4796699DE59659199E4964918BBC923B12CEEEC4B3B312CCC49249269940051451400514514005145140057A0FC2AF8ADF117E087C41F0AFC54F84FE2FD6FC09F107C15ABDA6B9E19F14787EF24B1D4F4CD46CE559629239633B65864DA62B9B59D65B5BBB7792DEE6196191D1BCFA8A00FF58CFF0082007FC174BE197FC149FC0ADF083E2B6A5A2F81BF6C5F08685612F88BC2923AE9FA77C4ED334D46B6BAF1AF81D666F2E691A4963975CF0FC32BDE69734DE74513D83A4A9FD3257F82A7C25F8B5F11FE057C45F097C59F849E2FD6BC09F113C0DAC5A6BBE17F14E8176F67A9697A95948B2452C722FCB2C4F831DC5B4E925B5D40CF05C45244EC87FD58BFE082BFF05EBF873FF053BF873A67C1EF8C3A9E85E07FDB43C0FA1423C4FE193343A769DF15B4ED3A1486E7C73E06B699C6F9A4C2DC7883C3F6ED2CDA54F299A156B0747400FE926BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803F97DFF0082DDFF00C1113E19FF00C14DFE1BDEFC41F0059689E07FDAF3C0DA15D2781FC72604B2B3F1E5959A4D756BE03F1DDC4081EE2C67B8678F46D66759EE341B8B991D049692DC5BC9FE5BDF18FE0DFC4DFD9FFE2578B7E10FC61F076B1E03F889E07D5AE745F1278675CB736F7B617B6B232315605E1BAB49D409ACEFAD659AD2F2DDE3B8B69A5864573FEE3AC0E4F07A9EC7D6BF01BFE0B6DFF0443F865FF0539F86F378FBC0767A47813F6B8F02E9174BE08F1D0885958F8E6C618DA68FC0FE3C7810FDB2CA69540D1B599A396F742B995FCA76B2B8BBB79403FCA3A8AF4CF8C3F073E26FC01F891E2CF845F18BC19ADF807E22F82356BAD17C4BE17F1059BD9DFD85EDAC8D1B101B315D5A4EA04F657F6B24D657D6B24575693CD04B1C8DE674005145140057D89FB0D7EC2FFB41FF00C1427E3EF85BF67BFD9DBC2373E22F146BB730CBAD6B332491786FC13E1D5991351F14F8AB5408D0E9DA4E9D0969096267BB9425A59C535CCB1C660FD88FF620F8FBFB7EFC77F0BFC04FD9FBC2575AFF008875AB9865D775D962993C35E07F0E2CC8BA978A7C55A9AC6F169DA569F0B33FCC4DC5E4FE5D9D9433DD4D144DFEB85FF0487FF825D7ECFDFF0004C2F8192FC34F857A55BEB5F1035BB6D1EF3E2BFC5BD42D235F1378FF00C42915C198999B7CBA77872C252D1689A14120B6B58733CA25BDB8B89E400E8FFE0949FF0004A2FD9F7FE0959F0074DF865F0BF4BB3D77E266BF656179F17FE2FDED8C29E25F1EF88E3854CE8B390F369FE19D3E76963D13448A5F22DA1FDFCDE6DE4D34CDFA9D451401F3C3753F53FCE929CC0E4F07A9EC7D69307D0FE46803D13C05D355FAD97F2BBAF43AF3CF010206AB918E6CBAFF00DBDD7A1D002AF51F51FCE8A17A8FA8FE745000DD4FD4FF003A4A56EA7EA7F9D25007F00FFF0007C97FCE33FF00EEEF3FF7DA6BF807AFEFE3FE0F92FF009C67FF00DDDE7FEFB4D7F00F40051451400514514005145140057F6CBFF064AFFC9DDFED89FF0066F5E19FFD585A757F1355FDB2FF00C192BFF2777FB627FD9BD7867FF561E9D401FE891E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015FCC37FC1C13FF0005D8F87DFF0004E1F02CBF05BE0BEA7A0F8DFF006C7F15E8D74BA4680674BFD2FE13E99AB2431C3E30F1AC16D32BADFADBACD73E1ED02578A6BEB8105D5D04D3C1F3B73FE0BEBFF05F0F017FC132BE1EEA1F053E09DE68FE39FDB33C75A4BC3A2E8AB730DCE95F08347D42DE555F1B78C638FCC2FA92A957F0EF875FCB96FAE1A3BCBB68AC613E77F954FC51F8A1E3EF8D3F10BC5DF157E28F8A757F1AFC40F1DEB97DE22F1578A35DBC9AFB54D5F56D42569AE2E2E2E26666C02447044A562B78123821448A3440009F13FE2778F7E33F8FFC55F147E2878A757F1A78F7C6BABDDEBBE26F12EB9772DEEA5AA6A5792179669A69598AA28C450409B61B78123861448D1547074514005145140051451400577DF0BBE16FC42F8D7F103C29F0B3E14F8475CF1DFC41F1BEB367A0785FC2BE1DB19B51D5B57D52FE6586082DEDE05621016F327B89365BDB40B24F712470C6EEA9F0BFE1878FBE347C40F09FC2CF85DE16D63C6BE3EF1C6B565E1FF0BF86742B396F752D5754BF99618218618958AC69B8CB737121482D6DD25B8B8923862775FF00560FF82087FC1043E1F7FC1313E1F5AFC65F8CB6BA3F8F7F6C8F1E68F6EFAF6BCF6F0DDE97F08F4BBB87CC97C13E09964F307DB312797E22F1147B27D4A74FB35B7956112ACA009FF0412FF82077C3AFF82637802C7E34FC63B2D2BC75FB6678EB438078835E96382FF48F84BA5DF451CD3782BC0EEF11D97A0911788BC4287ED1A8CF19B5B578F4F8D565FE847C7A481A560E39BDE9FF006E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD35A55895A596458E38D4C9249238444441B99DD9885555504B31200009271492489123C923AC71C6ACF248EC1511141667766202AA804B312000092715FC2E7FC1C29FF07099D3DBC69FB0B7EC3BE2C0D752417DE1BF8E9F1DBC3BA863EC7E6892CF54F87BE00BFB43BBED5E59920F117896DA7516E1CE9BA6B3CDF6A9E000EEBFE0E38FF838EDE06F187EC19FB03F8D21662B7FE1BF8F9F1EFC377C5DE1237DA6A1F0F7E1CEA96530412E7CEB6F1378920918C403699A636F6B8B98FF0080477795DE491DA492466791DD8B3BBB92CCEECC49666624B312492492726877791DE491DA492466777762CEEEC4B33BB312CCCCC4966249249249269B400514514005145140051451400514514005145140057A1FC28F8AFF0010BE077C45F097C58F853E2AD5FC13F107C0DAC5AEBBE18F136897525A6A1A6EA168FB91E3923237C3321782EADA40F05D5B4B2DBCF1BC523A9F3CA2803FD53FFE086BFF0005C7F007FC14AFE1DE9FF0B3E2BDF689E07FDB03C13A446BE28F0BA5C25969BF12F4EB10B0BF8DBC1105CCC6591E5411CDAFE871B4D3E957524924465B078A55FEA86BFC143E14FC55F883F043E22F843E2C7C2BF156ADE0AF883E04D6ECFC41E17F1368975259EA3A66A7632092292396361E6432AEE82EADA50F6F776D24B6D711C90CAE8DFEACFF00F0413FF82F4FC3CFF829F7C37B2F845F17EEB47F01FED95E03D2638BC4BE1A37315B697F15749B082246F1E782525319F3E6F99B5FF0EA79971A5DD0927B73369F2C722007F4915E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401FCDE7FC17CBFE0879F0AFF00E0A67F0EADFE22FC3FB3D2BC05FB5DF82F49D44F837C710C30DA58F8FECACE28A48BC0DE3E31C45AF2CE7672346D64917DA2DD94C4B2E9F2DD5A4BFE53DF18FE0E7C4BF801F133C63F07FE2FF84359F02FC44F016B77BE1FF13786B5DB396CEFAC6FECA568D9D16450B736574812EB4FBFB6696CF50B29A0BCB39A6B69A291BFDD87C7BD34AFADEFF2B4AFE70BFE0B75FF000448F86DFF000539F86573E3BF0143A4F80FF6B6F026952C9E07F1C0B58A2B1F1D58DA4724ABE03F1CB4423927B2BC24A68FAD167BBD0EF1A37DB7162F73692807F947D7D87FB0D7EC37F1FBFE0A0DFB40F83FF679FD9F3C2579AFF897C477D6E75BD71E0987873C0FE1B13C69AA78B3C57A9A46D069BA469903B4AC646F3AEE6F2ECECE39AEA68E36F48F807FF04C0FDAFF00E3FF00ED9737EC37A07C2DD7B41F8CFA0788A7D23E2141E20B0BAB3D27E1CE91612A7F6978AFC51A818FC8B6F0FC56924779A7DE23B26B4973649A51BA7BDB70FF00EB2FFF0004A1FF008251FC02FF008254FECFBA77C2CF865656DE23F891AF5BDA6A1F177E2FDFD8430F88FC79E24110332A49FBC974DF0CE9D2B490E89A1C53186DA00279CCD792CD3B8027FC128BFE0941FB3F7FC12A3E00D8FC30F85D610F887E24788A0B3D47E2F7C5ED4AD201E24F1DF89120513471CC2312E9BE18D3653243A1E8713886DE0FDFDC19AF669E77FD0CF1E920695838E6F7A7FDBA57A1D79E78F7A695F5BDFE569401E7793EA7F334AA4E4727A8EE7D69B4ABD47D47F3A00FA1E8A28A00F3CF1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E04E4727A8EE7D68A45EA3EA3F9D1401E8A7C7A327FE2547A9FF97D1EBFF5E949FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00FE1B7FE0F74D7FF00B73FE1DB38B5FB37D9BFE1ADBFE5BF9DBFCDFF00866EFF00A6516DDBE5FF00B59CF6C73FC14D7F769FF07AAFFCE38FFEEEC3FF007DCEBF84BA0028A28A0028A28A0028A28A002BFB48FF00832CB5BFEC5FDADBF6BD97ECDF69F3BF67EF0DA6DF3BC9DB8F883A79CE7CA973E98C0FAD7F16F5FD957FC199FF00F2761FB5BFFD901F0E7FEAC0D3E803FD2138F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF002257A1D7CF0DD4FD4FF3A00F44FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F3E735E8BE02E9AAFD6CBF95DD001FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC895E875F3C3753F53FCE803D13FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BAF43A2803CF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF2257A1D7CF0DD4FD4FF003A00F44FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3E735E8BE02E9AAFD6CBF95DD001FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC895E76DD4FD4FF003A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C895E875F3C3753F53FCE803D13FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BAF43A2803CF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF22579DB753F53FCE92803D1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF001E43FF0092EBF9C9FF0082EC7FC1C13E06FF0082707C3CD43E0D7C175D2BC5FF00B6178E749B88742D2D2F60D4B4AF84DA65D42635F19F8C6158D40BEC481BC3DA0B9335F5C2FDAAE963B1858CBB9FF05F0FF82FA7C3CFF8265F80AFBE097C14D4747F1C7ED9BE38D12E3FB13458DA2D4749F845A55E46D0C3E31F1AA2334435162C64F0F787653F68BE96237779147631833FF9537C4CF89BE3FF008C9E3BF147C4EF8A3E2DD73C73E3EF19EAF79AEF89BC53E23BF9F52D5B56D4EFA569A7B8B8B9B87760BB9B643047B20B685520B78E38634450077C4FF89DE3EF8CFF00103C5BF14FE28F8AF5AF1BFC40F1D6B97FE23F1578A7C417D3EA3AB6B1ABEA570F737573737370EEE4177290C2A561B785638208E3863445E0E8A2800A28A2800A28A2800AF41F855F0AFE20FC6FF889E10F84FF000ABC29AC78DFE2178F35CB2F0EF857C2FA0D9CB7DA9EADAADFCAB141041042AC5517265B89E4DB05B5BA49713C91C51BB85F853F0A7E227C70F889E12F84FF000A3C25ACF8E7E21F8E759B4D03C2DE16D02D24BDD4F56D4EF6411C30C30C60ED8D7265B8B890A416D02493CF247146EE3FD56BFE0821FF000411F879FF0004C9F873A67C65F8D5A5E81E39FDB47C6DA3ABF883C44608751D33E12E99A822CAFE0AF03DCCD192978B19487C45E20804736A5708F6F6C63B0455940317FE084FFF0006FF007823FE09B7F0D6C3E2DFC653A1F8BFF6C4F1D69514DE23D756C22D4B4CF857A55EC31487C0FE0CB999D0ADCC7F73C41AFC48936A573BEDEDD934F89124FE8ACF8F40247F651E38FF008FD1FF00C895E875F3C3753F53FCE803D13FE13D1FF40A3FF81A3FF9129B2CB178C629269A45D1E1D1D5A49659196E6368EE54B3BBBB1B4585215B42CCCC5810C492A179F399244891E595D638E3567924760888880B33BB310AAAAA096624000124E2BF866FF83837FE0E239B4CB3F1FF00EC1DFB08F8E6586EEEA59FC31F1F3E3B785AF0C6D6CB6E67B6D5BE1DFC3ED66D9C1F39CC9259789BC4762F88479FA5E9B70271733C400BFF0007127FC1C1767A5CFE3CFD837F613F1C4B79728B75E18F8E9F1F7C37722DE280BA98756F007C39D52D2E657927543258F893C4D692C620669B4DD2E66996E2E22FE0D649249A479657796591DA49249199E491DC9677776259DD989666624B1249249A59659679649E79249A69A479669A576925965918BC92492392CEEEC4B3BB12CCC4924924D474005145140051451400514514005145140051451400514514005145140057A17C28F8ADF113E077C45F087C59F84FE2DD6BC0DF10FC07AE58F88BC2BE29F0FDECD61A9E95AAE9F32CF04D14D0B29789CA98AEADA50F6F776D24B6D7314B04B246DE7B45007FAC57FC10BFFE0E02F017FC149FE1C59FC27F8B91E93E0EFDB07C07A45BC7E28F0FB5F43A6E99F1434DB58846DE36F0444F1BF9B2BF97BFC41A1A1FB4E9774FE74292584D0CA3FA24E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3FE123F0B3E2AFC44F823F103C2DF14FE1478BF5CF027C40F056AD69ADF867C53E1EBE9AC354D2F51B395658A48A68980921936F95756B32C96D776EF25B5CC52C123C6DFEA95FF000400FF0082E9FC33FF0082937819FE107C57D4B47F02FED89E10D12C24F10F8564923B0D37E2769BA74724173E34F03ACAE126959E44935DD02266BBD2E697CE8A392C248E5500FE88FF00E1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D7A1D1401E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803C56C3E05F82F4AF14EB7E39D3747F0DD878D3C4B65A6E9BE21F16D9F85B4CB6F12EBBA6E8E673A569FAB6BB0B26A7A85969C6EAE0D95B5D5CCB0DB19A530A2176CF4E7C7A0123FB28F1C7FC7E8FF00E44AF43AF9E1BA9FA9FE7401E89FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D7A1D1401E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803CF47808647FC4D4F51FF002E43D7FEBEE8AF435EA3EA3F9D1401F3C1072783D4F63EB4983E87F235F443753F53FCE92803FCF0FF00E0F55047FC3B8F231FF2761FFBEE75FC25D7F7F1FF0007C97FCE33FF00EEEF3FF7DA6BF807A0028A28A0028A28A0028A28A002BFB2AFF8333C13FB587ED6F81FF3407C39FF00A9FE9F5FC6AD7F6CBFF064AFFC9DDFED89FF0066F5E19FFD585A75007FA24780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBF9E3FF82F97FC17D3E1F7FC1337C01AA7C10F821AB687E35FDB47C6FA05C0D0F45478754D33E0F69BA9412C16BE36F19C086483FB49189B9F0F786EE8ACBA84B0ADD5E4234E1FBFC4FF0083827FE0BB3F0F7FE09C5E0797E0A7C16D5740F1BFED91E2AD16E8695E1F17116A3A6FC25D37578E04B6F1878D6DADA6DC97FE4096E7C3DE1F9DE19AFE6586EAE556C01337F962FC4FF89FE3EF8CDE3EF14FC50F8A1E29D5FC69E3DF1A6AF77AE7897C4BAE5DC979A96A9A95E48649669A6909DA8B911C1046161B785238614489154003BE287C51F885F1ABC7FE29F8A5F157C5DAD78EBE2078D758BCD77C4FE29F105E497DAA6ADAA5F4CD35C5C4F34870ABB98AC3044B1DBDBC4A90C114712220E068A2800A28A2800A28A2800AEFFE16FC2CF885F1B3E207857E167C2AF096B3E39F881E35D5ED343F0CF85F40B492F753D5352BC95628628A241848D4B799717333476F6D0ABCF712C7123B83E167C2BF889F1B7E20F853E15FC28F07EBBE3CF885E37D62CF41F0BF857C39613EA3AB6ADA9DF4CB0C10C16F023158D4B79971712ECB7B58164B8B8963863775FF0055EFF82097FC103FE1CFFC131BE1FD87C69F8C563A4F8E7F6CDF1DE8102F88B5F92386FF0049F84DA55FC70DC4FE09F043CB1612F43058BC43E218C0B8D46788DB5AC91E9F1AACA0187FF06FE7FC10A7E1AFFC137BC0B17C66F8BFA4E8DE36FDB2BC59A1D90D77C4D222DFE9DF0AB4ED561925BBF057821E50624B95DA906BDE228634BAD4A68DADE078EC156393FA6FAF3CF1E920695838E6F7A7FDBA579DE4FA9FCCD007D0F5F3B4ACB12C92CAC238E30EF248E42222202CCEECD85555504B3120000927143CAB0AB4B2C8B1C51A992492470891A20DCEEEEC42AAAA82CCCC4000124802BF893FF838E7FE0E3B688F8BFF0060DFD81BC6D03E46A1E1BF8FBF1EFC357A2531919B4BFF0087BF0E755B394C424DC27B5F137892DE47F2C2B699A636F6B8B98C0384FF008384FF00E0E16168BE2FFD877F614F1C29BCF32F7C37F1DBE3A786AE9245B645125A6ADF0F3C01AA425905CB397B4F11F892CE466B6093E99A64AB3B4F750FF0872CB2CF2C93CF24934D348F2CD34AED24B2CB23179249247259DDD896776259989249249A492492591E595DE49657692492462EF248EC59DDDD896676625999892C49249269940051451400514514005145140051451400514514005145140051451400514514005145140057A27C27F8B3F11FE05FC44F09FC58F849E30D6FC05F113C0FAC5A6BBE17F15787EEDECF53D2B52B295658658A45CA4B1315F2EE2D67496DAEA06782E229617743E7745007FAD2FF00C1053FE0BD9F0E7FE0A77F0EB4CF83BF18B53D0FC11FB68781B40B7FF849FC34D245A769DF15F4ED3A18E0BBF1DF81E09596369E570B71AFF876DDA49F4A9A633408FA7BA3A7F4975FE0A3F0A7E2B7C43F81FF0010FC27F15BE14F8AF57F047C40F046AF6BAE7867C4DA1DD4969A8E9BA85A38747492320490CABBA1B9B6943C1756EF2413C6F148CA7FD42FFE086BFF0005C9F87FFF00052AF879A6FC2AF8B1A8687E08FDB07C15A3A2F89FC2EB711D8E9BF1374FB0558A4F1B781EDEE263248F246239F5FD0A269A6D26E64792232583C522807F43AC0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99A00FA1EBE796072783D4F63EB429391C9EA3B9F5AFA1A803E78C1F43F91AF44F010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2803D0E8AF9E327D4FE669549C8E4F51DCFAD000C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74AF3BC9F53F99A00FA217A8FA8FE7457CF009C8E4F51DCFAD1401F43B753F53FCE92BCF4F8F464FFC4A8F53FF002FA3D7FEBD293FE13D1FF40A3FF81A3FF912803F84AFF83E4BFE719FFF007779FF00BED35FC03D7F7ADFF07BA6BFFDB9FF000ED9C5AFD9BECDFF000D6DFF002DFCEDFE6FFC3377FD328B6EDF2FFDACE7B639FE0A6800A28A2800A28A2800A28A2800AFED97FE0C95FF0093BBFDB13FECDEBC33FF00AB0F4EAFE26ABFB48FF832CB5BFEC5FDADBF6BD97ECDF69F3BF67EF0DA6DF3BC9DB8F883A79CE7CA973E98C0FAD007FA32F8F7A695F5BDFE5695E755E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E803CED7A8FA8FE75F43D79E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF00225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BA00F43A2BCF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF00225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC89401E875E79E3DE9A57D6F7F95A51FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE403CE6957A8FA8FE75E89FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92E803D0E8AF3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E803CED7A8FA8FE75F43D79E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BA00F43A2BCF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C89401E875E79E3DE9A57D6F7F95A51FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE403CE6957A8FA8FE75E89FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092E803D0EBF9A1FF0082FAFF00C17C3C07FF0004CAF87BA87C13F8257DA378E3F6CCF1CE90D168DA2F9F1DDE95F08748D461755F1AF8C628998B6A4B19F33C3BE1E731CB7B7062BCBB31D8C444F87FF05D9FF83823C11FF04E1F879A8FC1AF82CBA4F8BFF6C2F1C693343A1E96B7F0EA1A5FC26D2EF21645F19F8C214840FB780C1BC3DA0B9F3AF6E00BABA58ECA1632FF009627C4FF0089DE3DF8CFF107C5FF00153E28F8AB58F1B7C40F1E6BDA8F897C57E29D7EF66BFD5758D6354B87B9BBBAB9B89999B06490AC30A6D86DE158E08123863445007FC52F8A1E3FF8D5F10BC5DF157E2978A758F1AFC40F1D6B77BE21F1578A35EBC9AFB54D5F55BF94CB3DC5C5C4CCCDB572B1410A958ADE08E2821448A3441C0D14500145145001451450015DE7C30F861E3EF8D1F103C27F0B7E17785758F1AF8FFC71AD59787FC2FE18D06CE5BED4F55D52FE558608618625256352C65B8B890A5BDADBA4B71712470C4EEB2FC29F857F107E37FC45F07FC26F855E14D63C6FF10BC7BAE58F873C2BE17D06CE5BED4F56D575099618208618558AC6A58CB717126D82D6DD25B89E48E18DDD7FD513FE0851FF0006FF007823FE09B3F0DAC7E2DFC627D17C61FB61F8EF498A5F126BABA7C7A869BF0B34BBD86391FC0DE0DB896552B711E7CBF10EBD1A24FA95D0920B764D3E38D1C036BFE0825FF0410F879FF04C3F87F69F193E31DA691E3CFDB27C79A35B37883C40F0417BA57C25D2EEA2F364F05781E4757DB77893CBF1178850ADC6A53A1B6B768AC224493FA51AF3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC8940078F7A695F5BDFE5695E70EE91A3C923AC71C6ACEEEEC1511141667766215555412CC480002490057A2CB2C5E318A49A69174787475692596465B98DA3B952CEEEEC6D1614856D0B33316043124A85E7F81FFF0083893FE0E0CB5D2EE7C77FB06FEC29E377BD9963BBF0C7C74F8FBE1CB9104509955ADF56F87DF0EF51B49E47798234967E23F135ACC82166974DD2E56956E2E2300ADFF070AFFC1C26D60FE32FD85FF61BF172B5CB437DE1CF8EBF1D7C3B7C7366CE65B3D4FE1EF80350B47C9B909E641E22F125BCA041B8E9BA63B4A6E6E21FE0FDDDE477924769249199DDDD8B3BBB12CCEECC4B3333125989249249249A1DDE577924769249199DE4762EEEEC4B33BB312CCCC492CC49249249269B400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140057E837FC130FF00671FDADBF693FDB0BE13F85FF6339F5EF0EFC5BF0FF88B4FF1343F1274A92EECB4DF865A669F7086FBC57E22D52DC08EDB4A820692096CA6663ACF9C74B482E3ED2D19E1BF60FF00D847F680FF008288FED07E15FD9DFF0067BF0C4FACF88B5C9A3B9F107882E219D7C33E05F0C453469A9F8ABC55A8C68D1D8699611BE5159BCFBEB83159D9C72DC4AAB5FEB73FF04C2FF8246FC0BFF82637ECFF00A3FC27F8632DB6B3E38D4EDED750F8ABF14EEF46863F10F8FBC4C10B4F34D3FDA4CB67A158C92496FA268F1BF91676A03B896EA59E69003F4CBE19E8FE33F0FF00C3CF04E87F117C5169E36F1E691E17D134EF1878BAC74A5D0ECFC49E22B4D3E08356D66DB4849EE534E8750BD49AE12D56790441F008E83B8AF3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E803CED7A8FA8FE75F43D79E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BA00F43A2BCF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA00F3B5EA3EA3F9D15E8A3C04323FE26A7A8FF9721EBFF5F7450079D3753F53FCE929C41C9E0F53D8FAD260FA1FC8D007F095FF0007AAFF00CE38FF00EEEC3FF7DCEBF84BAFEED3FE0F55047FC3B8F231FF002761FF00BEE75FC25D0014514500145145001451450015FD957FC199FF00F2761FB5BFFD901F0E7FEAC0D3EBF8D5AFECABFE0CCF04FED61FB5BE07FCD01F0E7FEA7FA7D007FA41F80BA6ABF5B2FE5775E875E79E02040D57231CD975FF00B7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FF00B7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FF00B7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FF00B7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43AFE687FE0BE3FF0005F5F87BFF0004CAF015EFC12F829A8693E39FDB33C73A35C0D174689E0D4747F843A55DC4628FC63E364590A2EA4C5F7F877C3B2033DF4B1B5DDE47158C40CE9FF05F2FF82FA7C3DFF8266F80352F81FF0004755D17C6DFB6878E3409CE87A2C6D1EA5A5FC1FD2B518A6B7B6F1AF8CE38F75B8D483079FC3DE1BB8713DF4B0ADDDE40BA72833FF9567C50F8A3F10BE3578FBC53F14BE2AF8BB5BF1DFC40F1AEAF79AEF8A3C55E22BD96FF0055D5F54BE95A6B8B8B89E5270BB98AC30442382DE2548608E3891100045F12FE2678FBE31F8EFC51F137E2878B35BF1C78F7C69AC5E6BBE27F14F88AFE7D4756D5B54BF99A6B8B8B8B9B8776DBB9B6430A6C82DE158E08238E18D11786A28A0028A28A0028A28A002BD0BE147C29F887F1C7E22F847E137C28F09EB1E39F887E3BD6AD340F0AF85B41B496F753D5B54BC7DB1430C312B158D1434D713C9B61B6B78E5B89DD228DDC37E15FC2BF887F1B7E20F857E15FC29F096B3E39F883E36D5ED343F0C785F41B47BCD4B54D4AF2558A28A28D70B1C4A5BCCB8B999A3B7B6855E7B8963891DC7FAA17FC1BF9FF00042AF86DFF0004DDF0245F197E30693A278DBF6CAF15E8967FDBBE2778A3D434EF857A76AB14D25DF82FC0F2CAAC89708812DF5FF10C091DC6A7323DBC0D1D82A24801B9FF000410FF0082097C3DFF008263FC39D3BE31FC69D33C3FE3AFDB3BC6FA4249E20F11F910EA3A67C26D2EFE3495FC13E07B8B88B7A5E221587C45E20844536A770AF6F6FE5D8468B2FF004A5451401F3C3753F53FCEA39248E28DE595D238A34692492460888880B33BB310AAAAA096624000124E29D2B2C4B24B2B2C71C6AF24924842222202CCEECD85555504B312000092715FC2B7FC1C29FF00070AADBA78C3F61BFD853C6E3ED826BDF0D7C77F8E7E1ABADC2D9504B69AB7C3CF006A917CBF68672D69E23F1358C8FE4049F4BD32659CCF731005CFF83837FE0E239B4EB4F881FB067EC25E379A1BABA79BC33F1EFE3BF85EF4C4D6EB019A0D53E1E7C3CD6AD25DDE6BF992D9789FC4764E3CA533697A65C0985CCF1FF0732CB2CF2C934D23CD34CEF2CB2CAED2492C92316792476259DDD8966662599892492689659679649E79249A69A479669A576925965918BC92492392CEEEC4B3BB12CCC4924924D47400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140057D9DFB087EC1FFB41FF00C1447F680F0C7ECF5FB3C785A6D6FC45ACCD15CF883C41751CD1F867C0BE1949E38F51F14F8AB528E3912C34CB1472554E6E2F6E3CBB4B48E59E555AA7FB0FFEC39F1F7FE0A01F1DBC37F01BE007856E35BD77559E19FC43AFCF1C91786FC0FE1C132A6A1E26F13EA414C565A7D9445D923C9B9BE9C25A59C52CF22AD7FAE0FF00C122BFE0983F007FE098DF029FE18FC2BD22DB55F1DEB16DA35DFC53F8AD7F6712F89BC7BE22486E3ED124B39DF2D8E83673178F47D16193ECD67061DC497324B3380755FF0004ABFF008255FECFDFF04B0FD9F749F855F0AF49B3D6BE21EB365617BF177E2EDED8409E27F883E274817ED323DCED69EC7C396570D347A1E851CC6DECADCEF93CEBB9669DFF0050E8A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FFB7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FF00B7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FFB7BAF43A0055EA3EA3F9D142F51F51FCE8A001BA9FA9FE7494ADD4FD4FF003A4A00FE01FF00E0F92FF9C67FFDDDE7FEFB4D7F00F5FDFC7FC1F25FF38CFF00FBBBCFFDF69AFE01E800A28A2800A28A2800A28A2800AFED97FE0C95FF0093BBFDB13FECDEBC33FF00AB0B4EAFE26ABFB65FF83257FE4EEFF6C4FF00B37AF0CFFEAC3D3A803FD123C7A481A560E39BDE9FF6E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BCF3C7A481A560E39BDE9FF006E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF6E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BCF3C7A481A560E39BDE9FF006E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF6E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BCF3C7A481A560E39BDE9FF006E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF6E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BF984FF0083827FE0BB5F0F3FE09C5E0897E09FC16D5F40F1B7ED93E2AD0EEFFB2B404B88752D3FE1269BABC30A5A78C3C6D6D04A4A6A1E487BBF0FF87AE5A29B507115DDCA2E9FF34DBBFF0005F5FF0082F8F80FFE0999F0F752F827F042FF0043F1C7ED9BE37D1DA3D174533C57BA57C21D275189913C69E3182072CDA9AC4CD37873C3D234525EDC7957977B2C23227FF2AAF8A3F143C7FF001ABE20F8B7E2AFC52F156B1E36F881E3AD6AF3C41E29F146BD792DF6A9ABEAB7D21926B8B8B89999B6A8DB1410A9115BDBC71410A2451A20004F89DF13BC7DF19BC7BE29F89FF143C53ABF8D7C7BE34D5AEB5CF12F89B5DBB92F352D5352BC90C92CD34D213B5172238208C2436F0AA430C69122A8E0E8A2800A28A2800A28A2800AF41F857F0ABE22FC6FF883E14F855F09BC1FAEF8F7E2178DF58B3D07C2FE14F0DD84FA8EADAB6A77D2AC30C305BC0AC56352DE65C5C4A52DED60592E2E258A18DDD63F85FF000BFE207C68F1FF00853E16FC2DF09EB3E37F1F78DB59B3D07C31E18D02CA5BED4F54D4EFA558A186186253B234DC65B8B994C76F6B6E92DC5C4B1431BBAFFAB27FC104FF00E0821F0EBFE0985F0FED3E327C61B4D23C79FB6578F345B73E21F10C91417DA4FC26D2EEE212C9E0AF033C919D977F384F10F886322E3519D0DB5BBC7611224800DFF82097FC1043E1CFFC131BE1F69DF1A3E3169FA478E3F6CEF1D68108F11F88248E3BFD2FE13697A8450DC5C7823C12F2A144BB560B17887C4312ADC6A5347F66B778EC235593FA0EF1E920695838E6F7A7FDBA57A1D79E78F7A695F5BDFE569401E7793EA7F334D795615696591638A353249248E1123441B9DDDD88555550599988000249005364912247965758E38D59E491D82222202CCEECC42AAAA82598900004938AFE16BFE0E14FF83851EC5FC63FB0C7EC35E2F8DA731DF7873E3AFC75F0EDF12D68C4C969A97C3FF87FA8DA498FB40024B7F11F88EDE4C4396D374D7690DC5C4401DC7FC1C73FF071D91FF097FEC1BFB0278E61719D43C37F1FBE3DF862F5660A17369A87C3CF875AB59C8630E1BED169E27F125ACAE63DAFA5E9AE1CDCDC27F01524924D24934D23CB2CAEF24B2C8CCF24923B16791DD89677762599989666249249A477791DE491D9E49199DDDD8B3BBB12CCECC492CCCC496624924924E69B400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140057D9BFB097EC23FB41FFC1437F680F0A7ECFBFB3D7846F75ED7B5BBCB793C45E2292DE71E19F0178644F1A6A7E2BF15EA691BC3A7699A7C2CCEAAEDF68BEB8F2ACACE29AE2644353F61DFD87FE3B7EDFF00F1F3C29F007E037866E757D6F5BBA865F10788658261E1CF03786D6645D4BC4FE26D4154C365A7D8C4CCD1A3309EFAE3CBB4B48E59E555AFF5EBFF0082557FC12AFF0067FF00F82567ECFBA77C27F853A7C3AEF8F75C8AD753F8B5F16F52B3817C4DE3EF137D9E359D9A70865B0F0E58481E1D0F43864FB3D9DBFEF65F3AF26B8B89000FF82567FC12A7F67BFF008256FC01B0F857F0974C835AF1F6BF058EA1F173E2D6A36B10F137C40F12C50E2579272AD2D8787B4F91E58743D0E1716D676E7CD904B7734F3C9FA01E3D240D2B071CDEF4FF00B74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FFB74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FF00B74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FFB74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801C09C8E4F51DCFAD148BD47D47F3A2803D14F8F464FFC4A8F53FF002FA3D7FEBD293FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401FC36FF00C1EE9AFF00F6E7FC3B6716BF66FB37FC35B7FCB7F3B7F9BFF0CDDFF4CA2DBB7CBFF6B39ED8E7F829AFEED3FE0F55FF009C71FF00DDD87FEFB9D7F09740051451400514514005145140057F691FF06596B7FD8BFB5B7ED7B2FD9BED3E77ECFDE1B4DBE7793B71F1074F39CF952E7D3181F5AFE2DEBFB2AFF8333FFE4EC3F6B7FF00B203E1CFFD581A7D007FA4271E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44AF43AF9E1BA9FA9FE7401E89FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D7A1D1401E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803CF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79F39AF45F0174D57EB65FCAEE800FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C975E87450079E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44AF43AF9E1BA9FA9FE7401E89FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D7A1D1401E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912BCEDBA9FA9FE749401E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E8F0174D57EB65FCAEEBD0E803CF07808020FF6A9E39FF8F21FFC975FCE47FC176BFE0E08F04FFC1387E1DEA3F06BE0AA691E2FFDB0FC71A4CB0687A58D422BFD2FE136957D03A0F1AF8BE18E0C35FAAB06F0FF0087DD966BEB82B7573E5D8C2C65DBFF0082F97FC17D7E1EFF00C132FC057BF047E09DFE95E39FDB33C75A3DC2E8DA3C2F6FA868FF000834ABA8BCB4F18F8D82CA557537F377F873C3AC8F3DF4D135D5EA41631033FF00953FC4BF897E3DF8C5E3CF14FC4EF89FE2AD6BC6DE3DF1AEB37BAFF89FC4FE20BE9B50D5756D52FE669EE2E2E2E277760BB9B643026D82DA058E08238E18D11401FF0013FE2778F7E33FC41F17FC54F8A3E29D63C6BF103C79AEEA1E24F15F8A35EBC9AFF54D6358D4E77B8BABAB9B89999B1BDF6430AED86DE048E08123863445E0E8A2800A28A2800A28A2800AF40F855F0AFE20FC6EF88BE0FF0084DF0ABC29AC78DFE2178F75DB0F0DF853C2FA0D9CB7DA9EADAB6A53A416F043042AC56352C65B9B8936C16B6E92DCDC491C313BABBE147C29F887F1C7E237843E12FC28F09EB1E38F887E3CD6ACFC3FE15F0B683672DEEA7AB6A97B2048A18618558AC68BBA6B99DF6C36D6F1CB713BA451BB0FF55FFF008208FF00C104FE1F7FC1313E1CD87C61F8CFA7E81E3BFDB3BC71A4A49E21F122C11DFE97F09F4ABF8A395FC11E089EE610EB771AE22F10F886258A7D46E55EDED8C7611A2C80189FF042AFF837FBC0FF00F04D8F86F63F16BE304BA378C7F6C2F1DE910CBE25D7469D15FE9BF0B34BBC89247F037832E259B89E3C84F106BF1AA4FA9DC8782031E9F1C71BFF0044E7C7A0123FB28F1C7FC7E8FF00E44AF43AF9E1BA9FA9FE7401E89FF09E8FFA051FFC0D1FFC894C9658BC6314934D22E8F0E8EAD24B2C8CB731B4772A59E491D8DA2C0902DA166662C08624950BCF9D49247146F2CAE91C51A349249230444440599DD9885555504B312000092715FC31FF00C1C1DFF07114D6167F107F60BFD853C693C33DE193C35F1EBE3BF862F7CBF25223245A9FC3DF877ACDA4C5CCAE1E5B1F14788AD0A08834DA5E9970651753C600BFF07127FC1C196DA65D78EBF60DFD853C6C6F5C4579E18F8E9F1F7C397621485A50F6BAB7C3EF8797F69348CD288CC96BE22F13DADC2084B49A7696ED20B8B98FF83777791DE491DA491D99DDDD8B3BBB12599D98966662496624924924E69659649A49269A4796695DA49659199E4924762CF248EC4B3BBB12CCCC4B33124924D32800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AFB3BF60EFD847E3F7FC1443F684F0A7ECEFFB3E78627D63C43AECE971E20F10CF0CCBE1AF02F86629506A7E2AF14EA28862B1D36C62626347713DF5C98ACED124B895168FD83FF60FFDA0BFE0A25FB40F85FF00679FD9E7C2F2EB3E23D6658EEBC41E20BB8E78FC31E05F0C24F145A978ABC55A94514AB61A5D824995520DC5EDC18ED2D239679556BFD783FE0957FF0004ADFD9FFF00E0961FB3E693F0A3E15E9767AD7C42D62D2C6F7E2E7C5CBCB1823F12FC41F13A423ED12BDC6D69EC7C3D6533CB1E87A1C72982CADCEF90CD7524D3B8072BFF0004C1FF0082457C0AFF008262FC01D2BE14FC3096DF5AF1CEAB05AEA1F157E2A5EE8D0C7E22F1F789447BA79659BED2D2D96856323BC1A2E8F13F91676C03C825BA9269A4FD293E3D0091FD9478E3FE3F47FF002257A1D7CF0DD4FD4FF3A00F44FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F3E735E8BE02E9AAFD6CBF95DD001FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC895E875F3C3753F53FCE803D13FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BAF43A2803CF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D1E02E9AAFD6CBF95DD7A1D0079E8F010C8FF0089A9EA3FE5C87AFF00D7DD15E86BD47D47F3A2803E7820E4F07A9EC7D69307D0FE46BE886EA7EA7F9D25007F9E1FFC1EAA08FF008771E463FE4EC3FF007DCEBF84BAFEFE3FE0F92FF9C67FFDDDE7FEFB4D7F00F40051451400514514005145140057F655FF000667827F6B0FDADF03FE680F873FF53FD3EBF8D5AFED97FE0C95FF0093BBFDB13FECDEBC33FF00AB0B4EA00FF448F010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7F3C5FF05F2FF82FAFC3CFF8266F80751F81FF0004B54D1BC6FF00B67F8E3419CE8BA2C4D1EA5A57C20D2B508E6B7B7F19F8CD632D02EA7BC3CBE1FF000E4EFF0069BD922179790A69EA1A7C2FF83827FE0BB5F0EFFE09C9E089BE08FC15D6342F1AFED93E2AD0EF7FB2B418E68B51D3FE11E9DABC314567E31F1A5BC4CC8BA804592E7C3FE1EB968E6BF9123BABA8D34FF9A6FF002C7F89DF13BC7DF19BC7BE28F89FF143C55AC78DBC7BE33D5AEB5BF12F89B5DBB7BCD4B54D4AF2469669A695CE15016D90C112A416F12A430C691A2A8005F89FF143E20FC68F1F78A7E28FC54F176B9E3BF881E35D62F35EF1478ABC477F36A3AB6AFAA5F4CD35C5C5CDCCECC402CC5628630905BC4A90C11C712220E0E8A2800A28A2800A28A2800AF41F855F0ABE21FC6FF885E14F855F0A7C27AC78E3E20F8DF57B5D0FC31E18D0AD5EF352D5351BC90471451C6836C71264C9717333476F6B02493DC4B1C51BB85F853F0A3E237C71F885E14F853F097C1FAE78F7E21F8DF58B3D07C2FE14F0ED8CBA86ABAB6A77B2AC30C30C1129D91A96F32E2E6631DBDAC0B24F712C50C6EEBFEABFFF000413FF008208FC38FF0082637C3CD33E33FC62D3747F1BFEDA1E3AD02DFF00E125F113A26A1A67C26D3351862B8B9F037825E5531A5D46E443E20F11428971A9CD17D9E074B08D16400C3FF837F7FE0857F0DBFE09B9E038FE317C5FD2743F1BFED93E2BD16CC6BFE287862D434EF859A7EA91CB25CF82FC0D3CC84473A22C706BFE208563B8D5274786031582A46FFD35D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9DA5658964965658E38D5E4924908444440599DD9B0AAAAA096624000124E28695625696591638E353249248E1111106E67766215555412CC48000249C57F11BFF071C7FC1C765878BFF60FFD80FC75114DD7FE1BF8FBF1EBC3176B2E42EEB4D4BE1DFC3BD56DD9A304B79D69E25F12D9CACCA165D334D9158DC5C28070BFF0709FFC1C2AB0AF8CBF61AFD857C6CCB76935EF867E3B7C74F0D5D11F6709E6DA6AFF000F7E1FEAB0300672DBECFC47E25B27610813E99A64CB309EE23FE12259659E59279E49269A691E596595DA496596462EF248EE4B3BBB12CEEC4B33124924D24B2C934924D348F2CD2BB492CB2333C9248EC59E491D89677762599989666249249A6500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450015F61FEC3DFB0DFC7DFF008280FC76F0E7C05FD9FF00C2D3EB7AEEAB3C371E21D7EE1248BC35E07F0E0995350F13789F520A62B2D3ECA22ED1C593737D384B4B38A59E455AB5FB097EC1FF00B427FC143BE3FF00857F67DFD9E7C2377AF6BDAD5DC12F88BC452C1327863C07E1A1322EA5E2AF15EA691B43A7E9961096744626E6FAE3CBB3B28A6B89910FFAF0FF00C12B7FE0955FB3D7FC12B7E00D8FC2BF849A5C1AC78FB5FB7B0BFF008B9F16B50B58C789BE20F896183124924CDBE4B0F0FE9F249345A26870482DACE0632B892EE69E7900394FF8244FFC130BE01FFC131FE0437C30F85BA4DAEABE3CD5ED746BCF8A9F15AFACA14F1378F7C44B04FF0069925B8C3CD65A0D9CDBA3D1F458A536F67061DFCCB996599FF5B6BCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F442F51F51FCE8AF9E01391C9EA3B9F5A2803E876EA7EA7F9D2579E9F1E8C9FF8951EA7FE5F47AFFD7A527FC27A3FE8147FF0347FF225007F095FF07C97FCE33FFEEEF3FF007DA6BF807AFEF5BFE0F74D7FFB73FE1DB38B5FB37D9BFE1ADBFE5BF9DBFCDFF866EFFA6516DDBE5FFB59CF6C73FC14D0014514500145145001451450015FDB2FFC192BFF002777FB627FD9BD7867FF00561E9D5FC4D57F691FF06596B7FD8BFB5B7ED7B2FD9BED3E77ECFDE1B4DBE7793B71F1074F39CF952E7D3181F5A00FF465F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00F43AF3CF1EF4D2BEB7BFCAD28FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F201E734ABD47D47F3AF44FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC97401E874579E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44A003C7BD34AFADEFF2B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC97401E76BD47D47F3AFA1EBCF07808020FF6A9E39FF8F21FFC9741F1E8048FECA3C71FF1FA3FF912803D0EBCF3C7BD34AFADEFF2B4A3FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBC8079CD2AF51F51FCEBD13FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D007A1D15E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44A00F43AF3CF1EF4D2BEB7BFCAD28FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F201E734ABD47D47F3AF44FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C97401E875FCD07FC17D7FE0BE5E02FF008266FC3CD53E097C0ED4741F1BFED9FE36D1DA2D174533C5A8695F0834AD4A3289E33F19DBDBCA1FFB4C40CF3F873C3F2B452DEDC886F2F02E9E8C27C4FF0082EE7FC1C0DE0BFF0082707C39D47E0DFC144D1FC5DFB61F8E74B92DF43D2FFB462BED33E136957D04A83C6DE2E8238096BF4055BC3FE1F91A39AFAE192EEE4C5630B19BFCB17E287C4FF1F7C68F883E2EF8A9F147C53AC78D7E2078EF5CBFF11F8ABC51AF5E4D7DAA6AFAB6A3334F737371713333100B08E1894AC56F02470428914688001DF147E28F8FFE357C41F167C54F8A5E2AD63C6DF103C71ACDE6BFE29F13EBB772DEEA7AB6A97B219269E79E56660AB911C10A6D8ADE048E1851228D547034514005145140051451400577DF0BBE177C41F8D5E3FF000AFC2DF857E12D6BC73E3FF1AEB167A17867C2FE1FB29AFF0053D5352BD95628628A1855B6449B8CB7373318EDAD2DD24B8B99628237757FC2AF855F10BE37FC45F07FC26F853E13D67C71F10FC79AE58F873C2BE16D02CE6BED4F56D575199608218608558AC6858CB737126C82D6DA396E6E248E189DD7FD527FE085BFF06FF7817FE09ADF0DECBE2C7C5D9747F197ED83E3CD22DE5F13EBE74E86FF004EF85BA6DDC4257F03782AE249FE5950308FC41AF46A971AA5D2343098F4F8A38980367FE0829FF0411F873FF04C2F87F67F193E2FD9E93E3CFDB2FC79A25B8F11F88A48E0BFD27E14697791A4D2F82BC0CF245FBBBA05847E21F1021FB4EA53C7F67B778EC2248DFF00A4DAF3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC8940078F7A695F5BDFE5695E6F2491C31BCB2BA471468D249248C112344059DDDD885555505999880002490057A2CB2C5E318A49A69174787475692596465B98DA3B952CF248EC6D1604816D0B33316043124A85E7F81BFF0083893FE0E0C834EBBF1CFEC1DFB09F8DBED80437BE19F8EBF1F7C3B77E4AA3CA25B3D5BE1EFC3CBEB49A462E23325B7887C4F6B729E5967D3B4C667171728015FF00E0E13FF83855ECDFC5FF00B0DFEC31E3189A62B7FE1DF8EBF1D3C3B7C59AD8E5ED351F87FF000FB53B494289F225B7F12788A091BCA01F4CD398C8D717117F086EEF23BC923B3C92333BBBB1677762599D98925999892CC49249249CD0EEF23B492333BBB33BBBB1677762599999892CCC492CC49249249C9A6D00145145001451450014514500145145001451450014514500145145001451450014514500145145001451450015F61FEC39FB0F7C77FDBFFE3DF853E01FC06F0C5D6AFAD6B777049E22F114B04C3C37E05F0D09E34D4BC51E27D4511A1B1D3EC6162D1C6CDF68BEB8F2ED2D239679556AE7EC19FB087C7EFF0082897ED0DE12FD9DBF67EF0C5C6AFE20D7AE12E3C43E239E0987867C07E1885C1D4FC55E29D4557C9B1D36C61DDE523BACF7F74D0D959A4B7132257FADBFFC130FFE0917F023FE098BF00B4AF853F0BA5835AF1BEAB05AEA1F14FE29DF68D0C7E23F1F7894460CF34D37DA9A4B2D0ACA4678745D1A27FB3D9DB057712DD4934D200751FF0004ABFF008255FECFBFF04ACFD9FB4FF84FF09B4E8B5CF1E6BB15A6A5F16BE2D6A76900F13F8FFC4EB6E8B3BBCEA824B0F0ED84BBE1D0F4285C5BD9DBFEF25F3AF26B8B897F50ABCF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C89401E875E79E3DE9A57D6F7F95A51FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE403CE6957A8FA8FE75E89FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092E803D0E8AF3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E803CED7A8FA8FE75F43D79E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF00225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B7900F39AA975A85869EAB25FDF59D9464F0F77730DB21C7240699D01207606BF9D6FF0082EA7FC17A7E1B7FC1332C6EFE037C059F42F8B9FB5F6B366A6E74CB96493C23F072C2EE13245AD78D12D6E269752D7E54689F49F09A3DA96495750D4EEA0B68A2B4BFFF0038BFDA63F6FAFDB07F6BEF146A9E29FDA03E3FFC48F1E4BAA5D4B72341BBF136A767E10D355D8ECB6D23C2763716FA0E9D6F0C7B618C4162B218D104B248C37100FF0071EB2D6748D4B234ED574EBF23A8B3BDB6B923EA2195C8EB5A55FE121F05FF006AEFDA5BF675D7ACBC4BF03BE3AFC53F85FABE9F7097504DE0FF001AEBDA3DB3CB190545DE9F6D7ABA7DFC44AAEF82F6D6E21700078C802BFB4BFF00823A7FC1DA1F109BC63E13FD9DBFE0A4834AF12E85E23D42C341F0BFED2B611C3A26ABE1FBFBC920B2B3B7F89BA5DA5AB69DA8E8D34CCA66F13D8C76579A6B3C936A36F7B6CC66B500FEF87C7BD34AFADEFF002B4AF3AAEF6CAF6CFE24D95AEA1A7DD410D8456F0DDD95E5ACB1EA76DA8DAEAB12CD6F736F3C4D6F1B40F14092452C6D2A4C92AB290A016B1FF0810FFA0A9FFC021FFC97401E76BD47D47F3A2BD147808647FC4D4F51FF002E43D7FEBEE8A00F3A6EA7EA7F9D25388393C1EA7B1F5A4C1F43F91A00FE12BFE0F55FF9C71FFDDD87FEFB9D7F0975FDDA7FC1EAA08FF8771E463FE4EC3FF7DCEBF84BA0028A28A0028A28A0028A28A002BFB2AFF8333FFE4EC3F6B7FF00B203E1CFFD581A7D7F1AB5FD957FC199E09FDAC3F6B7C0FF009A03E1CFFD4FF4FA00FF00483F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E875FCD27FC17C7FE0BE5F0F7FE0995E00BDF829F056FB49F1D7ED95E3BD22E63D174586582FB4AF841A55DC1E5C7E33F1AA2BB01A8379BBBC3BE1E6533DF4F1B5D5DAC56309331FF05F0FF82F9FC3CFF8265F80750F825F05752D1FC6FF00B66F8E7429FF00B0B4489E2D474AF845A55F45241078D3C6888CD12EA3B8B49E1EF0ECC7ED17F2C5F6ABB8A3B08F74DFE54FF143E28FC42F8D3E3FF157C52F8ADE2FD77C79F107C6DAC5E6BDE28F15F893509F53D5F58D52FA669AE2E2E6EAE1DDB6EE6D90C11EC82DE1548208E38634450067C4DF899E3DF8C9E3EF15FC50F89FE29D63C6BE3DF1BEB57DE20F14789F5EBD9AFF0054D5B54D42669EE279E7999982066F2E0823D905B4091DBDBC71C31A22F0B451400514514005145140057A1FC27F851F10FE397C47F07FC25F851E13D63C71F10FC7BADD9F87BC2BE17D06D25BDD4F56D52FA411C50C30C4AC5638C6E9AE6E24DB05ADB472DC4F2470C6EE1BF0ABE157C43F8DFF0010FC27F0A7E14F84F58F1BFC41F1BEB16BA17863C31A15AC979A8EA9A8DE481238E38D0111C518265B9B994A416D02493CF247146EE3FD51BFE0DFDFF8216FC37FF826DF8023F8BFF17F49D07C71FB64F8B346B5FF008483C54D045A869FF0B74ED5166927F05F816E278C98A648D22835FF001042B15C6A9708F0C262B0548DC0377FE0823FF0414F87DFF04C3F87163F17FE3258E85E3BFDB33C75A4A49E22F128B78EF74CF851A4DFC3148FE06F04CD3C6585D463F77E20F1046239F52B90F6F6DE5584688FFD265145007CF0DD4FD4FF003A8E49238637965748E28D1A49249182246880B3BBBB10AAAAA0B3331000049200A74CEB12C92CACB1C51ABC9249210891A202CEEEED85555505999880002490057F0A3FF070AFFC1C2888BE34FD863F617F1B4A97492DEF867E3B7C75F0C5E14F23CB32DA6AFF000F7E1FEAF6CE099490F67E24F1258C988879FA669938945C5C460177FE0E0EFF00838867B2B5F883FB057EC2DE339627BCF33C35F1EBE3BF866FB61448FCC8753F87BF0F756B49371765925B2F13F88ECE451186974BD327320BA9E3FE0F2492496479657796591DA49249199E491DC96777762599D989666624B1249249A59659679649E79249A69A4796596576925965918BBC923B92CEEEC4B3BB12CCC49249351D00145145001451450014514500145145001451450014514500145145001451450014514500145145001451450015F687EC1BFB077ED03FF0513FDA0BC2FF00B3CFECF5E189B59F10EB32C777E21F10DCC53A7867C09E178E78A2D4BC55E2AD4638DD2C74CB14946D427ED17B7063B4B48E59E555AA7FB0EFEC35F1F7FE0A05F1DFC37F017E00785E7D675DD56786E3C43E20B98E58FC35E07F0E09912FFC4DE27D4511A3B2D3ECE32CD1C793737D384B4B48E59A40B5FEB83FF048BFF82627C03FF82647C071F0C3E16E8F67AAF8F355B4D1AEFE2A7C56BDB1813C4FE3EF11AC171F6A966B9DAD3D9E83693EF4D1B458E636D67061D8497324D3380757FF0004ACFF0082577C00FF0082587ECF7A47C26F857A6DAEB7E3FD5ED2CAFBE2DFC5CBDB1863F12FC42F13A459B89A49B0F2D8787EC667961D0F448A53059DB61E5335DC93CF27EA05145007CF0DD4FD4FF3A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF006F75E8740057CF0DD4FD4FF3AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF6F7401E8745145007CF0DD4FD4FF3A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF006F75E8740057CF0DD4FD4FF3AFA1EBE796072783D4F63EB400DAFE69FF00E0BABFF05FEF0CFF00C13ABC13E21FD9BFF66CD574CF15FED83E3BD2C4175A85B4B6D7FA3FC0BD127B79506BDAF00D2473F8C2F52E837877412AFF006611C9A9EADE4449656DA8647FC1793FE0BD1E10FF00827E785354FD9D7F674D634AF16FED7FE2CD1E64B8BAB7FB3EA9A37C10D26FE27861D7BC42A7CCB4B8F17DC2B34DA0F8725598DBAA2EA7ACC11DABD9417FFE65DE35F1AF8BBE23F8B3C41E3AF1EF89359F17F8C7C55AADE6B7E23F13788751BAD575AD6B56D4277B8BCBFD4750BC926B9BAB9B89A4779249646624FA605001E35F1AF8B7E23F8BBC47E3CF1E788B57F16F8CBC5DACEA1E20F1378975EBEB8D4F58D6F5AD56EA4BCD4351D46FAEE496E2E6EAEAE6692596595D99998F35CBD1450014A0904104820820838208E410472083D0D251401FEB4FFF0006B37ED5DE21FDA8BFE0985E11B6F18EA975AD78B7E04F896FBE09EA7A9DE5C3DCDD5CE97E1B822D47C28B3CD21691DEDBC31ABE95680BBB111DBC6AB845503FA49AFE317FE0CA191CFEC1DFB52445D8C69FB55CCE884FCAAD27C2AF87E1D94762C1133FEE8AFECEA80157A8FA8FE7450BD47D47F3A28006EA7EA7F9D252B753F53FCE92803F807FF83E4BFE719FFF007779FF00BED35FC03D7F7F1FF07C97FCE33FFEEEF3FF007DA6BF807A0028A28A0028A28A0028A28A002BFB65FF0083257FE4EEFF006C4FFB37AF0CFF00EAC2D3ABF89AAFED97FE0C95FF0093BBFDB13FECDEBC33FF00AB0F4EA00FF448F1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E5272393D4773EB5F4357CF0BD47D47F3AFA1E800AF3CF1E920695838E6F7A7FDBA57A1D79E78F7A695F5BDFE569401E7793EA7F334AA4E4727A8EE7D69B4ABD47D47F3A00FA1E8A28A00F3CF1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E5272393D4773EB5F4357CF0BD47D47F3AFA1E800AF3CF1E920695838E6F7A7FDBA57A1D79E78F7A695F5BDFE569401E7793EA7F334AA4E4727A8EE7D69B4ABD47D47F3A00FA1E8A28A00F3CF1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E5272393D4773EB5F4357CF0BD47D47F3AFA1E800AFE617FE0E07FF82ED7C3AFF8271F8225F827F06357D0FC6BFB6478AF42BFFEC8D023962D4B4EF84BA7EAD0A4365E32F1A43133C6B7C855EE741F0EDCB24FA8491ADC5CC6961F34BB9FF05F4FF82F8F807FE0999F0F355F825F03F53D07C6FF00B68F8DB4529A1E88668B51D2FE10695A927971F8D3C696D6F3061A90B76927F0DF87E668A4BEB810DE5DA8D3D089FF00CAAFE297C51F881F1ABE20F8B3E2A7C53F15EB1E36F881E38D66F35FF14789F5DBB96F753D5B54BE94CB3CF3CD2B31080911C1047B61B7852386144891540037E277C4FF00881F19FC7BE28F89FF0014BC59ACF8E3C7DE33D5AEB5BF1378A35FBB7BDD4F55D4AF2569669A695F84405B6436F0AC76F6D0AA430451C48A8383A28A0028A28A0028A28A0029402C42A824920003924938000EE49E05256BE817D6DA66BBA2EA5796CB796761AB69D7B7568FF72EADED6EE19E7B77FF006668D1A33ECD401FEA4FFF0006CEFF00C116FC0DFB167ECE9E08FDB03E32784ED352FDABFE3DF83B4EF13E9D3EB36F1DCDCFC23F873E27B48753D0FC35A443321FECBF10EB3A5CF697FE29B8548EFA19254D19DD52D2657FE9BFC7A481A560E39BDE9FF6E95C2FECAFF14BC0BF1B3F66DF817F15FE19EAD61AD7813C79F0ABC0DE23F0CDFE9B34535AB69BA878774F962B63E4B32C37362C5ECAF2D1B6CB67776F35ACD1C72C2E8BDD78F7A695F5BDFE569401E7793EA7F334D795615696591638A353249248E1123441B9DDDD885555505999880002490053649238637965748A2891A49249182471C680B3BBBB10AA8AA0B333101402490057F0A9FF000709FF00C1C2AF6EFE2EFD873F616F19C2CE5750F0E7C76F8E9E1CBDF31A1605AD350F007C3DD52D25D825C89AD7C4BE2281DBCA024D334D6DED3DCC601DBFFC1C6FFF00071E09D7C61FB077EC07E3B5F2C497DE1AF8F9F1EFC2F76AFBD543DA6ABF0EBE1E6AD012A017325A7893C4B632965093699A64CACD3DC2FF000252CB2CF2C934D23CD34CEF2CB2CAED2492C92316792476259DDD896666259989249269AEEF23BC923B3C92333BBBB1677762599D98925999892CC49249249CD36800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AFB3BF611FD837F685FF0082887C7EF0BFECFDFB3C7846EB5ED7F58B9826F11788678A58BC31E04F0D0991351F14F8AB545468AC34DB08599D5093737D3F97676514D712A21ABFB0E7EC39F1E7FE0A01F1EFC2BF013E02F85EEF58D675ABCB693C47E2396DE61E1AF02786BED11C7A978A7C51A8A234363A75842CCF1C6CDF68BFB8F2ECECE396E2555AFF005ECFF8256FFC12AFF67CFF008256FECFFA7FC28F84BA6C5AD78EF5D86CF52F8B7F16753B587FE126F1FF0089D2DD16791E709E6587876C253243A1E870B8B6B2B7FDEC825BC9AE279000FF008257FF00C12AFF00679FF82577C02B0F857F08F49B7D5FC7BAEDBD8DF7C5CF8B7A85A20F13FC42F12C50FEF249A76324961E1FD3E49258744D0E0905AD9C04CAEB25DCF713C9F7EF8F49034AC1C737BD3FEDD2BD0EBCF3C7BD34AFADEFF2B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF002B4AF3AA00729391C9EA3B9F5AFA1ABE785EA3EA3F9D7D0F400579E78F49034AC1C737BD3FEDD2BD0EBCF3C7BD34AFADEFF2B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF002B4AF3AA00729391C9EA3B9F5AFE767FE0E0CFF83837C23FF04F6F08EBBFB31FECC3AFE8BE2BFDB27C59A1CD6DA86A56A6DB57D2BE02E97AB5B3C506BDADC644D613F8DA485CDDE81E1DBB128B3FF46D5358B36B392D6DEF7CCBFE0BD1FF0005E5F09FFC13FBC23ADFECE5FB39EB1A278AFF006C1F15691F67BAB98A68354D2FE06E95AAC0A535FF00105BC323249E319EC26FB5786FC3F74C9F6669ACF5AD5209AC3C8B2D43FCCCBC71E38F177C4AF17F88BC7BE3DF116ADE2CF1978B756BCD73C47E23D72F26D4355D6356D4266B8BBBDBDBBB8779669A695D98966C0185501400000F1C78E3C5FF0012BC5DE21F1E78FBC47ABF8BBC65E2BD56F35BF11F8935EBE9F51D5F58D56FE67B8BBBEBEBCB9779669A695D99999B033B5405000E568A2800A28A2800A28A2803FD1C7FE0CDD247EC21FB48E091FF001955A87FEAAAF86F5FD7C64FA9FCCD7F20DFF066EFFC9887ED23FF006755A87FEAAAF86D5FD7C500381391C9EA3B9F5A2917A8FA8FE745007A29F1E8C9FF008951EA7FE5F47AFF00D7A527FC27A3FE8147FF000347FF0022579DB753F53FCE92803F86DFF83DD35FFEDCFF00876CE2D7ECDF66FF0086B6FF0096FE76FF0037FE19BBFE9945B76F97FED673DB1CFF000535FDDA7FC1EABFF38E3FFBBB0FFDF73AFE12E800A28A2800A28A2800A28A2800AFED23FE0CB2D6FF00B17F6B6FDAF65FB37DA7CEFD9FBC369B7CEF276E3E20E9E739F2A5CFA6303EB5FC5BD7F655FF000667FF00C9D87ED6FF00F6407C39FF00AB034FA00FF484E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC895E875F3C3753F53FCE803D13FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BAF43A2803CF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF2257A1D7CF0DD4FD4FF003A00F44FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3E735E8BE02E9AAFD6CBF95DD001FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC895E76DD4FD4FF003A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFF00C790FF00E4BAFE723FE0BB7FF0703F82FF00E09C3F0EB53F835F055347F177ED87E38D2648342D28EA115F699F09B4AD4219117C6DE2EB78A105AFE34F9FC3FA03BC72DEDC98EEAE8C7631319777FE0BE7FF0005F2F87FFF0004CAF005EFC13F8297BA4F8EBF6C9F1DE913C7A368D14D05EE93F08749BC81913C67E3345671FDA3870DE1EF0EBA89EFA602EEEC436309337F952FC4CF897E3BF8C7E3EF167C50F89BE28D5FC69E3DF1C6B77DE21F14789B5DBC96FB53D5B55D46769EE2E2E27999982866F2E08136C16D02476F0471C31222804BF147E2878FFE357C42F177C55F8A5E2AD63C6BF103C75ADDEF887C55E28D7AF26BED5357D56FE5324F717171333BED5CAC5044A4456F0471C10A2451A20E068A2800A28A2800A28A2800A28A2800A28A2803FAAFFF0082047FC1C53AFF00FC137A2B6FD98BF697B2D63C79FB246A9A85DDDF87754D31A4BBF157C18D67529CDC5CDC6936723326ABE0ED42EE496E356D1A1115DD95CCD26A5A719DCCD6573FDE158FFC167BFE096DF117E1EC3F12CFEDB9F01FC3FE1BB3B19350106A7E33B18BC4AF1CF1ABCD0BF84AEBEC3E258EEADCDB846B74D2E692477C202002DFE31D4B93D3271E99A00FED6FFE0B6FFF0007355A7C65F0F78A7F659FF82796ADAEE99F0FB5DB5BBD13E227ED0D736F71E1FD7BC4FA6CE24B7BCD07E1D58193FB4347D22F60263BDF11DDBDB6A7750BBDB58DA5AC44DD4DFC52BBBC8EF248ED2492333BBBB1677762599DD9896666624B3124924924934DA2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AFB3FF60DFD843E3F7FC1447F686F097ECEFF00B3EF862E358F106BD70971E21F114F04CBE1AF02786219106A9E2AF14EA2AA61B0D36C2227CB47713DFDD343656692DC4C8947EC1BFB07FED01FF0512FDA0FC2DFB3C7ECF7E189B58F10EB534775E21F10DCC532F86BC09E188E78E3D4BC55E29D463468EC74DB1493288CDE7DF5C18ECED1259E555AFF005E2FF82567FC12C3E017FC12BFF679D27E11FC2BD3EDB5CF1EEAF6D677FF0016FE2DDF58C317897E21789D62CCF34B280F2D8787EC659258743D12294C1656D8790CD7724D3C801C97FC130FFE0915F023FE098BF00F4BF855F0BA58359F1BEAD0DAEA3F153E29DF68D0A788FC7BE2610AFDA2596717265B2D06CA52F0E8BA344E2DECED807712DD493CF27E949F1E8048FECA3C71FF001FA3FF00912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79F39AF45F0174D57EB65FCAEE800FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C975E87450079E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44AF43AF9E1BA9FA9FE7401E89FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D7A1D1401E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912BCEDBA9FA9FE749401E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE7F9F6FF008385FF00E0A7B27FC12CBF655D3A1F867A9D96A5FB4A7C79BBD4FC27F0B2D6E604D9E10D2AD6D0B7897E23DE5B99E5F38684B716B69A2DB48823BBD6AF6DDDF7DB595DA1FE823C05D355FAD97F2BBAFF0031BFF83C57E256BBE28FF82A2786FC017B77349A0FC37FD9FBC0ABA25A348C61B79FC51A8EBDAA6A8F1C47E5469A5861DEC396DA327E51401FCAF78DBC6DE2CF891E2EF11F8F3C77E20D53C55E31F16EB17DAF7893C45ADDE4D7FAAEB1ABEA570F737B7D7D7770EF34D3CF348CECCEC7190A30A001CBD145001451450014514500145145007FA497FC197FA00D73F610FDA6F375F66FB37ED5575FF2C3CEDFE6FC2AF877FF004D62DBB7CBF7CE7B639FEC6FFE1021FF004153FF008043FF0092EBF907FF0083287FE4C3FF006A5FFB3AB97FF554FC3FAFECEE803CF47808647FC4D4F51FF2E43D7FEBEE8AF435EA3EA3F9D1401F3C1072783D4F63EB4983E87F235F443753F53FCE92803FCF0FFE0F55047FC3B8F231FF002761FF00BEE75FC25D7F7F1FF07C97FCE33FFEEEF3FF007DA6BF807A0028A28A0028A28A0028A28A002BFB2AFF008333C13FB587ED6F81FF003407C39FFA9FE9F5FC6AD7F6CBFF00064AFF00C9DDFED89FF66F5E19FF00D585A75007FA24780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBF9E8FF0082F7FF00C17D3E1E7FC1327C057BF053E0B6A1A478E7F6CCF1CE8B71FD87A244F0EA1A47C23D2AEE36862F1978D9524289A812E64F0F787A4CDC5FCB19BABA8E2B08B74D83FF0007037FC176BE1C7FC1387C1327C13F835ABE8BE35FDB27C59A05FB68FE1F8DD351D37E1369BAB44B6F65E33F1A47116816F43472CFA0F872E244B9BF9225B9B98934F1BE5FF2C3F89FF143E207C67F1EF8A3E287C53F166B5E38F1F78CF56BBD73C4DE28D7EF24BDD4F55D4AF6569A79E69A438440CDB21B78563B7B685520B78A389111400F89DF143E217C68F1F78A7E28FC55F17EBDE3CF881E36D62F35EF1478AFC4BA85C6A7AC6B1AA5FCCD35C5CDD5D5CBBBE3736C8604D905B42B1C16F1C50C688BC1D14500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450015F627EC39FB0DFC7BFF0082817C78F0DFC04F803E199758D7B55962B9F10F882EA39A3F0D781FC36B32477FE26F13EA31C6E965A759A3131C7CDC5ECFB2D6D23926902D5AFD847F60EFDA17FE0A21F1FBC31FB3F7ECEFE12B8D7BC41AC5C433F887C41709243E18F0278696645D47C53E2AD4F698AC74DB084BBA4796BABF9C259D94335C4A887FD78BFE095FFF0004ABFD9EBFE095FF000074FF00857F09349B6D63C7DAE5B58DF7C5BF8B77F6712F8A3E21789228409649A73BE5B1F0FD84AD2C5A268704A2D6CE0265712DDCD3CF200729FF00048AFF008262FC05FF0082647C051F0BBE1769167AAF8F355B3D16EFE2A7C56BDB1813C4DE3EF1224171F6B9A5B9D86E2CF40B4B832268BA24729B7B2B7219FCDBA92699FF005AEBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBFCB4BFE0EEBFF94BEF897FEC83FC22FF00D17E20AFF52DF1E920695838E6F7A7FDBA57F95A7FC1D8BFF2961D5BFEC81FC26FE7E24A00FE6768A28A0028A28A0028A28A0028A28A00FF004B5FF83287FE4C3FF6A4F7FDAAE6FD3E14FC3EFF00115FD9DD7F105FF066F123F60EFDA43048FF008CACD4BFF554FC34AFEBDB27D4FE66803E885EA3EA3F9D15F3C0272393D4773EB45007D0EDD4FD4FF3A4AF3D3E3D193FF12A3D4FFCBE8F5FFAF4A4FF0084F47FD028FF00E068FF00E44A00FE12BFE0F92FF9C67FFDDDE7FEFB4D7F00F5FDEB7FC1EE9AFF00F6E7FC3B6716BF66FB37FC35B7FCB7F3B7F9BFF0CDDFF4CA2DBB7CBFF6B39ED8E7F829A0028A28A0028A28A0028A28A002BFB65FF83257FE4EEFF6C4FF00B37AF0CFFEAC3D3ABF89AAFED23FE0CB2D6FFB17F6B6FDAF65FB37DA7CEFD9FBC369B7CEF276E3E20E9E739F2A5CFA6303EB401FE8CBE3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC89401E875E79E3DE9A57D6F7F95A51FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE403CE6957A8FA8FE75E89FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92E803D0E8AF3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E803CED7A8FA8FE75F43D79E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BA00F43AFE68BFE0BE5FF05F2F87DFF04CCF87BAAFC12F821AAF87FC71FB6978D34564D134217106A7A67C1FD33528B643E33F1BDADBCA59351103B5CF873C3D70D0CBA84CB15DDD2AE9EADE762FFC176FFE0E05F05FFC1383E1C6A7F073E0A0D13C5BFB62F8DF4978740D21EFE3D474CF851A5EA11BC63C6BE2FB682346FB72465A4F0F6832491CB7D7423B9BA09611B997FCB13E297C51F1FF00C6BF885E2EF8ADF14FC55AC78DBE20F8EB5BBCF10F8ABC51AEDE4B7DAA6AFAADF48649A7B89E6676DAA36C5042A4456F6F1C56F0A2451A20005F8A5F14FE20FC6CF883E2BF8A9F153C59ACF8E3E2078DF58BBD7BC51E28D7AEE4BDD5356D4EF6569679E79A5248504848618C2436F0AA430C69122A8E028A2800A28A2800A28A2800A28AFE82BFE0861FF042FF008A7FF0556F8A2BE33F1A43AD7C3EFD917E1FEAF6A3C7FF0010FEC925BDD78D2F61713C9E04F01CB3AAC779A8DC4681358D561F32DF43B59D5998DEC9045401F8257DE17F12E99A2E8FE24D47C3DADD8787BC42F791E83AEDE6977D6DA3EB5269F22C57E9A56A5340967A83D94AEB1DD2DACD2B40ECAB285240AC2AFF0064DFDACFFE094DFB12FED53FB1368FFB0F5F7C1FD17E1F7807E1F68B1DA7C19F10F84A0B2B7F11FC2CF10D9D935AD9F89347BC6B159EF67BB90F99E23B6BD9DD3C448F30D41DA668E78BFCAA3FE0A25FF04EFF008F5FF04DCFDA035FF821F1AB4599EC45C5D5EFC3EF883656B38F0B7C46F0A09D92CB5ED0EEDD7609BCBD89AA697238BCD2EF37C1709B4C52CA01F04D145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140057D89FB0E7EC39F1EBFE0A01F1E7C2DF017E027856F359D6358BCB693C49E2392DE7FF846BC07E1AF3E38F51F1478A75248DA1B0D3AC616668E376FB45F5C797676714B712A255BFD83BF610F8FDFF0510FDA17C25FB3C7ECFDE17BAD675ED76EA29BC43E239ADE71E1AF01F86239506A7E2AF14EA48861B0D36C22626347713DF5C986CACE396E26443FEB6DFF0004C3FF0082457C07FF008262FC04D33E157C2D922D67C6DABC56BA97C53F8A5A869100F1278EFC4DE4A0B8925B813F9967A058CA1E1D13468985BD9DB0123ACB772CF3C801D57FC12B7FE0957FB3DFFC12B7E00587C29F84BA643ACF8F35E82CB51F8B7F16751B588789BE20789A3802CD2493ED3258787AC246921D0F4381C5B59DBFEF6412DE4D713C9FA835E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44A00F43AF3CF1EF4D2BEB7BFCAD28FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F201E734ABD47D47F3AF44FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C97401E874579E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D15E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912800F1EF4D2BEB7BFCAD2BFCAD3FE0EC5FF94B0EADFF00640FE12FF3F1257FAA671E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79FF2C2FF0083B62C7FB3BFE0ADFAED979BE7791F017E122F99B3CBDD95F1136766E7C63763EF1CE33C671401FCC751451400514514005145140051451401FE8E7FF066F7FC9867ED1FFF00675BAA7FEAA8F8655FD7AD7F259FF065FE8035CFD833F699CDD7D9BECDFB56DF7FCB0F3B7F9BF0A3E1BFFD358B6EDF2FFDACE7B639FEC63FE1021FF4153FF8043FF92E803CED7A8FA8FE7457A28F010C8FF89A9EA3FE5C87AFFD7DD1401E74DD4FD4FF003A4A71072783D4F63EB4983E87F23401FC257FC1EABFF38E3FFBBB0FFDF73AFE12EBFBB4FF0083D5411FF0EE3C8C7FC9D87FEFB9D7F09740051451400514514005145140057F655FF0667FFC9D87ED6FFF006407C39FFAB034FAFE356BFB2AFF008333C13FB587ED6F81FF003407C39FFA9FE9F401FE907E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0EBF9A3FF0082F97FC17C7C01FF0004CAF87D7DF057E0A5E68FE3BFDB2BC75A4CD168BA2A5C4377A57C21D26FA0744F1AF8CD23F301D44060FE1EF0EBEC9EFA7DB777461B188998FF0082F87FC17D3E1EFF00C132BC037BF04FE0ADFE95E3AFDB2FC75A35C0D134585EDF50D1FE1169577118A3F1978DD565C26A0DE66FF0EF87995A7BF9A33757690D8C5BA6FF002A7F89DF13FE207C67F1F78ABE28FC53F16EB9E3AF881E36D66F75FF001478ABC477F3EA5ABEAFAAEA1334F7173737570EEF8DCDB218536C16F0AC70411C70C688A00DF89BF133C79F193C7FE2DF8A3F13BC51ABF8CFC7BE39D72FFC45E29F136B9772DEEA7AB6ADA94EF7173713CF2B310A19FCB8204DB05B4091DBC11C70C688BC2D14500145145001451450014515FD06FF00C10BBFE0861F153FE0AA3F15ECBC71E348352F027EC81F0FF5CB57F88DE3D7865B6BEF1B4F69324B3780BC04F24463BAD4AF551A0D5B5705AD743B66918F9B7AD0C04013FE085FFF00042EF8A7FF000555F8A3078E3C691EAFE00FD90BE1FEBB6CBF10BE201B4921BCF1ADDDA3C5733F807C0724EAB15CEA5771158B56D613CEB6D0EDA62CCB25E3430D7FAC6FC10F821F0B7F671F859E0DF82FF063C1BA3F80FE1C780F47B5D0FC37E1BD12D63B5B4B4B4B58C219652803DD5EDD386B8BDBDB8692E6EEE649279A47772693E077C0EF857FB37FC2CF06FC17F82DE0CD17C03F0DFC07A3DAE89E1BF0DE8567159DA5ADADAC6A8669BCA556BABEBB70D717D7D7064B9BCBA9259E791E47627D62803E786EA7EA7F9D7C23FF00050BFF00827BFC06FF00828FFECFDAFF00C0AF8DDA2C4249639AFF00C09E3DB1B581BC55F0EBC54B115B2D7FC3F78E0384DE122D534C790596AD65BEDAE909F2A48BEEF6072783D4F63EB4983E87F23401FE31DFF0514FF82777C7AFF826D7ED01AEFC0FF8D7A3C92D9F9935FF00C3FF00885A7DACEBE15F88DE156908B3D7742BB70516654648B55D2A490DEE937BBEDEE531E54927C0F5FED4FF00B73FFC1377F67DFF00829AFECEDE35F813F1CF40B717C6DD6FBE1CFC43B3B4B73E2CF86BE2E36F78965AFE817CE86510994451EADA5B3FD8F55B2DD6F7319710CB17F92DFF00C1487FE09BDFB437FC1327F686D77E03FC78D0D8C3BEE352F87DF1074C82E1BC25F11FC246E648ACB5FD02F658D17CCDAAB1EA9A5CA45EE937A1EDAE5388E49003F3F28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BECFFD837F60FF008FFF00F0512FDA13C2BFB3C7ECF9E189F58F10EB734775E21F10DC4332F86BC09E188A544D4BC55E28D4110C563A6D8C6FFBB46713DF5C98ACED124B89516AAFEC37FB0D7C7BFF008281FC79F0DFC03F803E1A9756D7755962BAF10F886EA39D3C35E07F0D24F1C7A8789FC4FA845148B65A759A3931A60DC5EDC79769691C9348AB5FEB81FF00048AFF008262FC06FF0082647C055F85BF0BB4AB4D5BC75AA5A68B77F153E2B5ED8C31F897C7DE25582E3ED53CB71B4CF65A0DACE644D1B458E536F656E433F9B7324B3380757FF04ABFF82577C01FF82577ECF3A4FC24F855A7DBEBBE3ED62DED750F8B7F172FEC618BC4BF10FC4E10B4D34B20DF269FE1FD3E4924B7D0B4486530595A85795A7BB927B893F5028A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FF00B7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FF00B7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775FE5A5FF0775FFCA5FBC4BFF641FE117FE8BF1057FA96F80810355C8C7365D7FEDEEBFCB4BFE0EEBFF94BEF897FEC83FC22FF00D17E20A00FE5FE8A28A0028A28A0028A28A0028A28A00FF4B7FF0083287FE4C33F6A33FF00575B71FA7C28F877FE35FD9CD7F18FFF000650FF00C985FED45FF675D73FFAAA3E1D57F671400ABD47D47F3A285EA3EA3F9D14003753F53FCE9295BA9FA9FE749401FC03FF00C1F25FF38CFF00FBBBCFFDF69AFE01EBFBF8FF0083E4BFE719FF00F7779FFBED35FC03D0014514500145145001451450015FDB2FFC192BFF002777FB627FD9BD7867FF0056169D5FC4D57F6CBFF064AFFC9DDFED89FF0066F5E19FFD587A75007FA2478F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF2B4AF3AA00729391C9EA3B9F5AFA1ABE785EA3EA3F9D7D0F400579E78F49034AC1C737BD3FEDD2BD0EBCF3C7BD34AFADEFF002B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF2B4AF3AA00729391C9EA3B9F5AFA1ABE785EA3EA3F9D7D0F40057F30DFF0007037FC176BE1C7FC138BC12FF0004FE0DEADA3F8DBF6C7F16E837EFA4787E264D434CF84FA66AB10B7B3F1978D0445A14BE0F14B3685E1D9A45BABE9625BAB9852C06F97A1FF82FC7FC17ABC0BFF04C6F87DA97C10F8317FA3F8BFF006D2F1D787BCCF0FE84E63BED3BE1268DABC0C967E39F18DB23106F1E266BAF0D6833947D4A448EF2E5469EB99BFCA9BE297C52F885F1AFE2078AFE2A7C55F16EB3E39F883E37D62F35EF1478A75FBB92F754D5B53BE95A69E79E690E154336C86089520B7895218634891540033E277C4FF881F19BC79E28F89FF14BC5BAD78E3C7DE33D5AEF5CF12F8A3C417B2DFEA9AAEA57B2B4B34D3CF293B5016D905BC412DEDA15482DE28E18D11783A28A0028A28A0028A28A0028A2BFA10FF82177FC10BBE2AFFC1543E2BDAF8DBC7961AEF80BF63DF026A90C9E3FF8866DE5B2B9F1BDE5B4B1C8FE02F014D2A28BBD46EE3CAEAFAC41BED743B56C976BD96086800FF82177FC10BBE2BFFC153BE2BD878EBC7363ABF813F63BF026B1137C42F884D135A5DF8DAEED184ADE03F0134A17ED9A85E1558B58D6230F69A25A3B9667BE92080FFAA1F823E067C29FD9AFE14FC38F829F04BC17A2FC3FF86BE02D224D13C35E19D06D23B4B3B4B4B68ECD5A697600F757D7726FB9BEBEB8692EAF2EA596E2E257964663E87F033E067C2AFD9B3E14F82FE09FC14F0668FE01F86BF0FF0045B4D0BC33E19D12D92DAD2CECED6308659980F36EEFAEA40D737F7F72F2DD5EDD492DC5C4B24B2331D7F1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AFCCDFF0082847FC13D7E007FC147BE026BDF04BE39787E09A76B7BABCF00F8F6CEDE11E2BF873E2A36EE963E20F0FDF3AF981164289A9E99239B3D56CBCCB6B84DC63962FD32F1EF4D2BEB7BFCAD2BCEA803FC63FF00E0A25FF04EBFDA07FE09B3F1EB58F82BF1C34197EC534975A87C3DF881610C8DE15F88DE1459CC769AEE85784322CEA8638F55D2A5717BA4DE97B6B842BE54B2FC0F5FECF9FF000507FF00827A7ECFDFF0520F80DACFC10F8E9A0472C9E5DCDF780BC77610C4BE2BF875E2A680C769AFF87EF5807081C469A9E9923FD8B56B30F6B749FEAE48BFCA17FE0A3BFF0004DFFDA23FE0999FB41EBFF033E3BF876E63B5171757BF0F7E20D95ACFFF000897C48F0989DD2C75FF000FDFBA089A431848F53D31DFED9A5DE892DAE1302396400FCFDA28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AFB3FF610FD837F686FF8288FC7EF0CFECFBFB3BF84A7D77C41ABDC413F88BC43729243E18F0278684CABA8F8A7C55A9ED3158E9B61097748F2D757F3AA59D94335C4A886A7EC39FB0DFC7BFF0082807C78F0C7C06F807E15BBD6B59D5EEADE5F11F88E58265F0D7817C342744D47C51E28D4951A1B1D3EC616668E3663737D71E559D9C52DC4A895FEBD9FF04AEFF82567ECF7FF0004AEF80161F0A7E126976FAC78F75E82C750F8B9F16B50B58C789BE21789A28009259A76DF258787F4F91E58B43D0E0905AD9404CAEB25DCF713C800BFF04AFF00F82567ECF5FF0004B0F803A6FC2AF84BA4DAEB1E3ED6ED6C6F7E2DFC5BBEB2853C51F10BC491C23CE926B8C3CD65E1FB199A58F44D0E297ECD6501323892EA69E67FBF3C7A481A560E39BDE9FF006E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF6E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BCF3C7A481A560E39BDE9FF006E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF6E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BCF3C7A481A560E39BDE9FF006E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF6E95FE569FF000762FF00CA58756FFB207F09BF9F892BFD52FC7BD34AFADEFF002B4AFF002B4FF83B17FE52C3AB7FD903F84BFCFC49401FCCED1451400514514005145140051451401FE8EDFF00066F123F60AFDA3B048FF8CAFD5BA7FD927F8615FD79E4FA9FCCD7F219FF00066FFF00C984FED1BFF6761ABFFEAA7F85FF00FD7AFEBCA801C09C8E4F51DCFAD148BD47D47F3A2803D14F8F464FFC4A8F53FF002FA3D7FEBD293FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401FC36FF00C1EE9AFF00F6E7FC3B6716BF66FB37FC35B7FCB7F3B7F9BFF0CDDFF4CA2DBB7CBFF6B39ED8E7F829AFEED3FE0F55FF009C71FF00DDD87FEFB9D7F09740051451400514514005145140057F691FF06596B7FD8BFB5B7ED7B2FD9BED3E77ECFDE1B4DBE7793B71F1074F39CF952E7D3181F5AFE2DEBFB2AFF8333FFE4EC3F6B7FF00B203E1CFFD581A7D007FA4271E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44AF43AF9E1BA9FA9FE7401E89FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D7A1D1401E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803CF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912BD0EBE786EA7EA7F9D007F9617FC1D49A87F6A7FC165FE3DDF795E4F9DE04F81D88B7F99B047F0A7C311FDFD899CECDDF746338F73FCE9D7F437FF07477FCA623E3A7FD889F04BFF557786ABF9E4A0028A28A0028A28A0028A2BFA0CFF8217FFC10B7E297FC155BE2845E37F1AA6B3F0FBF643F87FADDB2FC41F8822D1E1BDF1ADE5B3A5C4DE02F01CB3848AE352BA882C5ABEB1189EDB42B69B732C97AF0C0400FF82187FC10BBE29FFC1553E2947E34F1BDBEBBF0F7F644F00EAB6C7C7BF113ECB25ADD78D6F60916693C09E029AE2311DE6A3711A84D635684496DA25ACA0B39BD9218ABFD527E07782FE157ECDDF0AFC19F053E0B7C39D23C07F0DFC01A2D9E83E1AF0DE88F1DB5ADAD9D9C4B179D314B3125DDF5D329B8BEBEB9696EAF2E64927B895E47663E8BF043E087C2DFD9CBE16F83BE0C7C17F06E8DE02F86FE03D1ED744F0D786B43B54B5B3B3B3B58C27992151E65D5EDCB86B8BDBDB8692E6EEE649279E4791D98F1CDD4FD4FF3A00F44FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F3E735E8BE02E9AAFD6CBF95DD001FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFFC790FFE4BAFCFAFF8291FEC2FFB3BFF00C14E3F67CD6FE047C78F0804B84171A8FC3EF889A6496C7C5DF0DFC582DDE2B4D7F40BB96C8B34258AA6ABA4CB20B2D5ACC35B5C00DE54D17EA457CF0DD4FD4FF3A00FF18DFF008289FF00C13BBE3DFF00C1373E3FEBFF0004BE3568770DA7FDA6EEF7E1E7C42B2B59C7857E23784C5C3A58EBBA1DEBA08C4FE5044D574A91C5EE9579BE0B88F618A597E08AFF0067BFF8285FFC13DFE02FFC1483F67FD7BE057C6FD1630F224DA87813C7B616B0378ABE1D78AD6164B2F106817720570A1F647A9E98F20B2D5ACF7DB5D21FDDC91FF93E7FC1457FE09DBF1EBFE09B3FB40EBDF03FE3568F2CD65E6CF7FF000FBE21D85ACEBE15F88DE14693167AEE8576E0A2CEA8C916ADA54927DB749BD0F6F729B4C52CA01F03D145140051451400514514005145140051451400514514005145140057D9FF00B077EC21F1FF00FE0A21FB42784BF67AFD9F7C2B77AD6BBAEDDC32F88FC472DBCE3C33E02F0C24C8BA9F8AFC55A922186C34CB085894476FB45F5C986CACE39AE664427EC1BFB087C7EFF8288FED0BE13FD9DFF67DF0CDC6AFE20D7274B9F10F88A78261E1AF02786219106A7E29F146A28A61B1D36C626FDDA3BACF7D74D1595A24B713221FF5E1FF0082567FC12BBE007FC12BBF67BD2BE127C29B0835EF1EEAF6F6BA87C5AF8B9A858C30F89BE21789826E9E69641E649A7F87EC247920D0F4386630595AAABCA67BB927B8900394FF008261FF00C1227E037FC1313E0269BF0AFE16491EB1E36D623B5D4FE2A7C51D474980F893C77E26F2235B8924B9132C967A058C81A1D134688ADBD9DB0123ACB772CF3C9FA507C7A0123FB28F1C7FC7E8FF00E44AF43AF9E1BA9FA9FE7401E89FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D7A1D1401E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803CF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79F39AF45F0174D57EB65FCAEE800FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C975E87450079E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44AF43AF9E1BA9FA9FE7401E89FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D7A1D1401E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912BCEDBA9FA9FE749401E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE7FCB0BFE0ED8B1FECEFF82B7EBB65E6F9DE47C05F848BE66CF2F7657C44D9D9B9F18DD8FBC738CF19C57FA9E780BA6ABF5B2FE5775FE5A5FF000775FF00CA5FBC4BFF00641FE117FE8BF105007F2FF45145001451450014514500145145007FA4CFFC1981A07F6E7EC11FB4B93746D85B7ED63A88E20136F32FC26F867FF4DA2DBB7CBFF6B39ED8E7FB14FF0084087FD054FF00E010FF00E4BAFE43BFE0CA2FF9306FDA87FECECAEFFF00552FC38AFECD2803CF47808647FC4D4F51FF002E43D7FEBEE8AF435EA3EA3F9D1401F3C1072783D4F63EB4983E87F235F443753F53FCE92803FCF0FF00E0F55047FC3B8F231FF2761FFBEE75FC25D7F7F1FF0007C97FCE33FF00EEEF3FF7DA6BF807A0028A28A0028A28A0028A28A002BFB2AFF8333C13FB587ED6F81FF3407C39FF00A9FE9F5FC6AD7F6CBFF064AFFC9DDFED89FF0066F5E19FFD585A75007FA24780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007F9157FC1D1DC7FC1623E3A67FE844F825FF00AABBC355FCF257F47BFF00075CFF00CA69BF682FFB113E057FEAA4F0A57F3854005145140051451401FAE5FF000446FF008277786BFE0A73FB7C7803F66FF1C78B6EBC23E01B4D0B5CF897E3B9F4E80CBABEB9E16F05CFA649A8F8634898911585FEB86FE1B31A8CAB2AD95BB5C4C914932C4A7FD89FE07FC0FF00859FB387C2CF06FC17F82FE0DD1BC05F0E3C07A35AE87E1BF0DE876915ADA5A5A5AC610CB2F96A1EEAF6E9C35C5F5EDC34973777324B3CF23C8EC4FF009697FC1A65FF00295EB4FF00B37BF8B3FF00A3FC2D5FE9FB93EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FF00B7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235F1FFEDCDFF04DFF00D9FBFE0A6BFB3AF8DBE03FC73D0A0178D025FF00C3AF887676B01F15FC36F16F9176B67AFE817AE86410991628B56D31D8D9EAB65BADEE632CB0C917EA3D79E78F49034AC1C737BD3FEDD2803FC557FE0A43FF0004DEFDA17FE0993FB436BBF01FE3BE86CD06F9F52F87FF001074CB7B93E12F88FE1237124565AFE817B2C6ABE6EC558F54D2E46FB6E9379BEDAE531E5C927E7E57FB3E7FC1423FE09EFF00007FE0A3BF00FC41F043E38F87ADE69E4B6BABCF0178F6CEDADCF8B3E1C78AFECF24761E20F0F5FC886445490AA6A7A63BFD8B55B2325B5CC79F2A58BFC9F3FE0A27FF0004EAFDA03FE09B3F1EF58F829F1BF4390D94D25CEA1F0F7E20E9F04A7C2BF117C282E1A3B4D7343BC60516754F2E3D574A91FED9A4DE97B6B852BE5CB2007C0D45145001451450014514500145145001451450015F647EC2FF00B0BFC7CFF8283FC7AF0EFC02F801E199B57D775364BEF11F886E629D7C35E05F0C4771143A8F8A3C4FA8451BA5969D6425511C673717D72D159DA4724F2AAD58FD83FF0060CFDA17FE0A25F1FBC33FB3EFECEFE149B5BF106AF3C371E22F10DD24B17863C09E1A13226A1E28F14EA4A8F1D8E9B65117648FE6B9BE9C25A59C535C48A95FEBC3FF0004AFFF0082577ECF9FF04B1FD9FF004BF855F09F48B3D5FC7FAD5A58DEFC5BF8B97B630278A3E21789638144F24D73B5A7B3F0F58CED2C7A1E871CA6DACA06323892EA69E6700E5BFE0919FF0004C6F80BFF0004C7F80BFF000AABE166996FAC78DF54B7D1EF3E297C56BFB0861F1378FF00C46B0DCFDA6E26947992D8E876B3178F47D12299ADEC6DF697335CBCD3C9FAD15E79E3D240D2B071CDEF4FFB74AF3BC9F53F99A00FA1EBE796072783D4F63EB429391C9EA3B9F5AFA1A803E78C1F43F91AF44F010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2803D0E8AF9E327D4FE669549C8E4F51DCFAD000C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99A00FA1EBE796072783D4F63EB429391C9EA3B9F5AFA1A803E78C1F43F91AF44F010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2803D0E8AF9E327D4FE669549C8E4F51DCFAD000C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74AF3BC9F53F99A00FA1EBE796072783D4F63EB429391C9EA3B9F5AFA1A803E78C1F43F91AF44F010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2803D0E8AF9E327D4FE669549C8E4F51DCFAD000C0E4F07A9EC7D69307D0FE46BE87A2803CF3C04081AAE4639B2EBFF006F75FE5A5FF0775FFCA5F7C4BFF641FE117FE8BF1057FA96F8F49034AC1C737BD3FEDD2BFCAD3FE0EC5FF94B0EADFF00640FE137F3F125007F33B45145001451450014514500145145007FA5E7FC1945FF00260BFB507FD9D95E7E9F097E1BFF002C8FCEBFB34AFE223FE0CDF247EC0DFB45E091FF001965ACF4FF00B24BF0B2BFAF0C9F53F99A00FA217A8FA8FE7457CF009C8E4F51DCFAD1401F43B753F53FCE92BCF4F8F464FF00C4A8F53FF2FA3D7FEBD293FE13D1FF0040A3FF0081A3FF00912803F84AFF0083E4BFE719FF00F7779FFBED35FC03D7F7ADFF0007BA6BFF00DB9FF0ED9C5AFD9BECDFF0D6DFF2DFCEDFE6FF00C3377FD328B6EDF2FF00DACE7B639FE0A6800A28A2800A28A2800A28A2800AFED97FE0C95FF93BBFDB13FECDEBC33FFAB0F4EAFE26ABFB48FF00832CB5BFEC5FDADBF6BD97ECDF69F3BF67EF0DA6DF3BC9DB8F883A79CE7CA973E98C0FAD007FA32F8F7A695F5BDFE5695E755E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E803CED7A8FA8FE75F43D79E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BA00F43A2BCF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C89401FE51FF00F075CFFCA69BF682FF00B113E057FEAA3F0A57F3855FD167FC1D497FFDA9FF000597F8F77DE5791E77813E077EEB7F99B7CBF853E178BEFEC4CE7667EE8C671DB35FCE9D0014514500145145007F4D9FF06997FCA576D3FECDEFE2CFFE8FF0B57FA7E57F98CFFC1A31A5FF006BFF00C15AECECFCFF00B3E7F676F8BB2993CBF37EE4FE15E366F8FAE7AEEE31D2BFD4AFFE1021FF004153FF008043FF0092E803CED7A8FA8FE75F43D79E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF00225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BA00F43A2BCF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF00225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC89401E875E79E3DE9A57D6F7F95A51FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE403CE6BE14FF0082837FC13D7F67DFF828FF00C06D6BE087C75F0F4534862B9BDF0178EEC228D3C57F0E7C546064B3F10787EF4E1C2893626A7A64AC6C756B2F32D6EA3C98E58BF4C3FE1021FF004153FF008043FF0092EBE05FF828BFEDBBFB3BFF00C133FF0067DD77E3BFC7AF1BC10BA477163E02F0159ADAAF8B7E2478A840F259F87BC37612DF79B29660B26A3A818DAD34AB3DF7774EAAAAAE01FE495FF051EFF82727ED09FF0004CBFDA1F5CF80BF1E74278D0B5CEA9F0F7C77631487C2FF00123C1FF69786CBC47A05D302A4E02C3AA69D237DAF4ABE125ADC2E047249F00D7E83FF00C1497FE0A49FB41FFC14EBF687D6BE3BFC76D5D62B789EEF4CF875F0FF004B967FF845FE1BF841AE5A5B3D03448257632CEC8229757D56502EB55BE0F73288E3F26087F3E2800A28A2800A28A2800A28A2800AFB1FF619FD85FE3EFF00C1417E3D7863E027C01F0ADCEB3ACEAF756F37897C493C52C7E18F01F8644C8BA978ABC53A92A34563A758405DE38B2D77A85C08ECAC609EEA68E3337EC23FB08FED03FF00050EFDA0BC23FB3D7ECF9E13BCD735ED7AF2DE4F11788A4B79C7867C05E1859E34D53C57E2BD51236834ED2F4F8199D16461717F73E559594535CCD1C67FD6F3FE0989FF00048DF80DFF0004C4F803A6FC27F85262D53C6DAD4367A9FC59F8A5A86970B7897E2078A56045B8966BA12A4965E1EB0937C1A16870EDB6B1B60259166BE9EEAE6600EA3FE095FF00F04ACFD9EBFE095DF002C3E14FC23D26DF56F1EEBD6F637FF177E2D5FDAA0F137C43F13430E249669DCC9258681A7C924B0E89A1DBC8B6B650132BAC9773DC4F27E9FD79E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44A003C7BD34AFADEFF2B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC97401E76BD47D47F3AFA1EBCF07808020FF6A9E39FF8F21FFC9741F1E8048FECA3C71FF1FA3FF912803D0EBCF3C7BD34AFADEFF2B4A3FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBC8079CD2AF51F51FCEBD13FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D007A1D15E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44A00F43AF3CF1EF4D2BEB7BFCAD28FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F201E734ABD47D47F3AF44FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C97401E874579E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D15E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912800F1EF4D2BEB7BFCAD2BFCAD3FE0EC5FF94B0EADFF00640FE12FF3F1257FAA671E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79FF2C2FF0083B62C7FB3BFE0ADFAED979BE7791F017E122F99B3CBDD95F1136766E7C63763EF1CE33C671401FCC751451400514514005145140051451401FE8F1FF06707FC982FED17FF006765AD7FEAA5F8575FD7857F265FF0660E8035CFD817F695CDD7D9BECBFB59EA9FF2C3CEDFE7FC25F861FF004D62DBB7C9FF006B3BBB639FEC4BFE1021FF004153FF008043FF0092E803CED7A8FA8FE7457A28F010C8FF0089A9EA3FE5C87AFF00D7DD1401E74DD4FD4FF3A4A71072783D4F63EB4983E87F23401FC257FC1EABFF0038E3FF00BBB0FF00DF73AFE12EBFBB4FF83D5411FF000EE3C8C7FC9D87FEFB9D7F09740051451400514514005145140057F655FF000667FF00C9D87ED6FF00F6407C39FF00AB034FAFE356BFB2AFF8333C13FB587ED6F81FF3407C39FF00A9FE9F401FE907E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6803FCAC3FE0E8EFF94C47C74FFB113E097FEAAEF0D57F3C95FD0DFF00C1D1DC7FC1623E3A67FE844F825FFAABBC355FCF250014514500145145007EA7FF00C11BBFE0A2CBFF0004BDFDB97C01FB4E6A3E0B4F1DF844693ABFC3EF883A24570F6BABC5E07F184FA747AE6ADE1C9830B76D7B485B182FEC6D6F55AD2FC432D84B25A9B95BCB7FF62AFD9ABF695F835FB5C7C19F057C7BF80DE33D33C75F0DBC79A5C5A968FABE9B323C96F2328177A56A96C18CBA76B1A65C6FB4D474FB954B8B5B98DD1D7A13FE10D5FB87FF000454FF0082D5FC65FF00824DFC64505B57F1F7ECC5E3ED5EC7FE16EFC22FB71DAAB94B593C67E0C8EE9FEC9A6F8BF4EB4C1207D9EDF5CB7B78B4FD425454B6B9B500FF0062DAF9E1BA9FA9FE757FF66BFDA5BE0C7ED71F06BC19F1EBE0278DB4BF1DFC36F1CE990EA5A46B1A6CCAD25BBB229BAD2F55B427ED1A66B1A6CC5ADB51D3AED23B9B5B8464910704D16072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BE4DFDB67FE0A29FB3EFF00C1347F676F1C7C7DF8F5AF2442DA08ED3C0BE04D3E780F8B7E2478AFC8BC6B0F0DF86EC6575691E599A36D4350902D96956664BCBC951102B807A1FF00C145BFE0A27FB3EFFC134FF678F11FC7CF8F1AF4510B6B7BAB3F027816C6E20FF84ABE2378B45B492E9FE1BF0ED948EACEF34AA86FB50702CF4BB42F757522AAAABFF9097FC14ABFE0A53FB427FC14F3F685D67E39FC72D624834F824BCD3BE1C7C39D3EEEE24F0A7C36F09C97064B6D1344B694AA4975222C2FAC6AEF0C777AB5DC7E7CE1234860864FF8297FFC14ABF681FF00829F7ED13AD7C74F8DDAC4F6FA5DB9B9D2BE1AFC37B1BC9DFC2BF0DBC246E649AD745D1AD18AC525ECC1925D67597856F756BB5124EC218ADA087F3BA800A28A2800A28A2800A28A2800AFB33F60FF00D84FE3EFFC143FF686F08FECEDFB3EF862E359F116BF70B71AFF0088268661E1BF02F8620753AA78ABC55A8AA9874FD2EC22276091C4D7D76D058D9A4B733C6863FD85BF618F8F5FF0507F8FBE1AFD9FFE00F86E5D5B5ED59D2F7C45E22BA8A74F0D7817C2F14F145A978ABC51A8471BA5969B62B2A84427CFBEB968ACED124B89516BFD70FF00E091DFF04C7F809FF04C6F8069F09FE1569B6FACF8DF51B6D26F3E29FC59BFB1861F137C43F13795726EAE66906F92C341B398BC5A268714CD0585AED3234F7724F73280745FF04AAFF8255FECFF00FF0004ADFD9F34CF84DF0AB4F835EF1FEB56F69A87C5AF8B9A8D9431F89BE207898440CF23CA03C9A7F876C256921D0F43865FB3D9DB0124A66BC927B893F50E8A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FF00B7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FF00B7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FF00B7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FFB7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775FE5A5FF0775FFCA5FBC4BFF641FE117FE8BF1057FA96F80810355C8C7365D7FEDEEBFCB4BFE0EEBFF94BEF897FEC83FC22FF00D17E20A00FE5FE8A28A0028A28A0028A28A0028A28A00FF4BEFF008328FF00E4C0FF0069FF00FB3B4BDFFD54BF0D6BFB32AFE337FE0CA3FF009303FDA7FDFF006B4BEFD3E127C34FF1AFECCA80157A8FA8FE7450BD47D47F3A28006EA7EA7F9D252B753F53FCE92803F807FF0083E4BFE719FF00F7779FFBED35FC03D7F7F1FF0007C97FCE33FF00EEEF3FF7DA6BF807A0028A28A0028A28A0028A28A002BFB65FF83257FE4EEFF6C4FF00B37AF0CFFEAC2D3ABF89AAFED97FE0C95FF93BBFDB13FECDEBC33FFAB0F4EA00FF00448F1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E5272393D4773EB5F4357CF0BD47D47F3AFA1E800AF3CF1E920695838E6F7A7FDBA57A1D79E78F7A695F5BDFE569401E7793EA7F334AA4E4727A8EE7D69B4ABD47D47F3A00FA1E8A28A00F3CF1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E5272393D4773EB5F4357CF0BD47D47F3AFA1E803FC933FE0EB9FF94D37ED05FF006227C0AFFD549E14AFE70ABFA3DFF83AE7FE534DFB417FD889F02BFF00551F852BF9C2A0028A28A0028A28A0028A28A00FDB1FF82357FC165BE2F7FC12D7E2F2417573ADF8EBF664F1CEA566BF14FE139BD79A3B4C3AC4DE34F045BDD4CB6BA5F8B2C2DC9132C4F6D6DAF5AC51596A6CC60B2B8B3FF5C5FD99FF00698F82FF00B5DFC17F04FC7CF807E36D2BC77F0DBC79A45B6ABA3EAFA6CA0CD6AF3448F73A4EB164C45CE93ADE993335A6A7A5DEC70DDD9DD472452C60AF3FE1135FB8FF00F0454FF82D67C69FF8250FC69B7592F356F1D7ECBBE3AD42DA0F8B5F0866B933410A3CB1C7FF0009AF82D666D9A4F8B74A877922168ED35BB42F63A8C6EEB67736601FEC535E79E3D240D2B071CDEF4FFB74AE1FF666FDA6BE0B7ED7DF05BC11F1FBE0078DF4AF1EFC34F1EE9306A9A3EB1A64C0CB6D23A8177A46B164FB6EB49D734AB912596A9A55F4505E595DC32C3344A579EE3C7BD34AFADEFF002B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF2B4AF3AA00729391C9EA3B9F5AFA1ABE785EA3EA3F9D78A7FC1447FE0A23FB3C7FC1353F67AF10FC7CF8FDE25B7B386049B4EF02F826D268DFC57F11FC5CF6F2CBA77867C37A7E4CD349334664BFBF64165A55924D7B792C7147C8045FF000516FF00828B7ECF3FF04D1FD9E3C47F1F3E3DF8863816DE19AC3C0BE05D3E6824F177C46F16C9131D3BC39E1BD39E449256965DAFA86A1205B1D26C566BDBD9A38A3F9BFC867FE0A5FF00F052DFDA13FE0A79FB44EBFF001C3E366BD770E8B1CF3D87C34F865657B707C21F0D7C28B27FA2691A269ECFE435F5C22A5C6B7AC4919BDD5AF99A49A410476D6F04DFF0532FF8299FED0FFF00053FFDA1B5EF8D7F1B35DB88340B7BABCB1F861F0C6C2E651E13F86BE1133B358E8DA4DA6552E35092211CBAD6B770AD7BAADF1924768EDD2DADA0FCE6A0028A28A0028A28A0028A28A002BECDFD847F60FF00DA0FFE0A23F1FF00C31FB3DFECEFE159B5BF116B33C371E20F105D24D17863C0BE1A59D23D47C53E2AD4A38A44B0D32C6366655C35CDECE12D2CE296E2454A87F61AFD85FE3FFF00C1417E3C786BE027ECFDE159F5AD7356B8827F11F88EE52487C2FE03F0D0991351F14F8AB530AD1D969B61097748977DE6A1388ECAC2DEE2EA68E33FEBCFFF0004AEFF0082557ECF3FF04AEF80561F0B3E126956DAC78FF5EB7B1BEF8B9F172FED235F13FC42F12430E249259C9925B0F0FE9F23CD1689A1C128B5B3859A5712DDCF3CF2001FF04ACFF82567ECFBFF0004B0FD9FB4AF855F0AB49B2D67E21EB5676179F177E2EDE69F6F1F89FE21789A3817ED124973B5AE2CBC3B633B4D1E87A124CD6F656EC647F36EA59E67FBFF00C7A481A560E39BDE9FF6E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF006E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BCF3C7A481A560E39BDE9FF6E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF006E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BCF3C7A481A560E39BDE9FF6E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF006E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BCF3C7A481A560E39BDE9FF6E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF006E95FE569FF0762FFCA58756FF00B207F09BF9F892BFD52FC7BD34AFADEFF2B4AFF2B4FF0083B17FE52C3AB7FD903F84BFCFC49401FCCED1451400514514005145140051451401FE8F9FF0670647EC05FB451E467F6B5D6F9FFBA49F0AABFAEDC9F53F99AFE44FFE0CE1FF009300FDA23FECED75CFFD54BF0AABFAEBA0070272393D4773EB4522F51F51FCE8A00F453E3D193FF12A3D4FFCBE8F5FFAF4A4FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007F0DBFF0007BA6BFF00DB9FF0ED9C5AFD9BECDFF0D6DFF2DFCEDFE6FF00C3377FD328B6EDF2FF00DACE7B639FE0A6BFBB4FF83D57FE71C7FF007761FF00BEE75FC25D0014514500145145001451450015FDA47FC1965ADFF62FED6DFB5ECBF66FB4F9DFB3F786D36F9DE4EDC7C41D3CE73E54B9F4C607D6BF8B7AFECABFE0CCFF00F93B0FDADFFEC80F873FF56069F401FE909C78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803CF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79F39AF45F0174D57EB65FCAEE800FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C975E87450079E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44AF43AF9E1BA9FA9FE7401FE585FF0007525FFF006A7FC165FE3DDF795E479DE04F81DFBADFE66DF2FE14F85E2FBFB1339D99FBA319C76CD7F3A75FD0DFFC1D1DFF002988F8E9FF006227C12FFD55DE1AAFE792800A28A2800A28A2800A28A2800A28A2803F71FF00E08A9FF05ACF8D5FF04A1F8D3671BDCEA3E3BFD977C73AA5BC3F177E11DC5CBBC71432E20FF84CFC16D2398F48F15E900ACCC157EC9ADD9C72E9D7D1891ED6F2CFFD5E7F676FDA27E0FF00EDC5F07FC19F1CFE0678D349F147C39F13E9716A7A36B5A45D45A9E64BD1B2F34AD4E047B79749D6746BAB496C355D2EED56EECAF639ADEE238DE220FF0085FD7EE2FF00C1153FE0B57F19FF00E093FF001A2D50C9A878EFF660F1E6B3651FC5FF0084D35E49B21B795E3B69FC6BE0B12B9B7D37C5DA4DB62608556D75CB783FB36F9A22F6F796801FEBD1FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092EB8AFD9A3F696F835FB5D7C18F04FC7CF80BE34D2FC75F0DFC79A5C5A9691ABE9B3C72496D2950B79A46AB6CAC65D3759D2EE37D9EA5A75D2A5C5ADCC4E8E9D09F78A00F3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775F2C7FC142BFE0A13FB3EFFC136FF679F137C7FF008F9E2382CED6C6DEE2D3C17E0BB4B8B7FF0084ABE2278ACDBC9269DE18F0D584922BCF3DCC880DDDE328B4D36D449757722468370079C7FC1433F6D2FD9DFF00E09ADFB3EEBFF1EFE3FF008EEDACA0B78E7B2F047822D56D97C5BF11FC55E43CB65E1AF0BE9D25F09AEA69194497F78236B5D2EC84B7976E91A00DFE4B1FF0531FF829A7ED11FF000540FDA0B59F8D5F1BF5B7B6D12D2E2F2C7E197C33D32E27FF008453E1BF851A76367A46956CEDB6E35196158A4D675A9905DEA97BBE5610DB882DA077FC14D3FE0A6BFB437FC150FF00683D57E36FC6FD59ECF45B192F74EF865F0CB4DBBB893C29F0DBC2B2DC078348D22DE52167D42E238EDE4D6F599224BAD5AF2312C822852DEDE1FCE5A0028A28A0028A28A0028A28A002BECDFD847F610FDA0BFE0A1DFB41784BF67CFD9EFC237BAEEBBAEDEDB3F88FC46F6D38F0C7807C31F688D354F1678B35448DA0D3B4BD3A066915646FB45FDC08AC6C629EEA78E363F60FFD84BE3F7FC143FF00685F08FECF1FB3EF85AEB5AF106BD731CFE20F10CB04C3C35E04F0C4522FF6A78ABC55A92A1834FD32C2127CB591C4D7D76D058D9A4B733C687FD783FE0955FF0004ABFD9FFF00E0959FB3E69BF09BE14E9F0EBDE3ED6E1B5D4BE2DFC5CD4ACE04F137C40F13792BE7BBCC14C9A7F8774F90BC1A16870BFD9ECED80966F3AF65B8B890039BFF008262FF00C1237E027FC1317E0169BF0A7E1408752F1B6B50D96A5F167E295FE9713F897E2078A520413CB3DD99D65B3F0FD848648742D0E12B6B636D995D24BD9EEAE26FD243E3D0091FD9478E3FE3F47FF2257A1D7CF0DD4FD4FF003A00F44FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3E735E8BE02E9AAFD6CBF95DD001FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC895E76DD4FD4FF003A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C895E875F3C3753F53FCE803D13FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BAF43A2803CF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF22579DB753F53FCE92803D1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF002257A1D7CF0DD4FD4FF3A00F44FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F3E735E8BE02E9AAFD6CBF95DD001FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC895E875F3C3753F53FCE803D13FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BAF43A2803CF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCFF9617FC1DB163FD9DFF056FD76CBCDF3BC8F80BF0917CCD9E5EECAF889B3B373E31BB1F78E719E338AFF0053CF0174D57EB65FCAEEBFCB4BFE0EEBFF0094BF7897FEC83FC22FFD17E20A00FE5FE8A28A0028A28A0028A28A0028A28A00FF0049FF00F8330B40FEDCFD803F692CDD7D9BECDFB5AEADFF002C3CEDFE6FC25F85DFF4D62DBB7CBFF6B39ED8E7FB0EFF0084087FD054FF00E010FF00E4BAFE453FE0CA41FF001AFF00FDA70FAFED6DA88FCBE127C33FF1AFECBA803CF47808647FC4D4F51FF2E43D7FEBEE8AF435EA3EA3F9D1401F3C1072783D4F63EB4983E87F235F443753F53FCE92803FCF0FFE0F55047FC3B8F231FF002761FF00BEE75FC25D7F7F1FF07C97FCE33FFEEEF3FF007DA6BF807A0028A28A0028A28A0028A28A002BFB2AFF008333C13FB587ED6F81FF003407C39FFA9FE9F5FC6AD7F6CBFF00064AFF00C9DDFED89FF66F5E19FF00D585A75007FA24780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007F9157FC1D1DC7FC1623E3A67FE844F825FFAABBC355FCF257F47BFF075CFFCA69BF682FF00B113E057FEAA4F0A57F3854005145140051451400514514005145140051451401FB87FF0455FF82D5FC65FF824DFC658C6ED57C7DFB3178F758B2FF85BDF08CDF304546F2AD25F1AF8312E19AD34EF17E9966AAF8020835DB7B68B4DD4268D45BDD5AFFA005B7FC1D47FF04699EDA09DFF00681F155B3CD0C72B5B4DF0A3C7BE6C0D222B986531E8EE9E6464947D8CCBB81C1239AFF23CA2803FD5ACFF00C1CDDFF0482249FF008680F10724FF00CD30F1D7FF0029E93FE226EFF82417FD1C07883FF0D878EBFF0094D5FE52B45007FAB6EA5FF07527FC124BC05E0AF1C788343F8AFE31F1CF8934ED0EE751F0EF8334AF873E2CB0BEF146AF636B79258E876FA8EA9A6DB69BA7C9A85D3C16C2F2FAE22B6B71234D2B8446AFF3B0FF00829D7FC14DBF681FF82A2FED0FAB7C6EF8D3AA4D61A0D89BAD2BE187C30D3EF6797C2BF0DFC26D72F2DBE95A5DBB79715C6A572BE5CBADEB7240979AADD22B4A52DE1B6821FCE1A2800A28A2800A28A2800A28A2800AFB23F616FD863E3D7FC1423E3F7867F67FF805E1B9B55D7757916F3C47E22B98665F0D7813C2F0CD147A978ABC51A846863B2D36C9240238D984F7F74F0D95A24971322D4DFB07FEC1DFB41FFC144BF680F0C7ECF5FB3C785A5D6BC47ACCD15CF883C41771DC45E17F02F869278E3D47C53E2BD4A18665B0D2EC63725576B5C5ECFE5DA5A452CF22AD7FAF0FFC12B3FE095BFB3FFF00C12C3F67CD27E14FC2BD2ECF5AF885ACD969F7BF177E2E5E58411F897E2178A23B75FB4CAF3ED69EC7C3B6570D3A685A124CD058DBB6F90CD772CF3B80737FF048DFF8263FC04FF82637C034F84FF0AB4DB7D6BC6FA8DBE957BF14FE2D6A1630C3E27F887E2531DCB5D5CCD20DF269FA059CA5A1D0F428666B7B0B408D2B5C5E49717537EB2D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7F9697FC1DD7FF00297DF12FFD907F845FFA2FC415FEA5BE3D240D2B071CDEF4FF00B74AFF002B4FF83B17FE52C3AB7FD903F84DFCFC49401FCCED1451400514514005145140051451401FE985FF0006527FCA3FFF0069BFFB3B6D4BFF005527C32FF115FD9757F11FFF000670923FE09FBFB43E091FF196FAF7FEAA4F84F5FD74E4FA9FCCD007D10BD47D47F3A2BE7804E4727A8EE7D68A00FA1DBA9FA9FE7495E7A7C7A327FE2547A9FF0097D1EBFF005E949FF09E8FFA051FFC0D1FFC89401FC257FC1F25FF0038CFFF00BBBCFF00DF69AFE01EBFBD6FF83DD35FFEDCFF00876CE2D7ECDF66FF0086B6FF0096FE76FF0037FE19BBFE9945B76F97FED673DB1CFF0005340051451400514514005145140057F6CBFF00064AFF00C9DDFED89FF66F5E19FF00D587A757F1355FDA47FC1965ADFF0062FED6DFB5ECBF66FB4F9DFB3F786D36F9DE4EDC7C41D3CE73E54B9F4C607D6803FD197C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D15E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00FF28FFF0083AE7FE534DFB417FD889F02BFF551F852BF9C2AFE8B3FE0EA4BFF00ED4FF82CBFC7BBEF2BC8F3BC09F03BF75BFCCDBE5FC29F0BC5F7F62673B33F746338ED9AFE74E800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AFB1FF00619FD85BE3FF00FC141BE3C786FE027ECFDE169759D77559E1B8F11F88AED6483C2FE04F0D2CCABA8F8A7C55A98468ECB4DB184BBA44BBEF3509C259D8413DCCA9199BF611FD843F683FF82877ED01E13FD9F3F67AF095E6BBAF6B9796F2788FC4524132F863C05E1913C69A9F8AFC57A9AC6D0E9FA669D033C8A8CC6E6FEE047656514D7334719FF5BDFF008262FF00C1237E027FC1317E01E9BF0A7E13AC1A8F8DB5B82C751F8B5F14AFB4B8DBC4BF10BC5114004B34F74D71E6D9787F4F91A58342D0E02969636E4CAD1C97B71757130074DFF04AEFF8255FECF5FF0004AFF803A7FC2BF84BA4DAEB1E3FD72DAC6FBE2DFC5CBFB1853C51F10BC49142048F35C61E6B1F0F69F2BCB1E89A1C531B6B2859A57125DCF3CF27EA0579E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44A003C7BD34AFADEFF2B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC97401E76BD47D47F3AFA1EBCF07808020FF6A9E39FF8F21FFC9741F1E8048FECA3C71FF1FA3FF912803D0EBCF3C7BD34AFADEFF2B4A3FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBC8079CD2AF51F51FCEBD13FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D007A1D15E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44A00F43AF3CF1EF4D2BEB7BFCAD28FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F201E734ABD47D47F3AF44FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C97401E874579E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D15E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00F43AF3CF1EF4D2BEB7BFCAD28FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F201E734ABD47D47F3AF44FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC97401E874579E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44A003C7BD34AFADEFF2B4AFF2B4FF0083B17FE52C3AB7FD903F84BFCFC495FEA99C78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE7FCB0BFE0ED8B1FECEFF0082B7EBB65E6F9DE47C05F848BE66CF2F7657C44D9D9B9F18DD8FBC738CF19C5007F31D45145001451450014514500145145007FA407FC19C5FF28FCFDA18FF00D5DC6BFF00FAA8FE137F8D7F5D15FC9D7FC1987A07F6E7FC13F3F690CDD7D985B7ED71AD7FCB1F3B7F9BF08FE157FD358B6EDF2FDF3BBB62BFB0AFF84087FD054FFE010FFE4BA00F3B5EA3EA3F9D15E8A3C04323FE26A7A8FF009721EBFF005F7450079D3753F53FCE929C41C9E0F53D8FAD260FA1FC8D007F095FF07AAFFCE38FFEEEC3FF007DCEBF84BAFEED3FE0F55047FC3B8F231FF2761FFBEE75FC25D0014514500145145001451450015FD957FC199FFF002761FB5BFF00D901F0E7FEAC0D3EBF8D5AFECABFE0CCF04FED61FB5BE07FCD01F0E7FEA7FA7D007FA41F80BA6ABF5B2FE5775E875E79E02040D57231CD975FFB7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A006D7A2F80BA6ABF5B2FE5775E7783E87F235E89E02040D57231CD975FF00B7BA00F43A28A2803E786EA7EA7F9D253981C9E0F53D8FAD260FA1FC8D007A2780BA6ABF5B2FE5775E875E79E02040D57231CD975FFB7BAF43A002BE786EA7EA7F9D7D0F5F3CB0393C1EA7B1F5A00FF2B0FF0083A3BFE5311F1D3FEC44F825FF00AABBC355FCF257F437FF00074771FF000588F8E99FFA113E097FEAAEF0D57F3C940051451400514514005145140051451400514514005145140051451400514514005145140057D9BFB07FEC23F1FF00FE0A1FFB42784BF679FD9F7C2B77ADEBFAF5D4537887C452DBCE3C33E03F0CC72A0D4FC55E2AD4D51A0D3B4CB084931AC8E27BEBA30D959C735CCD1C662FD85BF618F8F3FF000507F8FF00E17FD9FBE01F86E6D575DD6254BBF11F88EE2198786BC09E178658D353F1578A35045315969D648E0451B389EFEEDE1B1B3496E66443FEB85FF048DFF82637C03FF8262FC034F84DF0AB4E835CF1B6A106997BF14BE2DEA3610C3E28F887E2565B97BAB89A41E649A7681652930687A0C3335BD85A246D33DCDEC97175300749FF0004ABFF008255FECFDFF04ACFD9F74EF84DF09F4F8B5DF1EEB90DAEA5F16BE2DEA7696E3C4FE3FF0013F9082E1DE758C49A7F8734F977C3A16850B0B7B3B602597CFBD9AE2E24FD42A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E800AF9E1BA9FA9FE75F43D7CF2C0E4F07A9EC7D6801B5E8BE02E9AAFD6CBF95DD79DE0FA1FC8D7A2780810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7F9697FC1DD7FF00297EF12FFD907F845FFA2FC415FEA5BE02040D57231CD975FF00B7BAFF002D2FF83BAFFE52FBE25FFB20FF0008BFF45F882803F97FA28A2800A28A2800A28A2800A28A2803FD317FE0CA5FF947DFED33FF006773AAFF00EAA2F85D5FD95D7F1ABFF0652FFCA3EBF698FF00B3BAD5BFF5517C2CAFECAA80157A8FA8FE7450BD47D47F3A28006EA7EA7F9D252B753F53FCE92803F807FF0083E4BFE719FF00F7779FFBED35FC03D7F7F1FF0007C97FCE33FF00EEEF3FF7DA6BF807A0028A28A0028A28A0028A28A002BFB65FF83257FE4EEFF6C4FF00B37AF0CFFEAC2D3ABF89AAFED97FE0C95FF93BBFDB13FECDEBC33FFAB0F4EA00FF00448F1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E5272393D4773EB5F4357CF0BD47D47F3AFA1E800AF3CF1E920695838E6F7A7FDBA57A1D79E78F7A695F5BDFE569401E7793EA7F334AA4E4727A8EE7D69B4ABD47D47F3A00FA1E8A28A00F3CF1E920695838E6F7A7FDBA579DE4FA9FCCD7A278F7A695F5BDFE5695E75400E5272393D4773EB5F4357CF0BD47D47F3AFA1E803FC937FE0EB907FE1F4DFB41601C7FC209F02BB7FD524F0A66BF9C2C1F43F91AFF74FF89BFB127EC6FF001A7C5D7DE3FF008C1FB2A7ECEFF147C75A9C3656DA978C7E20FC1BF87FE2FF0013DFDBE9D6B158E9F05E6BBAF6817FA9DCC5636704369691CD72E96F6F1470C41234551E0DE35FF826CFFC13CED069BF65FD86FF00649B7F30DDEFF27F679F8511EFD9F66DBBB678546EDBB9B19CE32718C9A00FF129C1F43F91A307D0FE46BFDA6BFE1DCDFF0004FF00FF00A324FD943FF11FBE167FF32D4A3FE09CDFF04FEC8FF8C24FD943A8FF009B7EF859EBFF0062B5007F8B260FA1FC8D183E87F235FEE21FF0ECDFF8274FFD1897EC85FF0088EBF09BFF00993A3FE1D9BFF04E9FFA311FD90BFF0011D7E137FF00327401FE1DF83E87F23460FA1FC8D7FB6B78D7FE09B3FF0004F3B41A6FD97F61BFD926DFCC377BFC9FD9E7E1447BF67D9B6EED9E151BB6EE6C6738C9C6326B83FF0087737FC13FFF00E8C93F650FFC47EF859FFCCB5007F8B2E0FA1FC8D183E87F235FED363FE09CDFF04FEC8FF8C24FD943A8FF009B7EF859EBFF0062B57BAFFC3B37FE09D3FF004625FB217FE23AFC26FF00E64E803FC3BF07D0FE468C1F43F91AFF00710FF8766FFC13A7FE8C47F642FF00C475F84DFF00CC9D70BE35FF00826CFF00C13CED069BF65FD86FF649B7F30DDEFF0027F679F8511EFD9F66DBBB678546EDBB9B19CE32718C9A00FF00129C1F43F91A307D0FE46BFDA6BFE1DCDFF04FFF00FA324FD943FF0011FBE167FF0032D4A3FE09CDFF0004FEC8FF008C24FD943A8FF9B7EF859EBFF62B5007F8B260FA1FC8D183E87F235FEE21FF000ECDFF008274FF00D1897EC85FF88EBF09BFF993A3FE1D9BFF0004E9FF00A311FD90BFF11D7E137FF327401FE1DF83E87F23460FA1FC8D7FB6B78D7FE09B3FF04F3B41A6FD97F61BFD926DFCC377BFC9FD9E7E1447BF67D9B6EED9E151BB6EE6C6738C9C6326B83FF87737FC13FF00FE8C93F650FF00C47EF859FF00CCB5007F8B2E0FA1FC8D7D9DFB07FEC1DFB417FC1447F682F0BFECF3FB3D785E6D67C45ACCB1DD7883C417514F1F867C0BE1949E28B51F1578AB518E2912C74CB04932AA73717B7063B4B48E59E555AFF5CD1FF04E6FF827F647FC6127ECA1D47FCDBF7C2CF5FF00B15ABEE1F83DFB30FECDFF00B3D49AC4DF01BE027C1DF831378852DA3D7A5F85BF0DFC21E03935A4B33235A26A8FE18D234C6BF4B66965302DC99162323940A58E403E31FF0082567FC12BBE007FC12C3F67BD27E13FC2AD36D75BF881AC59E9F7BF177E2E5ED8C317893E2178A23B71F6999E6C34D61E1EB2B879E3D0F438E5686CAD9B748D35D4934EFF007F78F49034AC1C737BD3FEDD2BD0EBCF3C7BD34AFADEFF002B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF2B4AF3AA00729391C9EA3B9F5AFA1ABE785EA3EA3F9D7D0F400579E78F49034AC1C737BD3FEDD2BD0EBCF3C7BD34AFADEFF002B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF2B4AF3AA00729391C9EA3B9F5AFA1ABE785EA3EA3F9D7D0F400579E78F49034AC1C737BD3FEDD2BD0EBCF3C7BD34AFADEFF002B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF2B4AF3AA00729391C9EA3B9F5AFA1ABE785EA3EA3F9D7D0F400579E78F49034AC1C737BD3FEDD2BD0EBCF3C7BD34AFADEFF002B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF2B4AF3AA00729391C9EA3B9F5AFA1ABE785EA3EA3F9D7D0F400579E78F49034AC1C737BD3FEDD2BD0EBCF3C7BD34AFADEFF002B4A00F3BC9F53F99A55272393D4773EB4DA55EA3EA3F9D007D0F451450079E78F49034AC1C737BD3FEDD2BFCAD3FE0EC5FF0094B0EADFF640FE137F3F1257FAA5F8F7A695F5BDFE5695FE569FF0762FFCA58756FF00B207F097F9F892803F99DA28A2800A28A2800A28A2800A28A2803FD20FFE0CE2247FC13E7F684C123FE32EBC45D3FEC917C23AFEB9B27D4FE66BF918FF008338FF00E51F3FB421FF00ABBAF11FE9F08BE117F8D7F5CD400E04E4727A8EE7D68A45EA3EA3F9D1401E8A7C7A327FE2547A9FF97D1EBFF5E949FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00FE1B7FE0F74D7FF00B73FE1DB38B5FB37D9BFE1ADBFE5BF9DBFCDFF00866EFF00A6516DDBE5FF00B59CF6C73FC14D7F769FF07AAFFCE38FFEEEC3FF007DCEBF84BA0028A28A0028A28A0028A28A002BFB48FF00832CB5BFEC5FDADBF6BD97ECDF69F3BF67EF0DA6DF3BC9DB8F883A79CE7CA973E98C0FAD7F16F5FD957FC199FF00F2761FB5BFFD901F0E7FEAC0D3E803FD2138F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF002257A1D7CF0DD4FD4FF3A00F44FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F3E735E8BE02E9AAFD6CBF95DD001FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC895E875F3C3753F53FCE803D13FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BAF43A2803CF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF2257A1D7CF0DD4FD4FF003A00F44FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3E735E8BE02E9AAFD6CBF95DD001FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC895E76DD4FD4FF003A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C895E875F3C3753F53FCE803D13FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BAF43A2803CF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF22579DB753F53FCE92803D1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF002257A1D7CF0DD4FD4FF3A00F44FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F3E735E8BE02E9AAFD6CBF95DD001FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C895E76DD4FD4FF3A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC895E875F3C3753F53FCE803D13FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BAF43A2803CF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF2257A1D7CF0DD4FD4FF003A00F44FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3E735E8BE02E9AAFD6CBF95DD001FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC895E76DD4FD4FF003A4A00F46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C895E875F3C3753F53FCE803D13FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BAF43A2803CF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF22579DB753F53FCE92803D1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCFF009617FC1DB163FD9DFF00056FD76CBCDF3BC8F80BF0917CCD9E5EECAF889B3B373E31BB1F78E719E338AFF53CF0174D57EB65FCAEEBFCB4BFE0EEBFF94BF7897FEC83FC22FF00D17E20A00FE5FE8A28A0028A28A0028A28A0028A28A00FF4A5FF0083313401AE7FC13E7F68ECDDFD9BECDFB5DEBBD21F3B7F9DF08BE137FD358B6EDF2BDF39ED8E7FB08FF84087FD054FFE010FFE4BAFE433FE0CA227FE1827F6A119381FB585D1033C027E13FC3804E3A6480013DF03D2BFB36A00F3D1E02191FF001353D47FCB90F5FF00AFBA2BD0D7A8FA8FE745007CF041C9E0F53D8FAD260FA1FC8D7D10DD4FD4FF003A4A00FF003CAFF83D52DE436DFF0004E8B9C1F2E29BF6A9818E0FDFB84FD9EE44E7E96CF5FC2257FA19FF00C1F05A24D3FC33FF00827DF8895730697E37F8FDA3CAF83F2CBADE87F0BAF205DD8C0DCBA0CE719C9DB9ED5FE79940051451400514514005145140057F657FF06676CFF86AFF00DAE0162243F007C39B176E7701E3FD3CB73918C7D0FE1D6BF8D4AFEC07FE0CC9F18C3A37FC145BE2FF00849E609378CBF677D68C3092019BFE11FF0012E877F260704F96B286E338F4A00FF4ACF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF006F75E875E79E3D240D2B071CDEF4FF00B74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFFDBDD7F965FF00C1DCB7093FFC15FF00C5AA841FB3FC0EF84703E0E7E716DADCA7F4956BFD4D3C7A481A560E39BDE9FF006E95FE4A3FF073778C62F15FFC15EFE3F59C72991BC1DE1EF867E14981CFEEA587C17A5EB5E5F3D06CD691C0FF006FDF3401F80145145001451450014514500145145007FA60FF00C194D6EF17EC09FB4CCCDF76E7F6ACBD923F711FC2DF87D0B63D46E8CFE35FD97D7F1A3FF0685E893E99FF0004CCF1D6A720DB1F883F69DF1F5EDB9191BE3B3F087C3FD2DC9F5C4B64EA08E38AFEA9F27D4FE66803E885EA3EA3F9D15F3C0272393D4773EB45007D0EDD4FD4FF003A4AF3D3E3D193FF0012A3D4FF00CBE8F5FF00AF4A4FF84F47FD028FFE068FFE44A00FE433FE0F55F084BAB7EC29FB33F8BA080CAFE11FDA51ADAEA50A08B7D3BC45F0FF00C4B6F2397EABBF50B1D3230B8C36EC9395507FCD16BFD607FE0E99F03CFF0018FF00E090BF1935AB2D34ADEFC29F1A7C36F1BAFEF3ED1E5592789EDAC354B8DC2288C7E5D8CF3467E560C26C92A14EEFF27EA0028A28A0028A28A0028A28A002BF7FBFE0D8CF8C90FC1FFF0082C6FECCA97976B6361F1453C6BF09AEA777D91B4BE2AF0BDFDCE936AFFDE6BED7749D2ECA1500EEB8B88863B8FC01AF73FD987E30EB1FB3DFED1DF01FE3AF87E6306B3F07FE2F7C3BF891A7BEE288D71E0DF15E95AFAC33150775BCE2C4C171190CB2412491BAB2B10403FDCEBC7BD34AFADEFF002B4AF3AAD7F87FE34D0BE3FF00813C1BF107C3178A9E1CF12F86341F166857D1E2F1351D27C59A5DB6AB6170B836C2206D7CB7233264C841DA579EBBFE1021FF004153FF008043FF0092E803CED7A8FA8FE75F43D79E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF00225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BA00F43A2BCF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF00225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC89401E875E79E3DE9A57D6F7F95A51FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE403CE6957A8FA8FE75E89FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92E803D0E8AF3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E803CED7A8FA8FE75F43D79E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BA00F43A2BCF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C89401E875E79E3DE9A57D6F7F95A51FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE403CE6957A8FA8FE75E89FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092E803D0E8AF3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E803CED7A8FA8FE75F43D79E0F010041FED53C73FF001E43FF0092E83E3D0091FD9478E3FE3F47FF00225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF000087FF0025D03C040107FB54F1CFFC790FFE4BA00F43A2BCF0F8F40247F651E38FF8FD1FFC8947FC27A3FE8147FF000347FF00225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFFC790FFE4BA0F8F40247F651E38FF8FD1FFC89401E875E79E3DE9A57D6F7F95A51FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE403CE6957A8FA8FE75E89FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92E803D0E8AF3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC8940078F7A695F5BDFE5695E755E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E803CED7A8FA8FE75F43D79E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF225007A1D79E78F7A695F5BDFE56947FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B7900F39A55EA3EA3F9D7A27FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BA00F43A2BCF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF225001E3DE9A57D6F7F95A579D57A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA00F3B5EA3EA3F9D7D0F5E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C89401E875E79E3DE9A57D6F7F95A51FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE403CE6957A8FA8FE75E89FF000810FF00A0A9FF00C021FF00C9740F010041FED53C73FF001E43FF0092E803D0E8AF3C3E3D0091FD9478E3FE3F47FF002251FF0009E8FF00A051FF00C0D1FF00C894009E3F21534B627017EDC49F4005A127F015FE2C5FF0568F8B91FC72FF008295FEDB3F122DAF1350D3753FDA1FE22E8BA1DFC6FBE2BDF0EF82F5CB8F057872EA16EF0DC687E1FB09621C6D8DD57B57FAF4FEDE3FB46697F00BF639FDA37F689D4EEE2D007C1AF851E2FF0011E9724D224E2EBC4371A4DC5B7872DD4B2C1B5A4D716C2208A93348253B5415E7FC4735DD5AEB5ED6F57D72FA4696F759D4EFF54BB95D8B3C973A85D4B773C8CCC4B333CB2B3124924924D006551451400514514005145140051450064803B9C7E7401FEA9BFF0006B8782A7F09FF00C11EFE0F6A57507913F8D3E27FC63F130E3065B57F1345A6D9CC4E0677DBD8273D000064E2BFA1BAFCDDFF008217FC239BC17FF04A0FD8B3C177911D1F50B2F847A678A2FCF97E79BC9FC77777BE238A7319680C45ACEE2D5F9690BF980E542F3FACFF00F0810FFA0A9FFC021FFC97401E76BD47D47F3A2BD147808647FC4D4F51FF002E43D7FEBEE8A00F3A6EA7EA7F9D25388393C1EA7B1F5A4C1F43F91A00F91BFE0A25F0564FDA17FE09D3FB6E7C24B6B4FB7EA1E28F809E339348B358CCB2DD6B3A1689A9F88B48B781002C67B8D474AB6862DA33BE4503AD7F8AA4F13C134D048A524865922914F5578DCA329F70C083F4AFF7A0F075AC57B67AFD95CC692C1796F05B4D14A81E39619E2BD8A54746055D191CABA90410482306BFC497FE0A1FFB3E5E7ECABFB71FED51FB3FDD5AC96B6FF0D3E3678F744D0D25428F378525D72EB52F08DE1520605F7866F749BB00640F3B01980C900F8D28A28A0028A28A0028A28A0028E9D28A2803FD61FF00E0D56FDB3ADBF6A8FF00826D687E05D675882F3E23FECC5AB5BFC20F13D8BCEADA9FFC2376F0DC6A7E02D6E788BB4CD67A8E8772FA64377200935FE85A9C11F16C6BFA69AFF22AFF00836B3FE0A410FEC03FF0504F0CE8FE37D6A3D2BE07FED2A9A6FC25F89535EDCFD9F4BD1751BCBF0DE08F175DBC8E2DE15D175CB83697377300B6FA6EAB7ECF245119187FAE9A3A4889246C1D1D55D1D482AC8C032B291C10C08208E0839A00757CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF6F75E8740057CF0DD4FD4FF003AFA1EBE796072783D4F63EB400DAF45F0174D57EB65FCAEEBCEF07D0FE46BD13C04081AAE4639B2EBFF006F7401E8745145007CF0DD4FD4FF003A4A730393C1EA7B1F5AC8D7B5BD27C2FA1EB3E25F10EA169A3E83E1ED2B50D6F5BD5B509E3B5B0D2F49D2AD25BED4750BDBA99921B7B4B3B4826B8B89E5758E28A377760AA4D007F249FF0007757EDAD0FC2AFD90BE1CFEC71E17D5E14F187ED21E32B7F1578DACADEE47DB6C3E177C387FB544B770A309618BC4BE2FBCD2E1B391B315D5BE83AD40C0E2BFCE1EBF503FE0B03FB78EA3FF00050EFDBA3E2D7C7382E2E0FC3DB2D49FC0DF08EC266902DA7C3BF0BCF3D968D76219368827D79FED1AF5CC6238DA39751F2A40D246CEDF97F4005145140051451400514514005759E02F0AEABE3AF1CF837C15A1D9CBA86B5E2FF15787FC33A4D842A5E6BDD4B5DD56D34CB2B5894025A4B8B9BA8E2450092CE00049AE4EBF61BFE082BFB3D5CFED1BFF000553FD943C39F617BDD1FC05E3CB7F8C7E212B1F9AB6DA7FC2E53E2AB19E5420A188F882CB468640E429499B863F2900FF005E1FD987C0563F0AFE127817E18E9854E9DF0EFE1FF807C0F6055760367E15F0F45A1DB10B818CC36287079F5E6BE89AF3CF010C0D538C73658EDD05DD7A1D002AF51F51FCE8A17A8FA8FE745000DD4FD4FF003A4A56EA7EA7F9D250079E78F49034AC1C737BD3FEDD2BFCC67FE0EE4FD96A6F853FB74F80BF689D32C041E19FDA3BE1D5BADE5D4303470378DBE1E3C3A36B514B31189AF65D1EF340BB948E914D10C706BFD39BC7BD34AFADEFF2B4AFE647FE0E74FD8E66FDA9FF00E09A9E2AF18F8734D5BDF881FB31F896CBE33E80F14024BEB9F0D5AD9DDE89E3ED1E291434CB6F71A0EA235B7822563717DE1DD355B6AA97500FF2C0A28E9D68A0028A28A0028A28A0028A28A00723B46EAE8C51D195D19490CACA4156523905480411C82322BFD487FE0DC3FF0082ADDA7EDE5FB2EDAFC0FF0089FE2149BF696FD9C743D27C3FE214BFBA0DAA78F3E1F5AC5169BE1AF1DC2246F36FAE2DD238745F11CC3CC9A3D463B7BBBB39D4A2925FF2DCAFA9FF00630FDAFBE2F7EC33FB447C3FFDA3BE0B6B53697E2CF04EA6925DD879F347A6F8A3C3B72CB16B9E15D72289D3ED3A4EB563E65ADC44D9D8CD1CF1E25890800FF6C35272393D4773EB5F4357E497FC13D3F6FBF825FF000518FD9CFC1FF1FBE0CEACB9D42CACECBC79E0ABD9A03E21F87BE358ED616D6FC33ACDBC323E56DAECCA74CD455520D5B4E36F7D1245E6B4317EB6D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D1451401E79E3D240D2B071CDEF4FF00B74AF3BC9F53F99AF44F1EF4D2BEB7BFCAD2BCEA801CA4E4727A8EE7D6BE86AF9E17A8FA8FE75F43D0015E79E3D240D2B071CDEF4FFB74AF43AF3CF1EF4D2BEB7BFCAD2803CEF27D4FE669549C8E4F51DCFAD36957A8FA8FE7401F43D7F147FF000769FF00C15D6CFE0AFC264FF82747C10F11249F14FE31E929A97C78D5749BC026F047C3295E37B0F094EF01DF16B3E39915A4B9B7DEAF6DE1FB693ED081754B62DFBA9FF059BFF82B67C26FF8253FECCBADF8DF58BBB2F107C79F1CE99AAE8BF023E192CF11BCD73C50F6CF143E22D6A01209ED7C21E1C9A48EFB56BA09BAE9A38F4CB62B3DD0962FF1ECF8DFF1ABE24FED17F163C77F1B3E2F789F50F187C46F88FE22D43C4DE29D7F5299E69EEF50D4276999230ECC20B3B54296D63691ED86D6D628A089552351401E55451450014514500145145001451450015FDE37FC194BFB27CFAAF8D3F6A7FDB3F5AB0FF895F85F4ED17E04F81EF2684959BC41AC2DBF8B3C65259CDD165D33464F0E5BDCA8FBD1EBD1FF0074D7F07F6F6F35DDC416B6F1BCD7173347041146A59E59A6758E38D154166677655550092480066BFD987FE0837FB18B7EC37FF04C6FD9D7E156AB611D8F8E3C57A0BFC5DF88E045E5DC49E30F88EB06B7341784AA4924DA4E90DA468886545923B7D3218180315007EA378F49034AC1C737BD3FEDD2BCEF27D4FE66BD13C7BD34AFADEFF2B4AF3AA0070272393D4773EB4522F51F51FCE8A00F453E3D193FF12A3D4FFCBE8F5FFAF4A4FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B79E6FC61F05F41F1D784FC4DE0AF13CD16A9E1CF17683AB786F5DD36E2C03417DA46B7633E9DA85ACA3ED7F727B5B896324720364106BA3F0174D57EB65FCAEEBD0E803FC417FE0A73FB19F89FF606FDB8FF00682FD993C456B3A587823C73A9DCF81753963D917887E1C6BD336B1E06D72DC8CC6DF6BF0FDDD9C7791C6EEB69A9C17D62EC65B5703E09AFF482FF0083C3BFE09B4DF13BE08F82FF00E0A17F0D3C3F25DF8C7E08B59781BE35269F0349737DF0BF5BBFF2B41F135C471297953C27E22BC4B3BD970E60D375A375218AD6C6E245FF0037DA0028A28A0028A28A0028A28A0028A28A00FD34FF00825BFF00C14FFE397FC1303F681D3BE2A7C35BFBAD6FE1F6BAF6BA57C5CF851777922F877C7BE1913A3BE6062D0D8F8934B01AE340D76145BBB298CB6B23CBA75E5F5A5C7FADBFEC41FF000521FD9F7F6FFF00817E19F8EFFB3EEB56DAFE85AC5AC31EBFE1FB8D423B6F14F81BC44B181A97863C59A335B9B8D3753D3EE03C4B210F65A8C022D434CBABCB0B9B7B993FC452BEF1FF00827F7FC1463F695FF826FF00C68D37E2FF00ECFBE2C7B485E58ADFC6BF0FF58325F781BE21682495B9D1FC47A3B388CBB44CE6C357B436FAB69573E5DD58DDC52261803FDAF3FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCFE18FF00C12E3FE0B4BFB28FFC14DBC15A7DB7847C4763F0F3E3F69DA7472F8DBE05F8A6FE0B5F10DA4E8152E352F095C4C628BC5BE1E924394BAD3B75E59E447A959DB6E8649FF737C05D355FAD97F2BBA003FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D7A1D1401E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912BCEDBA9FA9FE749401E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E8F0174D57EB65FCAEEBD0E803CF07808020FF6A9E39FF8F21FFC9741F1E8048FECA3C71FF1FA3FF912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B79F39AF45F0174D57EB65FCAEE800FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC975E87450079E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44AF43AF9E1BA9FA9FE7401E89FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D7A1D1401E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803CF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79F39AF45F0174D57EB65FCAEE800FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C975E87450079E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B794FF84087FD054FFE010FFE4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44AF43AF9E1BA9FA9FE7401E89FF0009E8FF00A051FF00C0D1FF00C894BC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D7A1D1401E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912BCEDBA9FA9FE749401E8DC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE53FE1021FF4153FF8043FF92E8F0174D57EB65FCAEEBD0E803CF07808020FF6A9E39FF8F21FFC9741F1E8048FECA3C71FF1FA3FF912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF000347FF002252F1E371DF4CFECC3FF5F9E77DB3FF00017CBF2FECBFEDEEDFFC3B79F39AF45F0174D57EB65FCAEE800FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC975E87450079E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44AF3B6EA7EA7F9D25007A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA3C05D355FAD97F2BBAF43A00F3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44AF43AF9E1BA9FA9FE7401E89FF09E8FFA051FFC0D1FFC894BC78DC77D33FB30FF00D7E79DF6CFFC05F2FCBFB2FF00B7BB7FF0EDE7CE6BD17C05D355FAD97F2BBA003FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D7A1D1401E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912BCEDBA9FA9FE749401E8DC78DC77D33FB30FFD7E79DF6CFF00C05F2FCBFB2FFB7BB7FF000EDE53FE1021FF004153FF008043FF0092E8F0174D57EB65FCAEEBD0E803CF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912BD0EBE786EA7EA7F9D007A27FC27A3FE8147FF0347FF2252F1E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B79F39AF45F0110175524E00364493D00C5DF26800FF0084087FD054FF00E010FF00E4BAFCBBFF0082A6FF00C147FF0066FF00F8257FC08D53E277C5CF17DBEB7F10F56B4B9B5F851F0734A10FFC25DF107C45B08B68E383ED523695E1EB290ADC6B7E20BD8D6D2CED6378E0175A84D696571F28FF00C163BFE0E26FD98BFE09ABE1ED7BE197C33D5BC3FF001DBF6B79ECE6B7D33E1BE83A9C37FE1EF87F792C6441A9FC4ED5B4F9A44D35A06649E2F0CC32FF006D5E200658ECADE44B86FF002E5FDAF7F6C7FDA13F6E8F8D7E28F8F9FB497C40D53C7BE3DF135CBB87B973068BE1ED314E2CFC3FE17D1622B63A1685A742120B4B0B28A340ABE64C659DE495C03ADFDBCFF6EEF8FBFF000511FDA1FC5BFB457ED05E28BAD6BC43AE4CF67E1CD0239A51E1DF01F84EDE695F48F08F85B4F66F26C34BD3A3958C863413DFDEC973A8DEC93DE5D4D2BFC63451400514514005145140051451400514528049000249200006492780001C924F41401FB31FF041AFD8666FDBAFFE0A31F05FC21AE690FA97C26F859ACD9FC62F8BE5D47D8EE7C2BE0ABEB7D46CBC37712383183E2ED763D37419101332E9F75A85D448E6D4AD7FB07C1E3782DA18ADE0D19618208A38618A3BC548E28A25091C68AB6802A2228555000000038AFE56FF00E0D83FF82771FD917F622B6F8F3E3ED09F4EF8D7FB551B4F19DF457D018B50F0DFC30B6F317C05A03A48BE6DBCFAA5B49378A3518CF96E0EA961693C2B369ECCDFD325007A371E371DF4CFECC3FF005F9E77DB3FF017CBF2FECBFEDEEDFF00C3B794FF0084087FD054FF00E010FF00E4BA3C05D355FAD97F2BBAF43A00F3D1E02191FF001353D47FCB90F5FF00AFBA2BD0D7A8FA8FE745007CF041C9E0F53D8FAD260FA1FC8D7D10DD4FD4FF003A4A00F3CF010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803D13E2D7C2EF057C6DF865E3BF845F11B46B6F107817E23785B59F0878A747BB8D2582FB46D72C66B0BD899645740E2298BC4E5498E5549072A2BFC58FFE0A99FB07F8C3FE09D5FB677C56FD9D7C416B7D2785EC3546F127C2AF125D40E96FE2DF869AFBC977E1BD56D6728B1DC4F67119744D604595B6D6B4BD42D893E5066FF6595272393D4773EB5F8A1FF071FF00FC1252D7FE0A3FFB206A3E3EF865A2C12FED43FB3AE99AAF8BFE1AB416C86F7C71E1C863177E29F87124E0AC866D4ED207BFF0F86F3106B96905A158E3BF9678803FC9128ABBA969B7FA3EA17DA4EAB6773A76A7A65E5CE9FA8D85E4325BDDD95ED9CCF6F7569756F2AACB0DC5BCF1BC534522ABC72232B0041154A800A28A2800A28A2800A28A2800A28A2803AAF04F8E7C63F0DBC55A278E3C01E27D73C1DE2FF0DDFC1A9E85E24F0E6A575A4EB1A55FDB38921B9B3BEB2961B885D5873B5F6BA928E1918A9FED17FE0967FF000777FC46F83F0E95F0ABFE0A19E0EB9F8B3E12074ED3ACBE3A781ADA1B3F889A4D9DB830897C65E1D3247A5F8B84492191F53D30E95AB32A1FB4DBEA771219D7F890A2803FDCB7F64BFDBF3F63FF00DB8FC211F8CFF661F8F3E01F8A364B0C126A9A3693AD5B5BF8BBC3D25C2E52DBC45E12BE7B6F1068D3160E886F2C2386764736D34C8379FB0EBFC10FC01F11FE207C2AF1369DE33F867E35F14F807C59A4CC27D37C47E10D7752F0F6B367282398350D2EE2DAE50301B5D049B244251D594907FA09FD963FE0E8DFF829C7ECEF0D868FE37F14F83FF692F0BD92430FF67FC5DD1A43AEFD9E2091E21F16F86AE346D5CCEB0A048A5BE37F12C9FBD9A09D8B0600FF0052D6072783D4F63EB4983E87F235FC80FC06FF0083D97F676D7E0B2B2FDA37F63EF8A5F0DF51291C575ABFC2EF1AF87BE25686D30004976D65AF58780756B0B6721996D61FED99A1056333CF8329FD47F877FF0007577FC11DBC790C06FF00E34F8D3C077922299AD3C69F0CBC53622D9DB1947BCB2B5BFB394AE705A09A44C83F377A00FDFBF010206AB918E6CBAFFDBDD7A1D7E13EB5FF000704FF00C11FBC4D6FA74F63FB6EFC31B5F285C3490EA36BE2AB29D7CEF276068DF40273FBB6C8CF191EB5CFFF00C3F8BFE091BFF47CDF087FEFBF137FF33F401FBF15F3CB0393C1EA7B1F5AFC8E1FF05E2FF8246823FE339BE10F51FC7E26FF00E67EBDABFE2205FF008238FF00D1FA7C1A1FF02F147FF33B401FA0D83E87F235E89E02040D57231CD975FF00B7BAFCB5FF0088817FE08E3FF47E9F06BFEFAF147FF33B5C578C3FE0BE9FF047FD4069FF0062FDBB7E0ECFE51BAF3363789C6DDFF67D99CF87875D8D8FA1A00FDC2A2BF01FFE1FC5FF00048DFF00A3E6F843FF007DF89BFF0099FA51FF0005E2FF008246823FE339BE10F51FC7E26FFE67E803F5C581C9E0F53D8FAD260FA1FC8D7E7CFF00C440BFF0471FFA3F4F8343FE05E28FFE6768FF0088817FE08E3FF47E9F06BFEFAF147FF33B401FA95E02040D57231CD975FF00B7BAF43AFC3DF187FC17D3FE08FF00A80D3FEC5FB76FC1D9FCA375E66C6F138DBBFECFB339F0F0EBB1B1F435C4FF00C3F8BFE091BFF47CDF087FEFBF137FF33F401FBF15F3CB0393C1EA7B1F5AFC8E1FF05E2FF8246823FE339BE10F51FC7E26FF00E67EBDABFE2205FF008238FF00D1FA7C1A1FF02F147FF33B401FA0D83E87F235E89E02040D57231CD975FF00B7BAFCB5FF0088817FE08E3FF47E9F06BFEFAF147FF33B5C578C3FE0BE9FF047FD4069FF0062FDBB7E0ECFE51BAF3363789C6DDFF67D99CF87875D8D8FA1A00FDC2A2BF01FFE1FC5FF00048DFF00A3E6F843FF007DF89BFF0099FA51FF0005E2FF008246823FE339BE10F51FC7E26FFE67E803F5C581C9E0F53D8FAD260FA1FC8D7E7CFF00C440BFF0471FFA3F4F8343FE05E28FFE6768FF0088817FE08E3FF47E9F06BFEFAF147FF33B401FA95E02040D57231CD975FF00B7BAF43AFC3DF187FC17D3FE08FF00A80D3FEC5FB76FC1D9FCA375E66C6F138DBBFECFB339F0F0EBB1B1F435C4FF00C3F8BFE091BFF47CDF087FEFBF137FF33F401FBF15F3CB0393C1EA7B1F5AFC8E1FF05E2FF8246823FE339BE10F51FC7E26FF00E67EBDABFE2205FF008238FF00D1FA7C1A1FF02F147FF33B401FA0D83E87F235E89E02040D57231CD975FF00B7BAFCB5FF0088817FE08E3FF47E9F06BFEFAF147FF33B5C578C3FE0BE9FF047FD4069FF0062FDBB7E0ECFE51BAF3363789C6DDFF67D99CF87875D8D8FA1A00FDC2A2BF01FFE1FC5FF00048DFF00A3E6F843FF007DF89BFF0099FA51FF0005E2FF008246823FE339BE10F51FC7E26FFE67E803F5C581C9E0F53D8FAD260FA1FC8D7E7CFF00C440BFF0471FFA3F4F8343FE05E28FFE6768FF0088817FE08E3FF47E9F06BFEFAF147FF33B401FA95E02040D57231CD975FF00B7BAF43AFC3DF187FC17D3FE08FF00A80D3FEC5FB76FC1D9FCA375E66C6F138DBBFECFB339F0F0EBB1B1F435C4FF00C3F8BFE091BFF47CDF087FEFBF137FF33F401FBF15F3CB0393C1EA7B1F5AFC8E1FF05E2FF8246823FE339BE10F51FC7E26FF00E67EBDABFE2205FF008238FF00D1FA7C1A1FF02F147FF33B401FA0D83E87F235E89E02040D57231CD975FF00B7BAFCB5FF0088817FE08E3FF47E9F06BFEFAF147FF33B5C578C3FE0BE9FF047FD4069FF0062FDBB7E0ECFE51BAF3363789C6DDFF67D99CF87875D8D8FA1A00FDC2A2BF01FFE1FC5FF00048DFF00A3E6F843FF007DF89BFF0099FA51FF0005E2FF008246823FE339BE10F51FC7E26FFE67E803F5C581C9E0F53D8FAD260FA1FC8D7E7CFF00C440BFF0471FFA3F4F8343FE05E28FFE6768FF0088817FE08E3FF47E9F06BFEFAF147FF33B401FA95E02040D57231CD975FF00B7BAF43AFC3DF187FC17D3FE08FF00A80D3FEC5FB76FC1D9FCA375E66C6F138DBBFECFB339F0F0EBB1B1F435C4FF00C3F8BFE091BFF47CDF087FEFBF137FF33F401FBF15F3CB0393C1EA7B1F5AFC8E1FF05E2FF8246823FE339BE10F51FC7E26FF00E67EBDABFE2205FF008238FF00D1FA7C1A1FF02F147FF33B401FA0D83E87F235E89E02040D57231CD975FF00B7BAFCB5FF0088817FE08E3FF47E9F06BFEFAF147FF33B5C578C3FE0BE9FF047FD4069FF0062FDBB7E0ECFE51BAF3363789C6DDFF67D99CF87875D8D8FA1A00FDC2A2BF01FFE1FC5FF00048DFF00A3E6F843FF007DF89BFF0099FA51FF0005E2FF008246823FE339BE10F51FC7E26FFE67E803F5C581C9E0F53D8FAD260FA1FC8D7E7CFF00C440BFF0471FFA3F4F8343FE05E28FFE6768FF0088817FE08E3FF47E9F06BFEFAF147FF33B401FA95E02040D57231CD975FF00B7BAF43AFC3DF187FC17D3FE08FF00A80D3FEC5FB76FC1D9FCA375E66C6F138DBBFECFB339F0F0EBB1B1F435C4FF00C3F8BFE091BFF47CDF087FEFBF137FF33F401FBF15F3CB0393C1EA7B1F5AFC8E1FF05E2FF8246823FE339BE10F51FC7E26FF00E67EBDABFE2205FF008238FF00D1FA7C1A1FF02F147FF33B401FA0D83E87F235E89E02040D57231CD975FF00B7BAFCB5FF0088817FE08E3FF47E9F06BFEFAF147FF33B5C578C3FE0BE9FF047FD4069FF0062FDBB7E0ECFE51BAF3363789C6DDFF67D99CF87875D8D8FA1A00FDC2A2BF01FFE1FC5FF00048DFF00A3E6F843FF007DF89BFF0099FA51FF0005E2FF008246823FE339BE10F51FC7E26FFE67E803F5C581C9E0F53D8FAD260FA1FC8D7E7CFF00C440BFF0471FFA3F4F8343FE05E28FFE6768FF0088817FE08E3FF47E9F06BFEFAF147FF33B401FA95E02040D57231CD975FF00B7BAF43AFC20F889FF000708FF00C11F6386D25B3FDB63E1C6ABF65375E6C7A558F8AAEA56DFE484F2D068285C1F29F041C723D6BE2AF889FF000749FF00C1263C0D15DAE95F143E20FC41BFB75CC365E0FF0086DE21963BC6E7E58751D523D374F53C0C19AE23520F5183401FD5A57CF2C082C482002724F0073EB5FC467C77FF0083CD3E1869B0DED8FECD9FB1F78D3C577AD0BC763E23F8C1E3BD27C1FA7DA5D01F25CC9E18F0A5878B6F356B40E0E203E23D0A7910826485B283F06FF6B9FF00839C7FE0AB1FB56DBEA7A1DB7C5FD37E00F833528A5B793C33F02B496F0A4E2D660EB242FE2ABBB9D4FC5726E460BE62EAF148850346C849A00FF462FDB23FE0A65FB14FEC1DE1E9F58FDA3BE3A7843C2DACFD91EEF4CF87FA6EA36FAF7C47D751436CFECBF06E972CFAC3432BA9892FEF20B4D3449F249788C403FC34FF00C14ABFE0EB4FDA5FF688D3FC4DF087F62CD2AF3F66AF843ABF9B61AAF8FA4B85BAF8CFE2EB0513C1E5DBEA56F2369DE08D32EA398BB41A4C773ADB909BF59822696D1BF93CF11F89BC49E31D6AFF00C47E2DD7F59F13F88355B892F353D73C41A9DEEB1ABEA375331696E6F751D426B8BBBA9E46259E59A67763CB313587401A3ABEAFAAEBFAA6A1ADEB9A95F6B1ACEAD7971A86A9AAEA7753DF6A1A85FDDCAD3DD5E5EDE5CBC93DCDCDC4CEF2CD34D23C9248CCCCC4926B3A8A2800A28A2800A28A2800A28A2800A28A2800AFDC3FF82037FC132753FF008295FEDDFE07F0B78934BBC6F801F0867B5F897F1CB5A585BEC93687A3CE26D13C171DC32342350F1A6B315BE99E5B1DF0E92BAADF2A39B558DFF1AFE1FF0080BC5DF14BC6FE15F873E02D0EFF00C4BE33F1B6BDA6786BC33A0E9903DC5F6A9AC6AF751D9D95A5BC5182C5A49A550CD8DB1A0691C845623FD75FFE08D5FF0004DBF0BFFC1347F639F04FC2AF26CEFBE3078C2DACBC6DF1C7C57040892EA9E39D52D62966D0EDA605E49344F0942EBA169459945C8B59F5278609AFA486300FD55D2F49B0D0F4DD3F45D22CA0D3F4AD26CAD74DD36C2D62586DACAC6C614B6B4B5B7890048E18208D228D14054450AA000055EC1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E885EA3EA3F9D15F3C0272393D4773EB45007D0EDD4FD4FF3A4AF3D3E3D193FF12A3D4FFCBE8F5FFAF4A4FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA188041040208208232083C1041E0823A8AF3D1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00FF3C8FF0083AA7FE089B7BF083C77ACFF00C1473F667F0A463E12F8EEEE27FDA1BC1BA15932AF813C73773BAFFC2C1B3B4B687C987C35E2A678935A51E5AE99AEA9B9F9ADF54DB6BFC44D7FBBF78FFF00E10DF8A5E09F157C38F883E08D2BC5BE08F1BE83AA7867C55E1AD70C1A8693ADE87AC5A4B63A8E9D7F6773632433DBDCDB4D246E8EA7AE4618023FC9EBFE0BAFFF000465F197FC132BE364DE36F879A76A7E22FD91FE2A6B17F73F0DBC54A25BD93C0BA9CB2BDCCDF0DFC5D7014B5B5F5844E1B40D46E76C3AEE991968657BEB3D42DEDC03F01A8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028EBD28AFEADBFE0DC3FF0082126B9FB7D7C4AB2FDAA3F68BF0FC9A57EC9BF0BF59B4BAD1349D62D093F1B3C656370678747B4B09827DABC15A3CD6EAFE23BF98ADAEA53347A35A8BACEA46CC03F557FE0D79FF008235DE7C31D274DFF828AFED23E15487C65E2CD0DE2FD9CBC19AFD81373E19F0D6AD1C66E3E27DDDA5DC63C8D635EB226D7C2ECC864B3D227B8D4A32B35F5B3C3FDAF2F51F51FCEBBAB1F86965A65959E9BA75DC363A7E9F6B05958D95AE9B1C16D69676B12C36D6D6F04772B1C30410A2471451AAA222AAA800015687808020FF006A9E39FF008F21FF00C97401E874579E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3A2BD147808647FC4D4F51FF2E43D7FEBEE8A00F3A6EA7EA7F9D25388393C1EA7B1F5A4C1F43F91A00F44F0174D57EB65FCAEEBD0EBCF3C04081AAE4639B2EBFF006F75E8740057CF0DD4FD4FF3AFA1EBE796072783D4F63EB400DAE13E317ECBFF00053F6C4F827F12BE007ED01E0AD3BC75F0DBC77A641A76ABA5DEA98EE6CE764BCFB1EB3A2DFC7B6E74AD6F4BB8D977A6EA368E935BDC46A72C85D1BBCC1F43F91AF44F010206AB918E6CBAFF00DBDD007F8F7FFC165BFE08E1F1B7FE093FF1DAE742D66CF55F18FECF1E37D42FEEBE0CFC618EC98E9FABE9C92993FE119F11CD02B5B697E30D1E078A3BEB294C42FA2D9A8592B5BCA447F8C55FEEC7FB567ECA1F02FF006D3F827E2EF801FB43F8234EF1CFC3AF18D94905D595DA226A1A4DF88DD6CB5FF0FEA251E7D235ED2E47F3F4FD46DB1245202AE2485E489FFC9B3FE0B3BFF043DF8FBFF04A6F8A5A86AB1D8EB3F11BF656F15EBB7517C31F8CD69A7C92C36515C3CB7161E12F1F9B48DADB43F15DBDAAB468F2186CB5C5B69EEB4EC6C9ADA000FC2FA28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28AFE8F3FE088BFF0413F8A7FF0516F17787FE357C6CD2BC45F0E7F63BD035C827D4B5D96DE5D2B5EF8BFFD99728F7DE19F01BDDC048D2E778DB4ED5BC591C13D9D9B1BAB6B06B8D46DE54B700E53FE086BFF000441F881FF000531F8996DF12FE28E9BAEF833F63EF006B36DFF0009978B7CB974DBCF891A9DABC77327807C0F7522ABCD2CD16C5D7F5CB45960D0ED6E235F305FDCDA44DFEAC5FB3B7C33F017C1BF00E97F0C3E18785B48F05780BC15A468BA0F863C31A1DAA59E99A4E95610DCC16D6D044B9248450D2CD2B4934F2979A692495D9CF997C27F84BF0EBE067C3BF0A7C27F849E0FD1FC09F0F7C13A4DB68BE19F0BE8368969A769B616A811155146F9A794832DD5DCED25CDD5C3C971712C9348EEDF43F80810355C8C7365D7FEDEE803D0E8A28A00F9E1BA9FA9FE7494E6072783D4F63EB4983E87F23401E89E02E9AAFD6CBF95DD7A1D79E780810355C8C7365D7FEDEEBD0E80157A8FA8FE7450BD47D47F3A28006EA7EA7F9D252B753F53FCE92803CF3C7A481A560E39BDE9FF006E95E7793EA7F335E89E3DE9A57D6F7F95A579D5003949C8E4F51DCFAD7D0D5F3C2F51F51FCEBE87A002BCF3C7A481A560E39BDE9FF6E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD79DFC58F84DF0E7E3AFC3CF157C27F8B7E10D17C77F0FBC6DA55C68BE24F0C7882CA2BFD3B50B2B818F9A2995BCAB8B79025C5A5D4452E2D2EA28AE2DE48E68D1D7D0E957A8FA8FE7401FE6CFFF0005C3FF0083677E2B7EC3175E2CFDA43F642B4F10FC60FD94CCD3EB3AE78621B49B54F883F056D246DF7316A9159A3CDE25F06D93967B7F10C16F1DDE9962563D6A165B49754B9FE4BC82A4AB02181208208208382083C820F041E41AFF007E9B8B7B7BB826B5BA822B9B6B889E1B8B79E349A09E1954A4914D14819248E44255D1D4AB2920820D7F1E7FF0593FF83567E127ED6571E26FDA03F6147F0C7C0AF8F37115EEB1AF7C2D9EDCE9DF0A7E276A44CB753358FD91593C0DE24BF959963B9B6B59341BBB8744BCB6B0577BE8803FCC868AF7EFDA4BF65DF8F7FB227C4FD67E0F7ED15F0CBC4FF0BBC7DA24AEB3E8FE24D3E5B54BEB6591E34D4B47BE01ACB58D2EE1918DBEA1A74F716B28076C99040F01A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002A6B7B6B8BCB886D6D209AE6EAE65482DEDEDE379A79E69582471431461A492491C8544452CCC40504902BEA9FD913F624FDA5FF6E7F89965F0ABF66BF861AEF8FF00C4134907F6AEA16B6EF6FE19F0BD94EE53FB4FC51E219D574CD1AC902C8FBAEA759A658A45B6866752B5FE8BBFF0489FF83717F67FFD8147877E337C7E7D07F680FDA8ADE086F6DF51BCD37ED3F0E3E196A8DE5C817C0FA56A71F99AAEAD60EA521F166AF696F7424267D3F4ED35D637001F85BFF044FF00F83663C4FF001965F077ED47FB7FE91AB782FE1724B63E20F047ECFD776F269DE2BF1FC6196E2C750F1FF9BB6E7C39E18902A4C3421145ACEAA8E8B74F616C248AE7FD243C1BE0CF0A7C3CF0AE81E07F03787B48F0A7843C2DA5D9E8BE1EF0E685636FA6E91A3E95610A5BDA58D8595AA4705BC10448AAA8883A64E58927C79782A0000646001803D801C01EC2BE87A002BCF3C7A481A560E39BDE9FF6E95E875E79E3DE9A57D6F7F95A50079DE4FA9FCCD2A9391C9EA3B9F5A6D2AF51F51FCE803E87A28A2803CF3C7A481A560E39BDE9FF006E95E7793EA7F335E89E3DE9A57D6F7F95A579D500381391C9EA3B9F5A2917A8FA8FE745007A29F1E8C9FF008951EA7FE5F47AFF00D7A527FC27A3FE8147FF000347FF0022579DB753F53FCE92803D1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D1E02E9AAFD6CBF95DD7A1D0079E0F010041FED53C73FF1E43FF92E83E3D0091FD9478E3FE3F47FF2257A1D7CF0DD4FD4FF003A00F44FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F3E735E8BE02E9AAFD6CBF95DD001FF0810FFA0A9FFC021FFC9740F010041FED53C73FF1E43FF92EBD0E8A00F3C3E3D0091FD9478E3FE3F47FF2251FF09E8FFA051FFC0D1FFC895E76DD4FD4FF003A4A00F0BFDAEBF612FD94BFE0A3FE02B8F87DFB4DFC1DF0AF8CF4DD36295348D72F34FB76F19F86EE35142BF6EF09F8B6DA3B3D6FC3D7709B5566FB1DD35B5D8222BDB7B880344FFC13FF00C14BBFE0D12FDA8FE014BAFF00C4DFD8635B4FDA57E155BB5D5FCBF0DAFA58348F8CFE1BB140D3797616B288B47F1C5B5BA068C7F66DD59EBAE444B168F7ACD24A9FE923E02E9AAFD6CBF95DD7A1D007F81E78E3C03E37F867E26D57C17F10FC27E21F04F8B743BB9AC757F0E78A348BED1358D3AEE091A3961BAB0D42182E22647561F326D6C65491835C957FB7A7ED9DFF0004BEFD85FF006FCF0E5D683FB4EFECF9E09F1BEA32452269FE3AB2B23E1BF88DA14CEA42DCE8FE37D01AC35F8191F6C8D693DE5CE9D74D1A25ED95CC4BE5D7F133FB697FC19E7E27D38EB5E29FD867E3AD9F882DD4DCDDD87C2DF8D0ABA5EA3B0333C7A6E9DE3AD22DA4B19E6F2D44704BAAE916514B33AADC5CDB441A7001FC38D15F7C7ED41FF04BCFDBEBF638BEBAB6FDA0FF00660F89DE0CD3AD9D9078AECB475F16F81AE954162F67E36F084DAE7862E004C492469AA79F02B2FDA22858EDAF825D1E3628EAC8C0E0ABA95604704104020E7D4500368A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2A58209EE65482DE19679A46091C50C6F2CB23B1C2AA4681999989C000124F0050045457E9AFEC97FF000473FF0082927EDB179603E02FECABF12756F0EDEC881FC7BE2CD3A3F007C3FB48188F32E65F16F8CE5D174AB910C67CD6B5D366BED4658C1FB359CEE550FF005ADFB0DFFC197BA75A49A278BBF6FBF8F47536468AEB51F849F03CC96F66FB5831D3F51F883AC5AA5D491B801677D2B44B672ACE90DC23049E803F83CF855F07BE29FC71F18695F0FF00E0FF00C3FF0016FC48F19EB5730DA69BE1CF07E877FAE6A77135C48B0C40C1630CC628CC8EAAD34C6385320BBA8AFEC1FF00E09B3FF06957C51F1CDD681F13BFE0A1DE275F863E0D7369A8C3F033C07AA41A87C43D5ADC9129B4F17F896382E345F09ACA81524B1D29F5BD4824AC2E27D32E62680FF6D1FB2DFEC2FF00B25FEC57E1383C19FB32FC0BF02FC2BD3228D52EB50D1F4CFB5F89F599506D377AFF008BB5592FFC4BAE5DBF4371A9EA972EA9B618F6411C51A7D63401E6BFB307EC89FB36FECD5F0D74DF84FF00B33FC21F06FC12F0578723884965E17D2607BFD7EEAE2308DAA788F59710EADAEEACE2D733EA5AC5EDFDDCDE605F35238D107D1FFF000810FF00A0A9FF00C021FF00C974780BA6ABF5B2FE5775E87401E783C040107FB54F1CFF00C790FF00E4BA0F8F40247F651E38FF008FD1FF00C895E875F3C3753F53FCE803D13FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCF9CD7A2F80BA6ABF5B2FE5774007FC2043FE82A7FF0087FF25D03C040107FB54F1CFF00C790FF00E4BAF43A2803CF0F8F40247F651E38FF008FD1FF00C8947FC27A3FE8147FF0347FF22579DB753F53FCE92803D1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D1E02E9AAFD6CBF95DD7A1D0079E8F010C8FF89A9EA3FE5C87AFFD7DD15E86BD47D47F3A2803E7820E4F07A9EC7D69307D0FE46BE886EA7EA7F9D250079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF006E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CF183E87F235E89E02040D57231CD975FFB7BAF43AF3CF1E920695838E6F7A7FDBA5007A1D15F3C64FA9FCCD2A9391C9EA3B9F5A00181C9E0F53D8FAD260FA1FC8D7D0F450079E780810355C8C7365D7FEDEEBD0EBCF3C7A481A560E39BDE9FF6E95E7793EA7F33401F43D7CF2C0E4F07A9EC7D685272393D4773EB5F435007CD3A9E93A6EB76175A5EB3A6D96ADA65F42F6F79A7EA56705F595DC120C490DCDADD472C1344E061E3911918704115F9E5F19FFE087DFF0004BCFDAFE3D767F8C1FB267C3D8B5EB81063C5DF0FE1BCF867E2A8E59967026FED7F04DCE8B25C985A3492386F92EAD77EEF3207592456FDA3AF3CF1E920695838E6F7A7FDBA5007F1E3F1F3FE0CADFD8F7C502EAFBF675FDA5FE367C29BC90CB2C3A3FC40B2F0CFC4CD0D1D8E63B6B7B9B1B0F066B1696A9F743DD4FABDCE3979246E6BF217E2F7FC197BFB77F85DAE26F845F1E7E037C4FB70EC6D6DB579BC49E07BD68867689DAEB4CD56D565200CF9723A027862066BFD11327D4FE669549C8E4F51DCFAD007F94A7C41FF0083643FE0AFBE0679D74EFD9FFC3FF11120765327817E26782675911724CB12F89355F0D4AEA40CAA08C4AFC2AC6CC403F2AF89FF00E087DFF0565F089906ABFB097C7ABA316777FC239E1987C5C0E33FEACF856F75912F4E3CADF9E08E0D7FB4DD1401FE2333FF00C1257FE0A870F99B7FE09E9FB665DF95FEB3FB37F670F8B1AAEDC9C0CFF66F856EBEF73B719DD86C6769C52FF8751FFC1507FE91CFFB72FF00E2297C73FF00E61ABFDAC3C7A481A560E39BDE9FF6E95E7793EA7F33401FE327FF000EA3FF0082A0FF00D239FF006E5FFC452F8E7FFCC3567FFC3AE3FE0A5BFF0048F8FDB5FF00F1177E367FF3135FECFAA4E4727A8EE7D6BE86A00FF0FCFF00875CFF00C14B7FE91F1FB6BFFE22EFC6CFFE626AC41FF04AEFF829BDD6EFB37FC13C3F6DEB8D98DFE4FECAFF001BE5D9BB3B776CF0436DDDB4E338CE0E3A57FB7DD79E78F49034AC1C737BD3FEDD2803FC53FF00E1D47FF0541FFA473FEDCBFF0088A5F1CFFF00986A3FE1D47FF0541FFA473FEDCBFF0088A5F1CFFF00986AFF0066CC9F53F99A55272393D4773EB401FE305FF0EB8FF8296FFD23E3F6D7FF00C45DF8D9FF00CC4D1FF0EB9FF8296FFD23E3F6D7FF00C45DF8D9FF00CC4D7FB81D1401FE20907FC12BBFE0A6F75BBECDFF0004F0FDB7AE36637F93FB2BFC6F9766ECEDDDB3C10DB776D38CE33838E9563FE1D47FF0541FFA473FEDCBFF0088A5F1CFFF00986AFF006B0F1E920695838E6F7A7FDBA579DE4FA9FCCD007F8C9FFC3A8FFE0A83FF0048E7FDB97FF114BE39FF00F30D59FF00F0EB8FF8296FFD23E3F6D7FF00C45DF8D9FF00CC4D7FB3EA9391C9EA3B9F5AFA1A803FC3F3FE1D73FF00052DFF00A47C7EDAFF00F88BBF1B3FF989AB107FC12BBFE0A6F75BBECDFF0004F0FDB7AE36637F93FB2BFC6F9766ECEDDDB3C10DB776D38CE33838E95FEDF75E79E3D240D2B071CDEF4FFB74A00FF14FFF008751FF00C1507FE91CFF00B72FFE2297C73FFE61A8FF008751FF00C1507FE91CFF00B72FFE2297C73FFE61ABFD9B327D4FE669549C8E4F51DCFAD007F8C17FC3AE3FE0A5BFF48F8FDB5FFF001177E367FF0031347FC3AE7FE0A5BFF48F8FDB5FFF001177E367FF003135FEE0745007F88241FF0004AEFF00829BDD6EFB37FC13C3F6DEB8D98DFE4FECAFF1BE5D9BB3B776CF0436DDDB4E338CE0E3A558FF008751FF00C1507FE91CFF00B72FFE2297C73FFE61ABFDAC3C7A481A560E39BDE9FF006E95E7793EA7F33401FE327FF0EA3FF82A0FFD239FF6E5FF00C452F8E7FF00CC3567FF00C3AE3FE0A5BFF48F8FDB5FFF001177E367FF003135FECFAA4E4727A8EE7D6BE86A00FF000FCFF875CFFC14B7FE91F1FB6BFF00E22EFC6CFF00E626AC41FF0004AEFF00829BDD6EFB37FC13C3F6DEB8D98DFE4FECAFF1BE5D9BB3B776CF0436DDDB4E338CE0E3A57FB7DD79E78F49034AC1C737BD3FEDD2803FC53FFE1D47FF000541FF00A473FEDCBFF88A5F1CFF00F986A3FE1D47FF000541FF00A473FEDCBFF88A5F1CFF00F986AFF66CC9F53F99A55272393D4773EB401FE305FF000EB8FF008296FF00D23E3F6D7FFC45DF8D9FFCC4D1FF000EB9FF008296FF00D23E3F6D7FFC45DF8D9FFCC4D7FB81D1401FE20907FC12BBFE0A6F75BBECDFF04F0FDB7AE36637F93FB2BFC6F9766ECEDDDB3C10DB776D38CE33838E9563FE1D47FF000541FF00A473FEDCBFF88A5F1CFF00F986AFF6B0F1E920695838E6F7A7FDBA579DE4FA9FCCD007F8C9FF00C3A8FF00E0A83FF48E7FDB97FF00114BE39FFF0030D59FFF000EB8FF008296FF00D23E3F6D7FFC45DF8D9FFCC4D7FB3EA9391C9EA3B9F5AFA1A803FC3F3FE1D73FF052DFFA47C7EDAFFF0088BBF1B3FF00989AB107FC12BBFE0A6F75BBECDFF04F0FDB7AE36637F93FB2BFC6F9766ECEDDDB3C10DB776D38CE33838E95FEDF75E79E3D240D2B071CDEF4FF00B74A00FF0014FF00F8751FFC1507FE91CFFB72FF00E2297C73FF00E61A8FF8751FFC1507FE91CFFB72FF00E2297C73FF00E61ABFD9B327D4FE669549C8E4F51DCFAD007F8C17FC3AE3FE0A5BFF0048F8FDB5FF00F1177E367FF31347FC3AE7FE0A5BFF0048F8FDB5FF00F1177E367FF3135FEE0745007F88241FF04AEFF829BDD6EFB37FC13C3F6DEB8D98DFE4FECAFF001BE5D9BB3B776CF0436DDDB4E338CE0E3A558FF8751FFC1507FE91CFFB72FF00E2297C73FF00E61ABFDAC3C7A481A560E39BDE9FF6E95E7793EA7F33401FE327FF000EA3FF0082A0FF00D239FF006E5FFC452F8E7FFCC3567FFC3AE3FE0A5BFF0048F8FDB5FF00F1177E367FF3135FECFAA4E4727A8EE7D6BE86A00FF0FCFF00875CFF00C14B7FE91F1FB6BFFE22EFC6CFFE626AC41FF04AEFF829BDD6EFB37FC13C3F6DEB8D98DFE4FECAFF001BE5D9BB3B776CF0436DDDB4E338CE0E3A57FB7DD79E78F49034AC1C737BD3FEDD2803FC53FF00E1D47FF0541FFA473FEDCBFF0088A5F1CFFF00986A3FE1D47FF0541FFA473FEDCBFF0088A5F1CFFF00986AFF0066CC9F53F99A55272393D4773EB401FE305FF0EB8FF8296FFD23E3F6D7FF00C45DF8D9FF00CC4D1FF0EB9FF8296FFD23E3F6D7FF00C45DF8D9FF00CC4D7FB81D1401FE20907FC12BBFE0A6F75BBECDFF0004F0FDB7AE36637F93FB2BFC6F9766ECEDDDB3C10DB776D38CE33838E9563FE1D47FF0541FFA473FEDCBFF0088A5F1CFFF00986AFF006B0F1E920695838E6F7A7FDBA579DE4FA9FCCD007F8C9FFC3A8FFE0A83FF0048E7FDB97FF114BE39FF00F30D59FF00F0EB8FF8296FFD23E3F6D7FF00C45DF8D9FF00CC4D7FB3EA9391C9EA3B9F5AFA1A803FC3F3FE1D73FF00052DFF00A47C7EDAFF00F88BBF1B3FF989AB107FC12BBFE0A6F75BBECDFF0004F0FDB7AE36637F93FB2BFC6F9766ECEDDDB3C10DB776D38CE33838E95FEDF75E79E3D240D2B071CDEF4FFB74A00FF14FFF008751FF00C1507FE91CFF00B72FFE2297C73FFE61A8FF008751FF00C1507FE91CFF00B72FFE2297C73FFE61ABFD9B327D4FE669549C8E4F51DCFAD007F8C17FC3AE3FE0A5BFF48F8FDB5FFF001177E367FF0031347FC3AE7FE0A5BFF48F8FDB5FFF001177E367FF003135FEE0745007F88EE97FF0490FF82A2EB39FECFF00F827AFED9126D0A5BCEFD9DBE29DA6C0C095F33ED7E1883CBDC01003ED39057190457B2785FF00E0835FF057FF0017797FD95FB02FC7BB4F371B47893C3F63E0FC67A799FF00095EA5A3795EFE6ECC77C57FB1DF8F49034AC1C737BD3FEDD2BCEF27D4FE66803FCAEFE1E7FC1AC9FF000594F1D983FB4BF67CF0CFC3949C905FC79F14FC0F6FE42E7869D3C35AAF896450473854771D1941C8AFBC7E137FC19C9FB5DF8816DEE3E2FF00ED19F06FE1EC7BD05E69FE1DB0F11F8CEFD50902436D71F66D22C6464E702478C36074C9C7FA2A29391C9EA3B9F5AFA1A803F88AF811FF00067A7EC41E0C6B7BEF8F1F1B7E387C68BF85A291B4BF0FCBA0FC30F0C4E460CD6F7B05A59788FC43710B72A9259788B49980C31C1E07F405FB1F7FC11D3FE09A5FB2FEFB8F84BFB227C28B1D674B3686CFC4DE2AD1A4F1FF008A919BCF259BC45E379F5ED59C868D19435D1547CB22A935FAE75E79E3D240D2B071CDEF4FFB74A00EEACECACF4EB682CAC2D2DAC6CEDA28E0B6B4B4822B6B6821894247143042A91451C68AA8888AAAAA02A80001566BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFFDBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E87AF9E581C9E0F53D8FAD0A4E4727A8EE7D6BE86A00F9E307D0FE46BD13C04081AAE4639B2EBFF6F75E875E79E3D240D2B071CDEF4FFB74A00F43A2BE78C9F53F99A55272393D4773EB40030393C1EA7B1F5A4C1F43F91AFA1E8A00F3CF010206AB918E6CBAFF00DBDD7A1D79E78F49034AC1C737BD3FEDD2BCEF27D4FE66803E885EA3EA3F9D15F3C0272393D4773EB45007D0EDD4FD4FF3A4AF3D3E3D193FF12A3D4FFCBE8F5FFAF4A4FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D15E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00F43AF3CF1EF4D2BEB7BFCAD28FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F201E734ABD47D47F3AF44FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC97401E874579E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44A003C7BD34AFADEFF2B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC97401E76BD47D47F3AFA1EBCF07808020FF6A9E39FF8F21FFC9741F1E8048FECA3C71FF1FA3FF912803D0EBCF3C7BD34AFADEFF2B4A3FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBC8079CD2AF51F51FCEBD13FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D007A1D15E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44A00F43AF3CF1EF4D2BEB7BFCAD28FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F201E734ABD47D47F3AF44FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C97401E874579E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D15E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00F43AF3CF1EF4D2BEB7BFCAD28FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F201E734ABD47D47F3AF44FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC97401E874579E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44A003C7BD34AFADEFF2B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC97401E76BD47D47F3AFA1EBCF07808020FF6A9E39FF8F21FFC9741F1E8048FECA3C71FF1FA3FF912803D0EBCF3C7BD34AFADEFF2B4A3FE13D1FF0040A3FF0081A3FF00912978F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBC8079CD2AF51F51FCEBD13FE1021FF4153FF8043FF92E81E020083FDAA78E7FE3C87FF25D007A1D15E787C7A0123FB28F1C7FC7E8FF00E44A3FE13D1FF40A3FF81A3FF912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBCA7FC2043FE82A7FF0087FF25D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF25D07C7A0123FB28F1C7FC7E8FF00E44A00F43AF3CF1EF4D2BEB7BFCAD28FF84F47FD028FFE068FFE44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F201E734ABD47D47F3AF44FF0084087FD054FF00E010FF00E4BA07808020FF006A9E39FF008F21FF00C97401E874579E1F1E8048FECA3C71FF001FA3FF009128FF0084F47FD028FF00E068FF00E44A003C7BD34AFADEFF002B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F29FF000810FF00A0A9FF00C021FF00C97401E76BD47D47F3AFA1EBCF07808020FF006A9E39FF008F21FF00C9741F1E8048FECA3C71FF001FA3FF00912803D0EBCF3C7BD34AFADEFF002B4A3FE13D1FF40A3FF81A3FF912978F1B8EFA67F661FF00AFCF3BED9FF80BE5F97F65FF006F76FF00E1DBC8079CD2AF51F51FCEBD13FE1021FF004153FF008043FF0092E81E020083FDAA78E7FE3C87FF0025D007A1D15E787C7A0123FB28F1C7FC7E8FFE44A3FE13D1FF0040A3FF0081A3FF00912800F1EF4D2BEB7BFCAD2BCEABD1B8F1B8EFA67F661FFAFCF3BED9FF0080BE5F97F65FF6F76FFE1DBCA7FC2043FE82A7FF000087FF0025D0079DAF51F51FCEBE87AF3C1E020083FDAA78E7FE3C87FF0025D07C7A0123FB28F1C7FC7E8FFE44A00F43AF3CF1EF4D2BEB7BFCAD28FF0084F47FD028FF00E068FF00E44A5E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF00876F201E734ABD47D47F3AF44FF84087FD054FFE010FFE4BA07808020FF6A9E39FF8F21FFC97401E874579E1F1E8048FECA3C71FF1FA3FF9128FF84F47FD028FFE068FFE44A003C7BD34AFADEFF2B4AF3AAF46E3C6E3BE99FD987FEBF3CEFB67FE02F97E5FD97FDBDDBFF876F29FF0810FFA0A9FFC021FFC97401E76BD47D47F3A2BD147808647FC4D4F51FF002E43D7FEBEE8A00F3A6EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0036BE786EA7EA7F9D7D13B1BD3F51FE35F3C15624F1DCF71FE3400CAF45F0174D57EB65FCAEEBCF3637A7EA3FC6BD17C04AD8D578EF63DC7FD3DFBFB5007A0D14ED8DE9FA8FF001A3637A7EA3FC6803E766EA7EA7F9D253CAB1278EE7B8FF1A4D8DE9FA8FF001A00F43F0174D57EB65FCAEEBD0EBCFBC04AD8D578EF63DC7FD3DFBFB57A1EC6F4FD47F8D0022F51F51FCE8A70560471DC771FE345007FFFD9, N'', N'', N'')
INSERT [dbo].[tbl_Company_Master] ([id], [Companyno], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BusinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 39, N'testcompany', N'', N'dasdas', N'9', N'2', N'm', N'1', N'390', N'8320604985', N'mikir@yahoo.com', 27, 31, N'', N'Active', N'343434324324', N'4234324324', N'34324324324234324', N'4234234324234324234', N'1', CAST(N'2021-01-21T19:49:11.350' AS DateTime), N'YGOYUMLF1DQ9UXPC3MP4.png', 0x89504E470D0A1A0A0000000D49484452000001420000006F080600000099E8C9C00000000473424954080808087C0864880000005F7A5458745261772070726F66696C652074797065204150503100000899E34A4FCD4B2DCA4C562828CA4FCBCC49E552000363132E134B134BA3440303030B0308303430303604924640B6395428D10005981A98599A199B199A033188CF050048B614C93AD443320000200049444154789CEC9D779C1E55BDFFDF67CAD3CBF6924D3665D303090981D002028274452E5851147FA0D8AE7A95AB28288A0A569A82624151042E5245104231D4904008E97DB3D9CD6EB6EF3E7D66CEF9FD71E6C92E61936C8A04713FAFD74302CC9CF99E33673EF3ED2394528A118C6004FF361042883D1DA314828D9727E88B4E465801EAC66DC7893753BB3827C477E49B8E5D7977B4F3A5A7DE974D15CE55A8F12214C80463C1A7120D15BF0D1EF9ADCD42F08EE6093142842318C1BF17F644844A21DA6E39F5CC742AFD9D4CDE9C20956544E3A22B918876D881E833A1A8BC29F4BEBB1A8540A9AB4EB0B696D79CB3797DCF7FB7B6E78FDADEEFD83D9E4B286031B624A46ACB22AB2311F3BB3D56F73D277EE719F7AD9AE35B8D11221CC108FECDB02722DC7EF37B267677A5EE696DED3F6C7DBBA42767610A4959583061944D4D5570456955E882B24677EDB21EE71B9B5BBC6FACDBEE0697A55D56640A4821A8B54C6228EA6201665686DCDA32F3EA31FD9DD7CEB86765E1AD9AE75B09E3600B3082118CE0C0A2F254A329DB5358D0DE2B64169BBA984975C1A0B3C9E0A9971C96BC969AD1DE9CBA645977EAA2B56B33972DDE980B8E9B55C661872550A641B96D9253927552F27C5F8E471B53D6A6E6FC955D918AAFAABBCF370FF6FCFE15B00EB6002318C1080E2CC4A4BFE7EF3EE7D05FF70BEB1C4B894915BD79EA732E3D9120CB3306AB1B1591807B59A1579A0B37BAC6F479151C7F623957DEBE814CAE806319384A6222482B499F27B13B0DAB2C24BEFEDA53CD4B81BF1DEC391E688C68842318C13B10173CF8FA9A9C69FC259093C40B92972B135C1EAB6349FD24E2E128EDCD797B71BB32164B8167E760DD5644214777BE405726472EEF902A1428380EFD99342FF7A579A225176D4B59D7A8D55F8B1FECF91D688C10E10846F00E45BFC7EA425E7A4D8952FED41BE4A9B5DB793D1C215615A332AA68949215F91CEB1BD3F4B40822A68D940A4F41C193B88E87E3292CC3241A0D131955C9F8B93366E4B787AF519BAE0A1DECF91D488C98C62318C13B14C91AEB79DB765EEAEDCB1E53171FCBA9474CE6226B1DB3522D448E9FC4298D39E26B7B387ADE384A675731F5B195BCBBA0A88806E8746D0A058B717555D426628C8FDB8C894ADA5CD3EA7C2573E994959DCDEABE8FDD26CEFD43E7C19EE781C048D4780423F837C370F2088B78E19B87BD7BF30AE7DAEE5C624A301A8A4E0E36523DD322397E2696E3E15604499A61DA9FEBA2A421C33619A0BC254FAEB69ECD85B1E066F05CD8DEE5F1CCEB6BD8BCA999C3EA4731AD5C32BDCCFDBF8A98FAF1E82B1F7FE95F39DFB7022344388211FC9B616F8810E02A7595153DE39E2F5AA63861427DE498BE9451DEDC1B645BBA87B1630553938AE921C10633CC2B9BD3941402F405C33CB1D9C35036359575944682F4E7FB696E6F23A43C566FD8C229F5559C3A3AD83BA9C2FC6C12EB81AA5F3C93FA57CDF95F8D11221CC108FECDB0B74458844AFDBAFAFFBEF2E88247D675CD589996D49426717ADA0986F2BC776E357F78B205D73528ADAEC275245D5DAD8C4E26484B89A33CE6CF3912D7307872D10B6C6AEB60743CCA178FAE62FEC428B158FCA3A59FF9F39F0EF45CDF2A8C10E10846F06F867D2142359DC0ADA30FFFE9DFBBE467D7A452C46CC107DF730EAB1A9B49A7B731774C82E51BBAA82AABA02795616B6F3763AA6B69EA4ED1D2DE4C5F2643D6911C36B181A9E327D2B6AD85D97529BEF8F1A94807325B320F773EDFFDDF6587D05EF6F947FA8510FF56BC32122C19C108FE03F0EC89E77DF4F557367EF2F58E2EBAF319EAC68F6373473B9BB7F7F0DE1901CE9C9D231928E381D77BE8EF6A03139E5FBD869E4C16572A6CD324600A16AF5ACDFA96ED1C3A7E2CE3E226F6F295ACE9962CDC689E166AE7CE136BC3370921FE70B0E7BBB718499F19C108DEE178E64BE7CD6F3262DF4D9754869580B1E5554C9B389DD7D6AE65F1AAD7195D3786095367938D56B074D3269A52395AD30EE97C01DB3408DB169600C3348945A2F4A57A7974F1126E7EBA99052BBA79767537573FDE61BDB03D75C4964D99D3D4E2C3ED833DE7BDC508118E6004EF605C357D74D9E2655B7EB8ADA36754694539471F328333E7CF4749876DDBDB3085C393EBB3DCF34A8C45EB7B09D9261E8A82E701E04AFD775729142050C443219291089BFA61B5534D7B364947B6C0E2BE020B36644F78F9C6C0CF365E71D2D8833BF3BDC308118E6004EF6024CB4ADEDB9A718F59D5DE4B5F264F756D2D59CFE1F9E5AF932FE4A94AC6B877C1B37CF6DADFF1ECE2C520C010024F29B2B280C4C1343CA4E19295051CA53B7829D7A1B624CE31275CC8B8434F2426FA599F4AF3F7CECCA8D75A0B9FCD67D42DE99BCFAF39C8D31F36467C842318C13B142BCE9F1E78A6337C5C7F7F9E8D3DBD445C8F6DBDDDF4F5F5D1D9DD8365DBD896452CA8909647C0B671A4D475C68664BC1D67B45D41CCB048CB3C5BF2DD6C2EF492F73C84E7521689533EF958F27D8AF6BE4E6CCF659515E2E95697C346154E0B58F9F3809B0FF63A0C072344388211BC43D1D4575EEE4AA7DE352D0AA92C3297A1CFF1B00D413C1CC2550A577A140408DB228F872104C9508829669213AAE7505F3995A06D934DF5B1BDAF99E73A97B1B06703EDAA405D55250199C5E9EFE1CCC3DFC5ACFA5A3ABD6E5E5FDDCC92C614878E0D8E56EAD9F8C63B1FA809B46EDE3AE6CBF7640FF69AEC0A2344388211BC43619596D638DB3B2776155C42B649525808536159266EAE40CA29501F8E103102B84A8069631826759EC571E38EA561E6B1189525887000AF3F47EDF62EEA373650BD76210F38CF131F5583114A502F237C7EEC514CAF0AB0A47F394FA93CF76D13542FEC3C61DE37AF9D44A23C93319257019B0EC63A34DF7DE294975E7666F66E371FFAC4EDCFE4863A6684084730827728DCA09A9437C4B89C541410F4299040C6F390862227F56F7A244AD48ED02B05F4757278DD74669C713AE6982A94A950B6090ADCDE2495D5094E0D44891B21C24469EEECA4B3AD95F6A58B48548CA7BAAC927A23C4CB4E1F0D9DF6D1D1E51D8C19EB2D2E195F79D0F20A5F7DA6FFC718E65979913D157802DEFCD98111221CC108DEA190F94299E7B94805CA807EA940292A2C0B0B685339967577B13D97A35A4034D3CF91632633F1ECB349CC9B0CB28027259EB0302D1B27112117B3290904989F846DE2AFBCF8EC069634F6D05AD84A35A3991F1CC74925F5BCD2BF94A58EC7A1DBF34454675CE6F39183B1064FDD7C7E2CB3AA655A674FEEA1E6BC31ED92C30F7FFA574B96383B1F3742842318C13B14229C0C84AD1C96ECC71582AC74C9791E7161724434C99CD24A1A9D02B9FE6E6A23718E3CE9348E3AED5C6A66CEC643A164102B14C52C40BAAB8F425E6285A3989383B8D13EAC0D90D9F6221B7A4C360A8BEE7407F1C23466543450D3BA86CDF934CFE66DBC1E3171A299AF0756BED56BE075799F2F195DB679F5B6B53F2C09848EACAC4A0F99293342842318C13B14F144524643BDC4043886206184E8371C7A9C02EBFAFB38D248307F5C1D65638FA576EA5CEA4E3E0DAB3C4EB62F452E5320144ED2B9EA759E7BFC7EBAB76EA53A5CC1E8A9F3884F9941B87A0C6302975362BCCAEA2577B2AC6F0DAFDA6D9C252C4A23138898419AD23DBC98095312B6CC5A49F8AD9EBF5A8CFDDC23FD97BA6DCE9D33AA9D9A1C56345031F4B12344388211BC43515E9268298F8509590679D7E1D09272269755D0D3D34C572E45DD9C991C72DC098C39E67882B104CA2DE02A0FCF93842251363EF9300FFCF157483BCA944809651D9DC8659BC89815941E3696C4D8E9945B355CD81B212DFFC0D2FE6DF48E72B10B927C2E8FF040BA2E8A7C673CB3646951AED61F11ED8DD63508B73A1988043AC65EFCC2EA7F456D7267F319C78DA9CC8EED5FFAEA3FF8F41F661AE413B61B831BCF78D3B12344388211BC43317E5AF56BCDCD5B57568543D3577717D89EED677A21CEBC5163B12B024CFFD4C5944D998921F3A85094C2AA75B8D90AEC642D1DCB5EE3FE5FDF446DDDE18CAA9F4AFB96F53CD7BB11AB7305A7344C251AB341E4F0221912A52126943590F57A49CC6A259BEAC27C3A4F5FDE25607511484D16B9D87F7FE7D10F57F42AB3BFE2F5951D3581487F35A237E438E974E3CAA3B62CFECEC977CFBD6AC1ED0772FE765FEEC3B23B83B5A2774DE58C634E23DF9F28DB45C38A11221CC108DEA1087EE0AB9B4A5EBEE8C6C9E525BF5C97CEB1359761454F275BDB5A38A4EC308EAAABC70AD878CD8D483B82AA9F8CBB6639D28B73F7EF6EC0714A30BC127EF3B7DFB33EDD89A5329C58358BCA865A42111337EF128E46D92A32B84E0FA71D7A1C6E7F81C52B97E3598AEAA0C909F106664E39B32436E3900B2335210C03BC6C0EE566518534B2671BB99E8D8738C14DC72CBCFEB4F7B66E09DF31D73DFEC9F1D77FA9677FA7FFF8C29EE3A6059DC6C81ABA02A4463999ED61926A8408473082FF24082164EB8FFEE78FFD8D4DD18941E372E9852A1D432193511ADE753A8144893EAEA20E6FC34ADC1716A0FA1D5A4A0BF4ACD9CAD48AE359D5BD962D7637AD5D1B39AE7422EF99FA2ECA0EABC7080B700A28535035753667958DA1A27214D9F617E96E7995C3E514A68C99C861C7CCA3F6F83946A036412062611902A7006EDE4128A090A7D0BC9DAD4B1E2CB1AC27CF1D352D716C0B0B576FB9EF926BEACFFDD53FF675EE0B6F78FFFCBE4DAD13DCFEF49DE321A72AEB4AB3140472E8E0F508118E6004EF60D47CF5C769F5EBAB1E5F7FF79397366F69AD9C75ECC95C70D1C524A78D4758BA498C110C139C7E3899A6564CB5112B11E4A4B33E4F6A593B63F38DFCCF99E7F1C2932B3962F45C667DF00CA2A3E3387D69A4297081683446685C395634422EEB303E06F1D2194C9D771263CF994E7C5C09866D228442790A5B2A5CC7467A0AE90608559452DE7B1AAF3EFB12F3CE6FABCAD9D9AA26D9D6F0D46F3EB8AA2A7AF40F677CF08B0BF676DEE3CAF267F7B75B819655E22980C7EFBFB3AC3F954E37D78C93431DFFF623C21F7C178E3D0A8E3FE5604B32829F5E0BF38F8123E61F6C4946B01F680AD64C3F62CECC8A0DADED6ACDDA9542456258C1A0CE2AF660CD4B2F91DADE4BE5B8430926A6131311C69E3886E6C06ACAD3503F672AB367BE8FCA861ACAA75421A58B002C01962570F1C83A190A4E88445D250D132A91B93881C95544EAE3846236966560592652825370C9E75D9CBC4BC155E41C87F89CC984D6FD170B1FFB0515D35AA9AA8FD5E522D479E54C5E75DF75F755555CF8ABF2F9B5C34ABFB9FB4B2F8493953F39D659DD8EED6617A95B0F8FDC7CCBCF0F4D1788CD34652DB079E773DE5E44984DC1B30BE0B69BE1828FC0FF7E0B9225075BAAFF4C781E3CF800FCE97638E574B8E25B101FB917FF8E3095F7787969D9097326545FF8C8AAE55FFDCB6F6EE173DFFD1ED98E6EEEBAEE3BBCBC6431259900F3E79FCF8C0F9F476C428C7889229C988A2A4CA2A2AE8448228AF0BB0C7A0501426028B094C4106006A214BA9BC8F63D4A402D21111B8D55A209D70E5804C3018469228424E05898D90205D3C0300DC8BA648560D63967B37959251BD7DD8197594CA2BE40DAEAAB770AC6E70ADB669FD3B8F085BBEA8F6BBA5A880B765BB37CECFBEF39D92CD887DA96F36C69AEB175E55FA3A149DDB96B3C294AEA82C21DEA9C5D13A1538085CFC0C406A89FB0FB955EBC084AE3D0306D0FB7640F108069805B807BEF86452FC0AF7E070D53F66FDC11EC3D4C012690EA87BBEE80575E825B7F07E3271D6CC9DE5E58B410E2499836730FC7BD00E5E5D030F9AD916B10EA3EFEB94EA0B3E36BE77CB7A32B145CB1E081CF2C9C33DF96CD1B09E70CE6D41ECD034BFEC12377FD90335A5EE7CBDFBF92D2866AA28910FD5D195C297790A0540A25412950FEDF8565A03C83400C62761DF6B4534957CEC00A0A4060052D2C5B538DC2C0B40DC286816DBBD87917CB2E60662539D360C211275233690A9B573F40E38A3F112D69C4B623667FD61D1FCA25BEB4F6B1AA539B172DBEA1EEC8B9BB8C300764EF7B9CED9D01A7E0FEE5D067E98195C6F4B1637F4E4585C1A225F9A1CED9753FC2BF3D041F7C3F9C751A7CF47DF0F413431FD7DD065FBE0C4E3D112E381B163E39BCBB331494075280B0201880E626F8DA97F77DBC11EC073C10069836C4A2B0F235F8DFAF1E6CA1DE7EF8EAD7E0E4E3E1B493E0D187767DDC7F7F1E4E3D1ECE7937FCFDC1B74EBE41A8B8EEC1FE8B3F77CA63EF1A1F2B3C70CB8F69DADCCCD8A9C790290D70F8074E435408B2FD9DC882871002CB34095A02372FE9DCD4B1631C2F5F00CF4329700448CB40C92C842A71C67C92B6ECF17477D8607860480CA348336A4795AF611A04420142B100D1448844C2269EB089951B246B463379CE279938F9DB742C9B84DCDA4134EE12AA191D74CDD89C9E76F7E7EB9F7AE99F9D1B569EBBF31CA743C0EBE83B36DBE3AE9759EF31014A80271A1B7362C9928C006FA8B5D935114623505A06850C2C5A049FF818DCF093371F178A404912A48225CBE0131F1DFAB8E1C0559A0C8BAB15B060C572B8FF9E7D1B6F04FB0EA9C0700109D28064252C7C02FEBE9B87FD3F11B1284462B06E357CEC7CF8D62E5E16A531AD61AF781D3EFE21F8E6E56FA9984504E64C5970D49193CE2C71B76D58BB7119CB57AF66D5EA97393E51CA8F3F7E05EF7DEFC584ABE228FF195481005D2B56B2E5B157D8F4E44AA4E741DE41391217F03070B1508681B2A26C5FD7C1F2BBEEA4F5951791AE8594065216E3133B65AE08B02C8B806D110EDB44A236F19845342908C56C464D389186593F25103E979010C4AA6344C75443345ED2DF67CE6F5ED977DBDA275F7EBA63F5BA738A433EFBFA9D7371838766BAE5A3AFFC6CE596E1AECBAE4D63D3D7850D016604AC3CFCFC475ABDFFC8458326234059FAB888099E84EBAFD3BEBD8F5F3C5C39FCB14C304C7FBD2478069812B634EDDD3823380010ECB0870CFFE594CDC396C6832AD5DB0EB60586845018423570E30D505B0D97FDCF1B8FB302DAD289062118865FDC08E3C7C3C59F7E4BC51593BE90079ED9F88D733FB360E996CB36AC7BE6E8D34F3FAF72F49469861B28A36CF228A26571F2990299EE3EFA9BBAE859D142266F635971D2799350248694A00A1E8440E12194C45190EDE9221EF530E3410A0517C7F1505282DFE87F2818B689610A0C3B801D36B1F21E013B85F23C42D9183D72066D9D16B9252BA99B598769DAF4055264DBFACAB24DA9135A57F5CC7AE6170B5EAACD7536A9E56BE67B7D292BD7D3F9F8055018EEBAEC5A23140E5A8B34F48DB66CB00CF8CDAFDE789C7240B8DA6980D2046A9AF0DB5F436FFF70E5F0C7327D65503B63312560FA63BFDD31A4C6FDD642BEA9A9C6BE433B8100A54D64015826387BB88674D0CD9E0E229C61EFFFFD8754207DFFBB61424D255C7F33B4ECA48C78AE5E4325F53A5695C04FAE839ECEB74ED641187FCDCC05C968F6C20DCB5E3E53A5DB1B2B8E9CCA9453A753DD50866108DC8C4BFBC257914DDB18FBDE7771F8E74E618CB995CC3F1E61DDED7FA47DC94AF27618CF349042618683E4FAFA695FDF4C3C1EA1A42A01411BD755E4B33A422C95442985F42452EABF2BA51042202C0B2B2009665FC0D8781766EFF3D85BEF45E652D8134F27DE309E4C4F0FEDEBB6018278659CF0A82456650922142A71F2F629DB32898FA7326D5344F7564A2A4E7C6FEF2B4D1387BB1EBBD6089589368B84BE7108B003D0D509F7DD05E77E60F0C1FA27D1C75901E8E980C7EE830B3E36FCBB23801D2587628000CDE10F3124163F0F0F3D08E108046CC86460F468B8E8D27D1BAFB5151E7B0056AD84EDED904983946004A03401355530E76838F9448824F753F85D20D30B0F3F04CB5E858E0EE8ED859C03A100C4129088C3A42970CE59306AFCDE8F2FD07302B46F47802BA1BC72E098B5CBE1C9A760E33AE8EE82FE947EE04D1B2221A8AC8489E3E1E43361C2BF2A48E0C1437F85454BA0AB03BADAA1E0806941340665A53076029C762A4C3EF4C05F5E15FD5EFEFE0F04A0A31B9EFC077CF453830E949A04F5C2821D84EE6EF8FEB7E0BA5F1C78B9F60021BE238114B0E4C32BFF7177EFCA23BF92AC3AD91286402A09B92C15874C253179149670E9BDEB37ACF9FEB5044484D071A7D33F7E1E4E6F0A1389EB48CC90A073F9467A376DA56E7412371A245C12C6B60D72FD3984270944831886D08FB910DAFB6208846D2250E41B1F61F373BFA6AA7A34B9BE14A1C06CCC898713C1211088120854B2EDF52DB4AD6CA4E1A439849351940223601172C286D5F19A61F635D2B9B11FDB587961EAF7579FD8F8CB9F5D38F6335F7A6E4FEBB16B229412AD0D1A03371AB4CFB0A36DD081867E48409BC7C50D2125A4FAF6EEEE286FE05A6AD7AAF45EE3D1BFC14FAE8548446BB6F9348C6D808B3E09ECC59707572D83DB7E094B5E85C68D90CE826541005F6E436B239E84F2BFC0E83A98FF6EF8FC17A1A4FCC0CCA5A509AEFF292C5D0C9B36414F8F9E9381D6D8313461E5D3100CC1DD77C0F443E1D397C12173F6E24283D65EA15F887618641E9A36C0CF7E0A8B5E8496AD904E8319005BE8FD02E0B8E0E43521DEF1679876085C7A29CC3EEAC0AC8353809B7E064F2F8075ABA0A34B6BAE014B93A0F2407AFA5E9836DC7D3B4C3D143E7A11BCEB00E6A80AD0CF0060286D18846C686EDEE9C041C657F1794926E1D147E1BA0327CEBE60F2EA67AFB4FB9BD665DABABE152C2FA9072508D80493111C079C97FEC1E21B6FC61C3799490D75781FFA086AFA1464673B7D1D193C69D0BDA1950D4FBD4A75B5A4726C845EBB82687509E1B045B6374FBAAD9D645D197634805060597A3D4CD340589A089DB66ECA8D02DEBAAD24825DD8871C87178A200BBD48D3C40E47286BA8A7F59535AC7F7C09E3DE7518E1448440D0463A61C2B411F7D22C69B229A45BEC23125DE31235CE239D777CE7A2B28F5CF980106297A6CADEE7110A7360B3EF09F26DF291BC8A0A1855AB09439840126A47B15724F883ABE1DEBBA063BB36D92361ED28374CFFA5E113B704B0C0CBC29A55B061233CF2007CEE4B6FF4ADEE0B6EFC31FCFE77D0DDAE4DB2480C6AAA07BD34FC979534C0486833B5B10936AC83A54BE1F4B3E18AABF6F2A23A050203A82C87DFFD0E7EFB2BD8D4A889371C81705C9300CA0FB2A0F788EBCBB4AD19366F80A54BE08C73E0CAEFEDDF3A3CF110DC78930E3C782E84835AFB340CED524182B28162B047404B1B3436C34B2FC289A7C177AFF917E4A8FAEB84D0A43C1C78073F9577C64A0AEAFD9FFA6DF7AA0D2F0A65DE618442B350084F42AAB99B9EB569269C733E55F515E4EB67129E359B6850D19509E2C81CBD2D9DAC7DF825DCBE3C0D678F2596EC41C52B8856C50906F3083BC6B6D56D742E6964D4099309552529381EA6109896BE6776D0C6A89E4AB6AD9EC2DA7F52565E8E27E3D83141BE358B40108C0670A5A07CE6243A5E5D4DCB0B6B1875DC3402C9046E572F51771DDBB774D2B5C563EACC1831CB136ADBA68472DD3FB55DF1C52381E5BB5A837DBB0BE6306DD5A11B3DBCF5701CC01820F1A20933AC73B3F0E9FF07CF3DA3A3DAF1E88016E049DF3F34689E86021C6D2607CAB566D2D60ADFBF0A5E7F0D7EF8B37D9BC3173F0D0FDFA7658FC7B5562124783E01190E48DF856178FE9F3684141086F656F8D36F61DD72F8F51FC10E0DF3C245DFA7D0C4D7B2195C176211FDBF4CFC483F5A36C3FF53BA60589A18ED308442DA14BCFD3658BD0A7EF14B28A9DAFB75B8F17AB8FD57D0D7ADEFA1086A4B44E0AF45F1A55F4C1733F47E8D46B52CD92C3CFC1758FB1A7CEFE73077EEDECB30148A972DF29F31CCBD1F7C7B280B7E1BAC159D7FFDD977F3D1C9BFB5EB662545C0566E3627CC8987103EF9DDB815712CC3201A36701D97FEDE0299E61E526B9B4994279874C2218C3E2C4BB06B3594C689240C6C4C4C4F50336F3C9B3BFB587BEF1246BF6B0A897195B8C2C0747D8BD2B02118A47B5D171555F3C8D74C23188D133081641291C9230B0E76C82258122331712CDDAB9AE859B78D9A79B3317BD6916F7C8DE6C53DCC20CC04C3454463A88881DCDE18CE6F68BAA9F9E493CFAB5BB06048A7ECBE11A11C1CBCD85D20E36D12E458B30E5C078236203519960EC354751CB8F0C3B0F4656D5ED9B6BFE10BE8C09001A5A5505AA94DB25C16B67740BACF2782A026AB6812BC023C743F645270C3AFF74EFE4F7E189E795293099626E0A206681A902881B2329DCA54C8436727F4740DF86C0DA54D78D049F217BC1FEEBA1702C3E99569EA68A7F2F4863583DA0C2E92A0A774F27524AE330AE251703CD8BE1DFAFAB5298DA133002C4B93E9F34FC3C73E0A7FF83394ECA253E650B8EEBBF0FBDFEAB50D86F4B8D2F3B550A1E75F5BAD65F15CE8EDD2BECB82E31F636A4D5E0560DD5AF8CC27E097BF81B9470E5F865D61673E1BAE0E207769AD1D1458A59D9585A6FBA5DBF95A5E4E79FF4A08862235C912379389F66FC9C52C431A39CB22D79F25DBD24E79799CBAF3E7A1820182B624E2BE8ED3A3084682048360291BCFF130138249E7CDA5E9C54636FE7D39E5D3ABA83EB24197FA2985270C022A40D5A4532879F72520F3986E2FCA71B023611D6401424251C8B8044A1218F1203D9BB65131ED10A281CD643BDAA98D87884F0C21020A152B45850388CECD983DEE092219BF5C7DFC842BC5101F70DA0722F44DA5DDFDEF1D781BDCE4B6664D6486A90331453372EAD43D9FFBE98FC38A657E245C00EE80F63373369C732ECC3B4A9BD99108F4F7C2A60DF0EC73F0F083B0710398FE436A5AFAA17D6A015C7D055C79CDF0E4BFE22BF0CF05FA21377C75AB488493A6C05967C1D1C7C1B809104BEA32C59616786531FCF51E58F68AEF27F3B5C550045E7B052EFB7F70DB1DC31060D09A79BEA689D099049E84D163E13DA7C34927C3B8064824209F816D1DF0EA62F8C743F0F222FD9230038009D18496EFD28BE1AE0786B70E7FF88D36C90D74CA8A446BBE6E1E464F80F79D0B471F0B13276872F53CD8DA02AFBFA2731F9F7B0E0A396D1598420752BABBE14B9F85BBEE875175C39363B818AE0E60BE3D34C22222733FB6323AB5FD8F6E67733A58F3DC0F96DC3B2B573ED9ACB36D7B7CA8A6FCE766C09C99E9292032DBA8AF5E4DF4B0D351E16A9C4C2F5E3A433EE5A070B0432518E8A0886119E02A0C274FC9946AA465D0B9B491FE07975271C82812E3AA090081741781434EC5F32442185825B5B8991C32E760DA3601099E7208466D5C4712AE2EA37379231DAB5763F5BF82D50B5563CA70D63A4899C28CC6716D89EC7421EF20BCC257DB297B027853579B7D20C2E283310C0CD74FF2AFC4ADB740530BC4625A6E2935311D73DCEECFBBE1C7F0E20BBC21FF29938348103EF519F8C21177303D0000200049444154D7DE7C4EBC1466CED5BF0B3FAECDE17BEFD1AB2C2C3D8E94FABFCD9907679DF3E63106E3FE7BE19EBB7CB30E4DE6B93C38123EFC71F8C615DA4F3818E1982EE36A980CE77F186EBA0E7EF77BADA59A214DCCA1103CFD345C7F2D7C713889BD4ABB390C03F0F41C1CE0F4D3E0F2ABA066D44E32246142122634C0791F80DFDE0ABFBA09FABB754E2AE8E8FA530BE09A2BE18AAB777FF955CBE0C69FEA0049348A66430F1CA5031F57FF00AA7792C13460EC58FD3BEB5CEDDFFDC975D0B10D4C5F138E04A0B911AEBC7C982F855DA0A81BEC8B01A4DE06CAC220D8F1C90B81853BFDE7CDC066379FBF5A98D65FA2A30CAB6FF9465457276EC141886D98853E329912DCBC4728682102911D3A51910C0DCB2064296A67D412288BB1F96FAFB1E2F6E7A89856C384D36720BA3621AB6AF18C6E4C2F0BD930B99C41B83442201CC0B44D245028484CDB255A5D465F730F4DFF584038B091FA290D382B3AF03AFBB06236521AA87407CA343002366E3E4FAEBBF703EAFCF317887BEE7943BEDBFE33D5CE377FB856F390289A7C0CFA732F8877673CF220FCF90F10F64948BFA3A0B6068E3B61D7E7F577C2FD77696DA3E80FCD385AA3B9E27B4393E0CE8897C00FAE870B3F05F914B8593F0DC8D026F76DB7EC798C5B6ED0DA8FABF479F91414B2F0E9CFC0F77EF066121C0A9FFB9A6E5E118981F2F33D4D0364011EB80FB6B7ED790C0128DF1D204C9D7E74E6E9F0B35BDF4C8243E19397C295DF072BE2A7D700220015E53A2F75ED1E9A8ADC7C036CDEE4BFCC0CADD97B124E3E056EBDFDCD243814CEFB005C7F2B24CBB57BA29827198EC2534FC0C3F7EF798C5DC177D30EDB2F38186F173FFA30D0B1BAFBD1FEAD1D8F667BF21856805C4F81EE0D9DA497FE99DE550BC91BD54492369E13424AC34F9BD4CFAE304C22F130D164183C9740C864F43193085594B3F6AE45BCF8AB3FF3CA2B1BC96720D5D84BE71FFF44DBD59713094238A65F9EA6651008D904831676C0245A9AC08825F0DA3651D660A0D677937DA913E5B88851B578A928AAAB47BB91E33622E961E21E9B3EA9FC4D7EB1DD10E1EEC867F05B6CB866F270E08BA3A4DE20D2CF250C0D33B031188F3E04DFF8BA0E760477E4B7402E039FF814BB9DFAEF6F83E66D3E0916D741C1472E840F7C64EFE4F8D6D530FF14C87BFA2136A47E90376E807BFFB47BF99B36EB87CBB0F539E92CBCEF83F0B56FED9D0CE77F486B877E4015A9B466B5762DDCB50B19062F8F27347109017DBD70C86CF8C92FF74E8633CE868B2FD53997CA2FA51406E47270DFBDBB3E6FD5ABF0E2B3505AE26B4F4A6B821327C2CDB7EE9D0C47CC856F7C5BBB3A9C9CEF37543A9BE0FFFEB277630D05B90F2FEC7F8B62018D9A5935E9B6B5AD5F4875F4371508E0BA1932CB17E2AD5D022D4B88C41DC22531A495C40855E07AE0FAFE59A14020304C9370244079C2C4C441165CC6CC9A40CA7D9125AD4B79F285BFF0F0837F25B3B593B832B0B269C06FF080CE3BB40306814800331404CB251E6BC478E635B20BBB5052625682484C426E6BC1AE3030ED00563D846A058184352ED5999EB7F3DCDE06B6EB2048BF944BA13788E16B20C38DF002647BE1C7D7C057BF027DED3AC5C5B5F4E6EFE986C38F860F5DB4FB3156ACD11A87B0B4AF2997D766DE95DFDDB7797DE56B505DA31FBEA21D55C8C1ABCB767DCEDF1F01A49EBF00FAFB614C3D7CFD8A7D93E1EB57C0A4E97A4CC3D78E5D0796BC34F4F1123FC22EF5BF2874B4B8E0C115DFDC3719BEF015183F4EE718165D14B198D6C876857F3E0B9BB64028E8E733FAC475C925ECD3F63DF73C38FE0448E9070C69E940D7AB8BB4993C82DD62CAA9B336A57BDC2F3994109A381D61E6D8F25A8AFEBE0A304D9C5C0B66B4043BA27D84F94C9E544F864C2A4B3A95C1F5142A5720FDF727697B6229961DA3E19C32461DD3C3A187F4B06AE5135C7BE70FB957E4A8F8DFEF618D193370F162F19A21B06D03A420561BC56973E85BD081E13A18518931EE68DCB444A4B7A2D205AC5A49609644F682552D83A6CC1CB3F3BC0E4012D3014C7CC61F4AF8D140D302243CBB503780F0BC4199FCFEB196A5F3E57A33B07A35BCB208D6AC8580A91FB2E25BBFAB0DAAABE1863D68321D6DD0BC65C024368426A3F9BB31A5F78443E7C08C69F0F4E3BA3AC7507A2EEBD66833D91E229FF1F5D7B406A9A45E0B051C7F32540DC30C1C1226CC9F0FEB560C28F491086C6E8496E6A18305526A33DA145A8E4C1A8E3C1A8EDA8F46AD9FFC247CED6BFA7E829EFBBA75D0D632B489BB61BDEE00AA8A29325257AB9CF381371F3B5C9CFD3EF8E753DA4CB74DC02F1D5CF13AD48DDDF771FF4310B412CF93CF6EB6E2D5E3CA677B34357F8A8E4D26B37AB711E859895B188B11B17D834AD1DF9DC195008A7C4E926BE922B55522A271A69D7614B18A9BA86A6CA7636B88B2609C13A6D652529F80D1B580D6068BD0BE4613C370308447B8A40AAF6C3494AF4294961298340331AE026FE533289947456C02B30C0A6B0CAC0902919410116FEA17780088F00092A0297CD6773501293F3977D18B03818B9D7DCB45BF8C93835446134D243C501628029ADC2ACBE1377FDCB34F6B6B934E9A56860E4EE0E95E8BC7ED21B8B2274C9D062F3EA749CDF209AEB71B3ADBDF2C53AADB8F70FA09C29E07A1281CBA879E777BC29CB9F0C790AEF830D19A554F376CDD3234110EEA9E040A32FD70DCD1FB27C311F3D15A69F105EA271F376D189A08DB3B7470A778DFDD028C1BB77F321C790CD4D443F366FDC2332C2DC3A68DFB37EE7F08EAC391CE965CF8E67CB7FBA3D2E832A6BDFF02D63F6E927FF54EEC700739E3184A7C8DDF91D0DB91C20E0589978531641EB33C4EC9074F21515E8A50EB496FFD1B1509874E23C2E4B13954CA666AC510B9CABA364FC7ED2C816943C812E4CA2AF0C68FC59C34032FE8A152FFC44A3AA85804512AC93EEF615549EC090A250D9465D5EF3CF4C14F6B1F0CCFD01D4F0CCB7722FB0E6D17F07651ECEF15FF61EA4A01CBD45A60B18CA9AF134E38017E79DBF072D6B219C81674FE1FBE53DE0E40E53E24FF0E46759D4E2C76F37ECF45C0D52D8DDE84743FFE01805F3E671ABA246B7F505AA2F3EFBC82EFDC4793626A88E618C592C11DDAB79F405EB29FD518A110C4E2DACF67FB4ECB80097DA9371FEB3890E91B887315D9B0622F720F874279956E33E7797E97257F9FE576DBF878043EC40C51486FDF7E476A79F7A59D1BD74F8CD5FC8099F36651D8B2820D2F94934B3AC8F667F09221DABD24381E75339394D726B12CDFC2426FC3ECF6DF218C0E946733AABAC09AAD6112E592DEB6AE1D39F96FB836BE86A8B4A2A42C13236CE36EDE4EAEA515F3C40876591CA3BA0CE5A5F1BAF3D8D332D8A33DA42B5039F0FAE9DA794E6F2F22340755310CFEEA9EE5E7F1EDD2B1EC478505BE0965B2A3AFA1E7E9460BC34DDC352DAD25E8AF53F3C60A92FD8030068AEEA5CF424A3264D71A4FF9FE52C3FFBBD453DC5FBFBA3BA80204B1E7F10627FB7ACAAF3BDF5F21947E5989E2FDF2D7400EA101D8C61BCB39055A93DD53079CE140FAFFD8D16147F9952923180EA25555AD1BFE70D9E5566CDE9F8D4C53309C7D995C479EBED41C324E966CE35A362DDB888C5530FF0BFF45457DD98EFA6294422A81D7BF08E13E45201241C87E52FD829C67A0C8926D4F92EFF1080FD20C85FF8C0B61F8C1179D241F950646A11FF1EE3198332A71966FC3B4BA30EB12D8351EE1231D642E8828B8B89B4CAC52A37DE7F9BCBD82259E028A8D17FCA8B161809BF3730077F5F3F3F33C9FF894CB8EDCB76429BCF402BCEF54D8DEBA67199209ED3B330C745585D25AD3FAFD349BE420C2337D4D4878600DF5F059BEE938B8AE5B1D809C3303843BD01CC32CAA5A43B510F3DD1242FAC4ED47D0DDFD7C2148CF27E4C18EDE5DC1D4E92EAE2F83B2B4BC6D5BF74F06D7D1E94046719DFD661523D82B6CB9F0E647CC9917FF99D86C9C0DCD48AF9CC8842328993D0D71F83C72C1723AB66CA2BF6B3BD233F05C0FE94994D04A8DECBF0B69E4300D07236012B060DA943E62D453537F025DCDDBDF744D55F4A608E51B0A2652DA14C6C7704A7298D92D448E37885F12237478007BBC818A2630CA0380C4AC30310262D3CEE3EEA60D9740B7E28201078DDF9A6BE7D384F4D33218D84F42683FDBDE4019EC783BA374AA8954BA63C949270DE47E819F7EA174B04458D0B95D3BBB97AF80544A0B6398BE3C162C5F0E9FF800DCF718047653673B61822ED3DABE0D023ED1F6F6C0D34FC2FB2FD8BBF90C8637E8E157FE5C15DA1DB0338CE27ACB014D49A9039373A67CD5D244570A9A03A6CA1B2084BE9F9EE19BB0833EA3B05FF0E750CC0CF0871E98F34E1855AD35C0623DB125604323F4B641B27ADF445052CFCB93BA418594BBBEFE8182B2FCF4257F0F98FB9A81FDF6C18942E43A9AFBAECD1442EF91C6A4519D9BABC955DB58857E446F9A233EF1419AD6FC96D79FBE959A190DD44EACC5CD67B1C261447E3DCA598A082B5CAF8024CC98B169B674994C987911A56366D2DDDC41DDACDA2193D59512B89E229F52844B1C2A8E74899FE8113CAC02551E853E07776B16B33E8A0817209FC6A852A8BCE9B97DE137A54AEC7A570BA54B98A4D4150902F493A1D0BE2B1F1E7A63153FF6B323ED6E1F6E72B1044E3190348B01C71DA3937287839666B8E13A9D4C9DF37451BB21740065CD3AF8EA7FC3F5BB4966B62330BA1E96BC0201A1C9D4367599D8F2A570C8617B3F2F60AF37BDE7AF8329FC846A38208129E10729947F7F77F4C9DB0576BCD8D064B1BFA6B162EF2A8E0E3954FB688B25754600B6B5C02DBF86CBF7318D0757136A714F1BFE0B789F3058BBDD0D84EB07E0FC32C9A2D5F316E3D6C32FB18F7F7FE6502B6857AA9055AA14B5425951C32C28C3C92BE5B9A6A354CE71D5363CD56626AB5ACAE6BF7773CDAC53D3438D57519758B3F985977ED19BA8F95E879D66F48C1A6A279511A9AC2118CD115FB28CC77EF9188B1F9FC7C9D597E9FA801C987DCFA0CCAD482F88674688D919E87749F79F4DC30917D0B9AD9954670E375FC00A065042ED68EAEA153C5CD7C32908646F96CA595BA9982D6054035E1AD4F676BCE56164C1C50A75802350A10A548F81CA059BC2B5652FEF3C8F5D13A131B86D7E71A3C881377911C2372BA4F22DAC415ADBDEDE67A3789E9FAE61F8E6F1501ACBAE30AA0E7E783D1C7E247CFB5B5028681FA14097C7FDFD6178CFC370C659BB1EE3DDA7C182C7202FC156BAD1405B0B5CFD4DB8FBE1BD9C940F35E01FD933DC011F1AF89AA0D87FD358B9FA576C52E099BB30CD7786F0EFAD5FD5B15F32F8E30D17A79E09337F05AF2F85D28A019FDEFFDD05471F05C7BF7BEF65301848E82EA657EDEBD28AC16FFFDD1DE7DFFF1DBEC8B79604577EF6A4B181DAF85156A4FB2461DB2719963B164BDA5AB77111868B105994E362B90A5B8127CCAC97EE5CD7F7E45DAFADFEC5254F79F1E8C21917FE6CFDCE63C7EA2A1E2BC8D2AF4E9C184E8E9F370AE1CF3597FA19E1D02B8C3BAC94E5CFDD4679ED58669F7C32A602995A8F2325B9828D69A7309C6E36AE994072EAE73163824C5F867CDAC2C94AACA0D45FCE930A37EF50C8EB4F00E45202A3A7856059137859DCF6ED0827836C29C1DDAEB0A7498411001945F476213B2D94692F14C75DD7B2F31C76FD6A2E1474F2ACB2D04F81EF4F128237F2A73760B89B3E79EDAB09E74906BA54FBF95DA09B8CEE2DCEFF085CF96D3D66C1D19AAD125ABBBBE5C6DD9F7BC63930FDB081CE298609E130BCF01C7CE43C70327B2F4F2888766E0CE3892BB6D38241D50A07F2E1F11FFC6233853D6A6862E0DAFB4BC64269DFE870114BC219E7EACA1CCF3FCF103A95E78ACB75D5C9DE2214D51A6131B95CE29BAAFB80E16AB80A7DBD22091AF82FC77F2D21AEBA647EEDC6EF9EF5D9F884E4EDD172FB2F9112E39258A998184D6247A38A584C108D794442794261875044B7778C040561E184ED4CC74C7A9A2F545D1DBF552D5BFFB0F2E7E77D61DDDD9FA81C7C8DF2C086556555F2EE8A86E88EB528F4FD9D4D6BFF4C3E53605C439248AC9FD7EE7F98A625AFE2A4D3E43D8B54DAA2B72F03E92CDB1B2D3ABBCE22397E0ADD1D9DF4F7BBC4AC16AC20E4F382423A8B9B2FE0381E9EA7705D8F4C8F83D9BB06B1A50B6F6500B72541BE7536B2B31C6B0288DA5A64700604042A5DC0EB8B223B43F70DB54EBBBE838EAB73B68A018962A547F16D5A84EB0DF8EBF6FBA6FAC427C5808FAA18F4D8177CE063F0818FEADAD81D4D43056C58012FBFB8FB732FFFBA36C9BC823F6F5BB7BBFAE70278EF7B60E13FF74E9660403BE7D530B55B55EC2DE8AFBB284692F703C507CF18F4537B08C2483FA1DBF4FDB543F934F75A0EF66EAB7CEE8B70F431D0D93D50A26808686B83CB2E86DFFF62D7E95543C2D62E90E23E43EEFB2767A41F981BD67168D3D8642022FF2F744D6EFCCEC91F8935446F8F94856F8A56254F8856250997C70895C408C6E3D8B118763C4A201EC28A04B14261ECA08D1D0A6005C014796C99C6CC746074B66176B41F2DB7775F9F59BEF177CB7E78ECE9C5EB889A53D3F9F6E6DFE7BB3A7A7269800EB21D3791EF6D44151244E2BDD44D28A7BA660EDB5F5ECFB6E79FC04943F3369B6D4D90ED08D3B2712C91F11F261584CECD29787601F1576F26DDF132CA14E4B201B27D050AD902854281BE8E1CB9E63E129115842A5A70BAA2143696905F1785480FD6E42484C78269A1FABBF13AC2A84CB8DDEBB3766E2801ECCE343EFC48A8AFD7ADE1ED187AB3F81ACD60ADA6A41C420928F8A926FBEB0056BE67D4F31DD8D2D8FBA0CB607CFA73BA557F7FB76E462AD11D50163E0D47ECA66DFC6173E14BFF03DFBF5A9B3F06FAE14B94C1AAB570D147E0883970E451505B0F71BFA3C98E870B06BE0D6CC2538F6B527D43DBA5DD686345AD49FA637A0658C36DA6BA0B78805B24E2416E885DBD0F0DC39FB76F8E4A35F075C37D853287FF32188C9FFF04CE3B0F3A3B74BEA844BF5C5269ED02B9E38F70C22930710A9444D9518E07835C3502927158B95A27D907FDEDEFBBEDF609E198BE3F7B42658DAE92D182F87FA87F49B07AC3E5C7D6DB89D8FF98A1C0678225612B982CC10C2511A600C34198FA236946218D7232BE8FDF0423087463881C781E9E4A231C1795C923F31E9EDFD65186CD3365401EF3CA97E7FE64F6E7A33F11E39FC9ADFDFAC98B26FDF0D59B32C1DC37CDFC1344422BA9AB2A23DD1B441A9D24CA6DEAE79F82D7DA43FB8B7723B7ACA23F6ED0158DD0B34520364E666C52D2F5BB87883DFB1455AFDE47AE3E4FEB3F7F4EC53169C25527E33A499C2C64FA7BE9DF2609AA1ECACB97638DCBA144046BC3668C6C132268223D13E16D86FE6DA88C05D2C2888A07231FBAB38B21C20DBB26C251A3E08CF7C2AF7F39100D2E467377D6D0A64F82C5CF0EE4C9ED2F84D8D12846FFFB7E8C35A65E37DEFCC7DFB4BFCFF0F3E7D6ACD9F3B99FFA9CFE20D18FAED544178C68B96251ED3A78E979FD33827EE3537790B653DCEC0001300A035D57F6E827F423E69E038120E4957EE86B4AF7751534AACB201A801CBEF2AD064CB69D610CFA8B347CADD480EAFD94A1B602CA4BB57617DC0B421C7F08FCFE76FD9D99AE7688C6B55615B4B5EB625323ACBF45CB18B40745A5856FC1F86E1DE1976D9A6250F680E9078EF60147CDD3DDCBA391DD1F37FF38DDE1A66EF4C0F56481BDFA5CC430D0FAD3F3661010B70893E302D13076228A08461166046159207320F318220FE1022A510EA12A4C3386302DA4CC8397C2CAF563B66DC3EACB627677C1D626F22D1E4E3A80D16BE108AFD40B19DF5B748D3B7DC335737FD070C5E2E57D66C3CF33BDEB66E4F22F9E9B288F610A9B50288707C493A3281F5F4AA1B60EA36F365E4B27C97C3BA1CD295A1B2DAA4369ACBF5E49A4B589787623D9D9B3C89FF6493A5EBF8BDCA62FD170C4C99855C763974EC1CC49E25680786205E1C066542088599D002B8FEA3710E515DA7D55E800D346D871645EE2F5A93BD885A6B6FB5C88AF7C151EBC0F5A9B7597651C76441C07E37FBE014F3C0EDBB6E93C3C29863E6E4F10F89A5071530E8EB0ED07A64ED5C10F1C5D646F38BA8C6E38F8D2FF4255155CFB7D5D12972CD77E1ECBD6E4E4FA9174899F065FD4E48C4153F07CA77A714D06B1FC90691BC297D3FFEE865B80C30E83B9FB59E63761B26E28FBF0FD9088B1A3DDFF505AA9E3F91680A549A3BB4397E89DB29F1F3E8A24E1F433E1473F8671E341657DD21D0629CE3C0AEEFF9BEE2CBD6C85CEF70C5A3AF1DA14685229D667CB81177651A397FE7E32A47FAC7F3F76DC827D78E37EE6B3F0B74761DD326D1D15F7FECE09E21FBD507F6FA671B3AEF011835F9407069DB75C3A5D19B93F9A4139DB8A041176086107105608E137D010B640448318D16A54A80E642DD2A8062B81F26CA454A86C0A2390C1F6B661B8ADD8B29D90B9944074137DADED643B0A387D01727D0AD2F2C378DE8CAD57CFBB347164E2A5950F1FF9B3EAD11CEF1662E50659C251875C2A484DED1CC2C952A249456C8643CE4CB3FDB90CD1075B9930AB9CD8FBF2E45ADA31E3FDF4840FC7BCE8A7C42BA7907B7A14D975F7B0F51FCF62D84FE2C522384625C84ACA47ADC31CDB868C4C4239F55065615418E07441B60F946E3D27DB52A874F4A958B0EC2521866693DD2BE676086EF8059455E81E6EC51DB3F3C79B92E570F36FA1A2CACFE1F3CDA8BD8D302A05580351E262A4727F73BCC2A18104E9A273DCC9EFE9AC017CE49370FF23F0EEF740BA477781C6D5E6BB15D0D528B6A1E5B66CED5BB4FDB41BD31C54213198FC0C4D44BB9A9A81BE462A0363C6C0B787D9D17A4FB8E6473075BA6EA755CC08F0861042A19BB8E2EA174049397CF32A88EF67791BC015DF82779DA85FB045ED79B82DACEAC7C3FD8FC297BFA2CBF55229ED7F3385DF28C37745D8B6EE5A54FC99F6A07BE2972D169F8962B6C2BEB052A4046EB90DEAEAA1BB139D28AFDEBC674349B8FDCF306A8CFEDCA75774251D1826ECB8F183A3B03377585131DB8A87314321442084B04C0C2442F56196E6304755A32233C9E7E693EF3F1EC79D89678E072B0E868B4A6F80DE6578BD6BF1322DC84237262182720E09E653113D86D2EA1A02E5793C9523D521E86E55B35AB7F09BCC559F1A1D98BD6873A1BB339F4F4982813CA699463A414AC6BC8BB001F6DA1BE87AFA27F46C68C6AA3B95F4711FA3B764348557DB08A4C2F467CB897CF0BBD41C3E9D9A528769E7CCA7E193D79038EF56D4A15F24EDCC27B32E46D27989C8F845501E434567A288220A19907D205388B0855992C3E86F42F6880E6146FE575C70CF2E6B28F7ECA1987B14FCF54178FFFBF4C6530CED589E33171E7C04DEF75F6005873BFA1B514C3895C593FD20CD7E973E1553577C87BA72D9EB2FEC4D980CBFF9B37E082FBE14C68CD3A5629EFF4173E93712F0A40E20EDB20AC6374795A31FE021A766FABE4103CE3E0FEE7F0CC637ECEBE4DF886409DCF7307CE8E3DA57E7EC82895D57CB90F760EE3CF8C35D07EE339866041E7A183E7399CE0BCC1778436EEA9E6087B4A6FEE433FAAB7CD3676AF784574C85F17F9E1CF8EDEE7E48DFE5B3AFA6C7E429F0E4F370F1653A3BA0E07F3D6F67344C81A79FD5FB2792D00696B7FF44A8AEBACA504175AB1190B3CDB085B0C328CB42581642D9185606B32E808AD6936B9C48766D03B22B80293760D94BB1320FA3567E0FE7C5AF6076DC895DB61977CB1D88E6DBB09CBFD2D77A1FA9BEA77169C4742324324753A38EA22C1E4284FBE9EC72E9D8A666ACDFDEFCD3E4AB677F42C964ACB3394B47AB472E2B29B86328380699177FC0BABFDC40BF712CB1137F40F587BE46ED8FAE2273F6D7695A5747F7DF36103CE312AA8E3D02CB7509476C12252655E34BA83B661E632FB894DAD3BE4DE5E4D3A89E66608C1A8517998E52064264C04E23822D582579CC90C46BEC25BD2C42A12DFACDC8058F2DDADD1A0EAF4CA0BE017EF40B78FE9FF0FFDB3BF330B9AA3AFD7FCEDD6AEDEA3DBD674F6727090909FB92B0088ACCB0A9A3A28EA2A8A3328EE338A222EEEB30CC383AA2328A800AC8C04804C3162004C8BEEFE94E7ADFAABBF6BAFBF9FD713B904012020930F94D7D9EA79E274FD55DCE3DA97AFBDC7BCEF77D6FFB51B0C0FA70348E831FFF476071F4B37F1B7DF8FA3A504450909F48040603DEA89942F4359EBFBC16BA0665E5C1C8CCD0831F7FA2EC8D1D6BF6A9C10BE0A947836C921DDB825193102FCFF61EED472524182624AA475D720EC3987AF8E24DF05757BDB1761E8D48197CF75638677190F7ECD8AFDEA66042552D5C7EF931DAF9BF5E0CF8C60F83B882AF7E158AAF63847E80EA7AF8E82783D7964D4138D68A27616870D4C2ED7520254463AFBF0D078896C12DDF85EB3E025FF84260B071382271F8E677E1237F0B3FFC2E6CDFFEC6CF394AB279FBC7158D77A101077282D560B4A9C4409497E364A763773521A446685C1625B41D8636E3B527D16AAB0969200A7B30FB8A841B5AD14306497B0A7D9D799AAD4DB86595B8D110C5FE5DF86619D1E2549ADD0BD0231BD9E57630945408C5F2D7443B639795CD3542854C9ECE3D21E2757199D01A84D9F97B7AD73F8932FEA34CBCF25394D557609BE07B36E1AB1633B07F17216F0189775E85CCE651CA622F8521EA1A20259A2E8896ABE8653D20D278FA7808EB083A108411E6087EFF30850E95FC2E93628F8F12A95C99DF5C71CF6BF5A190F2784B054A9428F15622C4CBB395A93BFE66A283FB82A252AB18065A34821A4A209410C248A3C675ECC1F9D87D93319A8BE8B5DB91852DE82DAD3859056FCB13D8F1167614DF41436437B1DD0F527EEA423451607DD762766ECB3359594E6B5D0F56D1A0735B1F512D833D68A08D4C26E13733A8B6B3D9DA869009A62EAEA2E9721B3BDF4BDBD6284665585658633AD41D832D7674A1D2FCB7DFA2A62570512A9A0E99753B08D55420BB76121A3F1E2F3A86704598625F179AD78BD6702A524480228E17A2F8F47AEC87FF899A4BB6A29F360EE9D6E0650AC86208CDF148ADECA1E3A93496A35335739217AD2FBFB0E59FFFB8FCB5FAB454695EA2C4494CD1F7BF2491B5811141A08F524A849A45F1B3987B5B71FA26121A3F8056F52CCECE87B076AEC71A4AE1DA0E11C523999A84A9D6B0AB773A89D60BD8322278B00DA2235B583CBF0FDB6D269FF3C9B83689DAD9ACC9BE9F3E4725A5AFA55FDB4122DFCC043185916286BEDE62F0A44153285A024D8645441FB83BB761F03DE5D32FECD175893F3AF632C23A221422BD622D229321B727891E0E91EB1E60F84FFF4EFECF37515CF6AFE49E7D12CD30F07A47D873D76FC9E477624C9C07CE2CD4421C7F471223E560754BF6AD36D9D7538D9CB498C8F433FFA5F94BF71FD382DFFF5D365C254A943826A444F4FEF2AAB3A56B7F1011D4D34B69E8A60BFF0000200049444154235D108687903E56C74CDC4C2346EB1A146D13BAE5639C3217867BC9EF5C85317E3AD9A6C918036398E7FF856234C45E51C5E3563F65751ABD7BB7F28E2D2368F910775669EC4E17F8A0B069340AF47A9388A87986F57DF4176CC63B93182B2D060A0314ED10BAEA3392534854B988B8CC2D5AD67E7FE7172AAEB553C3D714A3610C5D014DA37AEE64068B26A987FF8833B88EC89CB9E4DAFA084F5D42A4EE3CF24B1F20DAD08FAA2E6668EB46863AFFC4CC4F54236AEA114503737F3FC94D45B25A259D835574F64FA2FED40954CFA95B5D336FC6BF09712CA55C25212C51E2E4E4BE6B9462217F83E6114655114220541DA90AF0F3B80353719313D05B5E44582FA0386152E1D96CD9D18C2C56B268B6CBCEE2306BED4A50DB989FD9C42CD3E4AEEE10FD2D313E32610237EDDC8E92B2A9312C64D358CE0EABDCB9A19D8F9B6DD47B9508358E2A4D06431DF45A0AE3BD4908C761283BCCD86A9D48C4C3F46D0A3E110091197ACC1D895E6AC5CAE294C7197E713B1533C65173F629A4BBB691FBF56DA4365D417A4781C88CA9449AA7502CDBC1FE95EB99799189D3B3917193BA502367D1B3BE9274B29ADCF064524419492548E524953354C6CD0D176AC6EB5F8E2E5A74CC7E6D25212C51E22464C7D681166168578044096BA8AE82EA07C5025E3A81D7D18C56B91335B611376913A92F67D7DE4A56ACAB27112EA3AA62880DB13EC6560FE15444B82D29F9B4EAA0563BAC5A9F24B96398E2408E4263828EDE1CE181225332F0939C4F57A1404FD465637988D39331848CD1A10D1256BA99A85463DB268511156FC4252724836650C3E9AD5973BF778676A3149119D235289F3A8EFCF6FD647BB3C4A74EA3626E18DFBE9B910DA790EAEE23DBD683D995C6ED799EB6EF5C4FC1F1894CFD18FB954B5163E390F108A1F161A2598FF4F64ECAD511264E54A969E28B55975CF6E4EBE9CF92109678EB1818807D5B822539AE17AC3B9D3D87635A4C5DE225A444ECF8BA7231A613938A0043E0DB200D0725ACE20D3423ED0164620DA27222E1AA30E94D2B18D999613C439C3B6B15F128FC72284D556E84CBF6C12F723EBFB15DDE6DBB0C8DA966DBD61E3E32AB8E91A44B21EFA36DEF655B46B0440127A1B0A746A3C5F25927741611272F6D7A946E7CBD9C4643C5C16360589010FE4B2233EE7BDF1BD975D71DEB8CEA8A19EEFE6EA86E2136B585F4D67D74ADDEC2987035D5535762D76E63F38A32522FB6D3D86C533E771E76E5426AE79F41F9A4C928D128D277B14C877CC125934DA2DB459AC66954D569B7D54D9BF0CB63BD253E4049084BBCF9DCF98BC02566CFEE2021D01CCD4CA9AE09BC1F5B27C355EF8585C75939F37F0421905B6F7216E3070E71BEABE02B2A020F69D542B11A51B112273F88D55649A82A8E5656CBAC5352647C052DD74ED93E9B7822CC2D6D264EEF20D78DAFC7A8AFC5D891E3B367CF63B07A1A76771B6487A9088710C2A02CAC93184861192A0D05C9B61E1F2B5F445AFD84C2905404F9B4C504A951117191AE8FAF0BF4D8CBC5D8A1BA962E39B4C351BB97EBFE94BF21D9EF119FDC826AE8A8BBB6839E23719664B2B59EE16C05DAA24F5377C1E524EAAAD1639120F1C27129E66560C765D958C3796A2A556AEBB5A5B533C5B7C49429AF7B2D5649084BBC796C580DDFFD7A904238341C0CFCC64F84A6966081D89EBDB06D3BAC78021E7F14AEBBFE4D5AB3F8FF171BBFB07082E3788B142991211DE90BF02CA41F827413BE57C015ED687E94B8BB8FB05DC7C6B249FCD91D245B9E27128D70E95096EB1495D894166448638A19226A55926E4AD0BDFC798CFA5A62E56162E1310C6D6BC7D01D644E92F605EE2054A72C6686148C90CF0B63342A844FA369E0673DEC9C46D80861E64C2A1585F2B29001372B708B9FE91B5E5F357E5266645F7FB54615B17163C8750C208B3E72B88AF84E9D50EB2442EE3422CABBA93FE32C12B5E1975CD22412CFF1B04D17D382CC5001A5582051A56EAF9D18FB6AD9D4D386DE489F9696CF94787378F649F8D88760E50A88C6E147B7C1AE5ED8B01B963D0F8FAF867DFDF0D05238752E24FBE167B7C11FEF7EBB5BFEBF9EA22BCE764CB745BA12DFF6F05D17DFF7F0B31A7E4AC597DB90E608C9542DCB365CC2C6CDA7F2545B3F1B86DB7947A58B5E2EF882A1F3F4E621DEF9621B73A209B4711370CD24E3E64DA169C92CC6B444F10A16C9C12CFD69181A91A44C9FB0004353F12C4165C62711D6B085477AD023E54DC3D2C7E37A0E261E024961402537A4947DE6D2553AC0F6C1EE3F59C34EBF37660EBB97AD667857274ABC92889967E723CFD0F3502743CFEC251FB984D8F4D35085851CCDC991487CD7C7713D3CD7A79077C80DE409690EE188FC7EF99C051BDE689F9684B0C48967A41FBEFDF5203661C629F0E4F3F089CF06D532877CE574B8F032F8CB6A58FC8EC0C3FDD61FBC4D8D3E79700BEE34C794AA5394B80507B768212D1B99D3F08B0E9EBF0F698718EAD5E8EA8EE38C64099979CC219FA635BD5CB5B18DF9C316CD35510C5F92DEDB4FE3F46A1ACF1C8F994C61F6DA243BB3F84A0C74855858902B08D239E84E39A46D17A128F842259FF36948FB540213DC6E7C3BC5BE6EC9605245F134D4A20F05B7FC9C5306C200D77EFEF3457BCDB30FD3D565C7AAABF177AF62C72D5F26F9ECD324D2C3387B6DD29D066E68024258F8BE8F3CA4C456E27912DB95B8964B58D844C33CD5DCA23F26C41BB74F2F09618913CF1D3F0FDCBC5B9AE0CEDF1F3EB8FD957CE7C730A6097A7AE03F6F7BF3DB7812639A4C726C896BF9B88E8F679B48DB4171E278DE081879F47835B1A84D8DBB8E6AFB4916E4F693B3427CA4C3E5D1B579AEDC93A5B62F8B3EA986BA332633B8652BC9E7DBC8766C279B3319C90AD2D90CC2F688C5CA30A444146C042E4AD480888EEB7AB805496D5EE0783EF71969F6FA2922F930E3430A15511F2F0F4A5A466B475EF61BF3FEF8D0F785AE6F8A4E6C45E9EF63CAA436ACBD7F24914D11E901A590406B1883A608344347D59551773B1144790A8132EAB1110A090C557646E655BEA15BE2039484B0C489A5732FDC774F604FF6956F07C1F6C742FD58B8F40A987F1A4C7E85C1C4334FC2DC56F8C98FC131E11F3F092DE530BB196E3D8C2BCFE38FC0F5EF874963A0310E739A03EBAEE58F1FF9FC9FFF245C7521DCF1D3236FF3ADAFC0BBCE851FDF72E8FB5B36C18219F0B757819986913EF8FB4FC0B8CAA09D979C09BFFBCDB1F5C331207DA6F98EC4F724FEA84B1BAE40F895B8CE20854291BCA353462FE3C37BE8C944281B51B9C677C827748AD3CB884B893D64D338D6C0B78B746DE826931AA473F730667F276535215AC68E41F75554CDA6E98C899CF377E772CD172FE0CA8FCFE6AA0F4EE38A6BC772C9791166B4AA345686114292B5545E5CA9F2BB7B1CF48C476B93245A292A8A0D2F1B14CCDCB66DD8AFAADCA0450CB7389223D15CC5844515E81189CCBBA84A1DA1F208465841D3B52003E5A54AE0C0884541A20B892A3C14E185D936601C4F9F96264B4A9C58366E864D3BA1753C9C7BD6EBDBF7ABDF3AFCFB833DB071376C5907EFFD2BD8BC0E264C807416B66D3B74DB4F7F18EEF94D60683B7E224462904DC30377C343F7C3476F806FFEF0D5E7D8B60576ED8453161CB97DED7B60CD3A183BF1D0F7470660EDF6C0F4F6EE3BE1F6DBA17D174C9F06B6059B37C2DFFD2DDC7F27FCF189D7D52587C3F1441504D61E9A03BA1028E860EB08CD243DECE274A489275C7656ABAC8AE864E3E5CC557DBED5952594F1C8A82A4D33CAD8F65C376ADE235AA1D3B5AFC0E405633110884425035B773066FE24AA9A13446C1BAFB397FCEE24997C8EFC888D210595BE454D5CD25251452252CDEEB63C1DFD16E54997F1758111B221947873857B885025C6D687AC709948091BBFE0E28523D891C030D7A8AE416A1AAAD4822972244208A494485F8EFA364B147C5415A42FC3994EAB248425FE17B16D131481B3CE87F23127E8A002A2C0B32BC0B5E01FBE02175F04DD7D50759063F6E7AE875FFD06C6D6C11557067935D575D0D501F7DD0D0FFD117EFA6F8155D64DAF105D3528F94239CA9A46450BAC505EB98D0A4400DB87EF7C3B581FF9F5EFC2459742360577FD0A1E78009E78123EF731B8ED97C7D51BBEF4FB6D5F69517D89A7802D5C7C2F8E74541C59405515144CFA06057F4E9451572159ECE759EE872947A1B6C722314EA1B24AA5AB07ACBCC4B07CEA2BA3B82993C18E14915A93C9E74F470E0FD2F3E06A36EDCEB336E9D16D7A0CDA50F424E5AAA03562303302D3E27D9C372641715C88B56D39266A925848E0A15048AB35B9BC72888594A2A891484D9962450DBC5C016118E8511D3C17511D074541A0A02A02455190A331BF075CEC40225405A16A2029CF67327160F88DF66949084B9C58DADA82072E1326BEE6A6C78E08863FC9147CEAEF8289178009D35FDE64F54AF8DD6F2111824FDF089FFBD2CB9F4D9804E75C1058B1FDF45FE09EDFC235EF81D6D9879C22F0483D9A1072F8874907A22C868702C7EF1FDF06675FF0F2E7A79E01F14AF8C9ADB0F4BFE1431F8253CF797D5D7010214D6D2B16E502CB9708D747B812DB805858C7B75D5C476573F15C06FA609CB59E36CD67DC082CF1F3F83949C650285705CF3C99410A0DC7F7694AE8442A2BD8BFA18FA669515AA68618786615C96415AB3BC7F09F1B37B2C7B508EB3A61454111604B7821E7D0100A737E5EE72A33C39C4484FE8441F770D1D692F8A13AA91B618F42F250075AB3588CEBAE2FBCB8203564A20D990814B4908248C49128A8AA40A8A322C8A899C468D898F4831806A12A484D49D8BE761C1E6A25212C71A2298E469DC6E347DFEEEEDF402E13387C1F280250467D1CA331B8F6BA97B715A3F9DA990CBCEF03873FDE5F96C28805972E3954040FE6EBDF86650FC1C6BDF0F85F5E2D8438A3AF23E0792F273A1E8C348261CAF000FCE34D878AE001BEF14378EC5158B705D6AF3B2E2104A543FA1E455B22108410B88E8F2F3C9CBCA47F58634FA689A89162DE709A762FCEAF1A625C96739899374115140A06A9AC8BE998CC9C14410A58FB741FD3674749A8361B1FDC819C7629D3FFE9461A0633447E7D270F6D7E91ADED7B2948175DD1082902477AA49C226B6D95F2BCC1F9AA4B2BB05151EF54F1572B397F3142B9E7DABB5FDC7CF015B8AE230CDFC56F9EC5C8F66D448C2CA6EB53A980B01574558CA619487C3F88F995AE8FE778F89E44225E4AC8102865AE712403C863A32484254E3072D497F628F3701D9D410C67E61556E71A419448635D90651C1F35CF952ED8C0E4B1D0D0F0EAE3F90EAC591DFCFBC28B8F7C5E3D0C4B2E838DFF0E5BB6BCA2D92A88D1CC932372C05AFF95DBF8A306DB4A30E17324965C086BB6C0C64D4739C73120FC5D8EE7FBD24771A4A4684B62A683E338D8391D832C4DFA727658CD0851C9954E962BD33E665E90752475E53A7B878A14D33E2D637506B20E1D9D1EB3C72B54864CD6AE1CA13D3285BFBEE23A42B11055E366F0E105DFE39ABD3D3CF4EF3FE3B6C7EEA73D9DA22C121DCD7493C4A44FDED3D953F428373C2695693D9F7A6AE3EDC0ED87BB040FDDF1CD3C358BFF9ABC5E4661C56D84E33E5A5AE2697A902873207CF04018A1001F193C2B3CF0120A52D374C5881E97969584B0C489A5AE26181D0DF41E799B867AB8F1EF21930A9EB9C9C0468AFDFB61F306A8A90B263B0E2044100F51D700C661BEB2850224FB827F37B71CBD7D93A707C388D47020A0CAE8AA0E391A12268F629DAFCA83D21C0F42BA41FB1A5BA0BAFAC8FB378E0DCE9D7CC38FB200D014FF59DFA7C7F664B300541BF25997AAA8852B4364854E8D3A48AB9AA3AB2ECC838D6584A5CABC7D4534E9E3017145614891F4E7A06879D4C625632B6CBAF779FCA55BA5A26A98E2D03E9C9A38BE5B89D9D781511EE66F7EF04DA6AFBC907FF8F297D8B87737B1680C4F4058401C41CA17C4758348385477B46B703D5CDFF3D1FC02A185A7D3B7BF8D98789AA1EC6E1A5111CAA8B7A22F91A3FDEDCB600DA1EB485CDFC7F524D207A12ABE0C1D5FB05149084B9C585A67073FF6D5AB830800FD309379BA0EB71C66E6F6C17B02EB7A21382418E7C0ADB1ED1C3E605ECA404C25873FDFC1BC24A42F3D751F3D8724085E3A4AACA72F46A34D5FD186D120438C28478DE70CA9878646BD41CE0FB1F7771E5B3D5F341747C55BC5C789E7916E9CACA5D1A4099C5886DFD609EA0C9DD3733636021B8133EC0431E5AAA037E5A1000BEA209796245382787515EEC830C9ADEB6818DF005E1DB96DCB21D2843E25C6BCF3CFE3E61BBFC835D75F475640241C4193923215A414B84223A4E947BD484F6A8E2785F411428D441873F655F43EE81231DA71549D97FE0C2A04DF075F223D89EF07C6AE9E2F5E5A68ED4A39ECB8327B3C7D5A5A4758E2C432A3151A62B0EE8563CB8E3E9878D968BCA6379A3F3C8A3B1A7275A46FAB2A003598E7C8E68E7E8E5C6EF438CAA1F322422510C7A3E50CFB1C36B94C3DD03087A38650E58BC1218E271B05E0F6B5AEF4E50B8E04CB05DB5329489F8C9521EA541171055D45C170720CAD7B3532ED453677FBE42D897DA0B98AC09512CB87B115A07892CE214175A4C047DF398785736610DFFB20EAF00EBA563CC59E471EA4500C437E84E2D0088DB50D5C71D6623EFB99CFF2FE2BAFA659F5A8543D745507114253C3474FA5D25553AAAA8F22C073898E4D105BB484918633C9852318C20304128110129F4000A5FFF26DB12765B08448D307D5B87E5CC3EC92109638B19C79212CBE08D205F8CDCF5EDFBE52042333E172C8A8E9C0B7F448F13AD172983527D865FBC6A39F63ED0BC17653A673C8E8CD77191D761E79DF6C265842E3BF624245080801BB764357DB91F75FF7C2A8F1C4F125120A908AC2C3C2C7742514A520EB4A86CD248AE7119651F63B8235C556EA7A6B691D2CD2814A7AB4231DA9E009288ECE76C7946049269A42D3B40875A19D5C70669489179E496A5F1FAB7FFD4B8CC9A75277FAE9C49B1BD0E251EA4F99C6D7BEF17D6EB9E96BFCE0E6AFB278E6643437475D4598AAEA0AAA9B9A3347BB86784DA5190A87A4A6A9289A8A902EF1FA4ACCC4426C3D81227C14653494D01FFDAFF747678C3D9008A4E7A3AA1E91A8583BE59C73068FA74F4B4258E2C4F3E1EBA17E0CFCF60EF8D1D78E7DBF552F806982ED8DE6FE8E722C4F7FE6CC0ABECDCB1E85FDBB0EBFCD8635F0EC722853A0B5F5D0CF343DF048DCBEF9B0BBD2B11706FA4753075FB1C446197D7618D3E1FEDF1D7EFF5DDB60F972A832E0CC338EE1828ECEFB1E59BF26A489FB05E0FA02DB531876F2985A864AD142AD9A668CB68D7E2D4B5D36C4F9458B58149C9082379A216D4A194472A3907104694FC1D7A2A47B7A486532B0E8F3F46FDE8C61765036730191440845D5B04D93B2EA0A2A2736B07DCD16CCD408757185EAAA10359561129565B2BC7ECC11FE1302CAE2B18CA16BBEA68860ADA050504382EA892D44A371402294E059A1102208F71D7D46E8491FC79512C727A292ACA952FEE778FBB32484254E3C175E069FFC6C307AFAFEF7E18B9F86BD47FA5D38B0790D7CEC03418D7221038DCD103E78FDAD783908FE7061F40057BE17A64C842DDBE19BDF80A157949E76EE85AFFD130C0EC0E967C255D71CFAF9A973837BC67D1D416CEDC16447E08B9F83B6BD108EF0AA677CFEE8ABB216EEBC2358BC7D301DED70E30D3098820BDF05175C7A84BE787DC40CFE35A291F37D89E30A52B6CB9018A25AABA18228ADDA10B3B5147B0D8DFF49E8ACD75572125C099A1038121C29B1A4C451A02F05795365281D65D903BBE87FFA619C8A18B55312C8E1767CD3C6356DD4D1085ADF2C1236F38CECDA883BDC46554305462884A2A95DA1B8F21A4E30B228141148F281C5D28A8A1A0EA31BA19797548D46E3FAAE87E77A788E94AE273CA7E8F8C2B351C3E2AEF2B9A71D35B3F858284D96947873F8C24DC177F8B777C0CF7F0A77DD09175C08A7CC0BCC58A5079D1DF0E78760D3C640481A6BE1A2ABE19F6F7AC5C10E4C6C78C1E8EB70D435C237BE077FFF71B8EB6ED8BC1EAE7D5FB0DCA6BD0D7E7F4F5061D2D000FF780B845F916BFDBE8FC2437F82AE2EF8F035F0FE0FC3FC85B06317FCE4FB70D679D03A1D3A3A5E3DD721FDA0FDF104E821B8FE03B0FC8960E4971C094AFEB66F83E63AF8DC8DC7DFB7A3FCF5D2756BFF70E9FC1F3B52DE6C5A3EA62DE916038CD1C6504F2BABD942089B4A15E2231AA9A247BB0B2A02DB97449460223C6D49A42539AD05EA237956EE4893AC9A416FBF4359D8436F2E27964F911BE847D10591EA5AA404D7F5D1ED0C76FB6ACA9BEBF0E22D649369345DFEF7ECCFDCB2E6A88D9732E74BDFC30B6E753DCFC7717D5C4545682ABEE3233505DF0BFECAB8BE8FEB4ADFF6A4EB584ED12F58E5862ABBE255E13B4F445F9684B0C49BC73FDC048B2F863B7F052F3C0B7F7C10EE79F0D06DA2C0F429307F015CF24EB8F2FDAF3E4E361BCC51747583739459DDBFBE2678C678EBF760DD7AF8C2575FFEAC46853317C157BE03679CFFEA7D5B6704E27DEBB761FB6EF8E60F5E9E17B96811DCFD10BCEF7278EC7998D3FF8A9DD5608EA42C1E54B52C7F1C7EFE5FF0D3FF0A3E8E004BCE869B7F000B8EFFB6F860AE5D18FFD6EFD7E4174BC139A60543A6C59E5007D3C52C3AE420EDF4107727535508E3B19FB2904F5E57B12D1F15415842C694C411787997B6DE1A526A9899736732F1FCC58CFCE14F8C9F3D86CEF636B2EB9FA56AD20CE20DCDF812E2B535849529A4F62D479B389B9CD6843AFC7C67D810BF78AD760B6174799E74242EBE2B716C1FBB68073904BA12184A283E7852BAAEF45DD7731C0FC775A469E61D4FF15D231295BFAA9D3E7DDD89E8C752C07B89B786BDDBE1C517831155361BDCFAC41230AE1966CD8753E61E79DFCE76B8EF3E686E826B0F2394AF249D84C71F862DBB036B96B23298D61ADCB247CB8EBEEFCECDF0C432E8E80AD6324E9E01D78D56B93CF318ECDC013367C19907558FAC7812CE5B02F366C08B1B40D5E137BF803DBB8251F1CC3970E555707CC50F2F7170C03BC053EF3973D640CE7D2455709BF3A68BA278CC0BCFA0CEA9E305F11C1B643D45BB9E5A7717FBE3059221853A0BD482474C42B922A810924AC321593795B33EF03918DC497C7823E5B995746FB7B11AA7612FB89289ADAD4C5A181853B84513251CC6CF0ED2B1F45E8637AEB10DD5FFF49CEFDCF99AC5D4435BBB971411BF77156A7CC7C5CA5964BB3258FD591ACF9E48654BA56FA8F842288E657B8EE37AA663E31473AE594866CB2314B7D737163F523E65C1DE13D1A7A5116189B78649D383D71BA165027CFE8BC7BE7D79355CF521B8EA0D9C6BEAECE07538CEBD28781D0E41301AEDEB81A671F0A1EBDFC0C9DF1817FC61E596A5579FFD4989FC0F4D3236657AAC7776B150C498E72DC45656D3A174626B3184A3E0FB92822E680C2BD89644012C29282A1A66FF4E6A2B54AA679CCFFAAFFD8A4CBEC8967D16BD5D694E09EDA06EE144CC748E54DB0EEA67CF460A5012B5E8635A33F6E0C33F3DED8E478FC95122B4E7FBA759F5D7463D63129EAD61A78BD8432E56D2F57D6978BEEBB98E2B6D2985E9B8D2763C5CC7722D336FFAC2B5B2E19073EF891241284D96942871FC1C5850ED7B20DE9E9FD43BEF5FF17065C4B8A1BC4C6BAF8E86711C87E7DCF5A4DC3CF38AB3194B9C322DC37835CA74D9C0643B04610525AA10D1C0913062AA2C8AB8D84FDC41644C33B3FFFE3BD45EFB0FD45F7E0D593B42F7C3F733DC95430EEE64E0E19F90DCBE05E983D5D141594C7BE1AC3B1EFDF2B1B475E4773F1B6F8EF47CCCD8FF8B68A4F7BF51FA37E37575FA5E6FA71375369B8692CA15FDF28CE545338ED472AE5473AE5432054764ED02D250E5F3632BEDFB4F64FF954684254A1C2F079C6B14C07BFB9E345D72FF738F3C71DD391F3634E72B86A15D34601658233630DD9FC40C7B1CAADA459BE25386434C531976147C07DAA5C4172E86235835A070DAAEBDB424BBA9396D3135A72D660A30F682652CFBD1AFD9F4C86A165FD14855BC97FD7FFE2D8A1326ACB928AADCCF114A66764F2654F39D1F4C575B16C4BC58C53CE989AB9DFECA897EC7FDF8FB7FE9EB4A851B1E8ABA32695A635A735645AECF4EABD7D8B6D6687BC46C89B4ACA26BE5FB3252337B9C70A47B9998F99EBE13D97725212C51E2442009EAA58FE667F816B0E4CE679F19FEDE35D7ACDD30707DCCD23F306816E7EC76F752574C506725904E81416D808C22514C1DCB3348E3E0089D09BA4277D1450EFA14FFE3479CF7B97FC6C7C04E0F3377C9C5544D984ACF934B59BFF47912668170F95E9EFBC3ED4C3CEF0A5AAA638715C18E5FDD79B65615FD986CAE5FE895D726A4166E12E11846FD74F2D1497672C583B6185E65BBFDDB2DAB3F639B0DD36CA773851DD9F5B465EBD31DA9B5D89613B6AD81BCA58E0CCB48A8CFB064EF51CA77DE1825212C51E278D13488C72056C14BB9936F23555FBA2F0DFC68D5A72F79C418D2FE6AC40E9D9132F20BF2A65D57668689BA31928E8B2E7DFAA54342B808A59C822F89855C8672059E5BF618ADEFBA8A2DEBB7D2B37D2B9FBDFD178C9D388EC6711FF7FFF2AD5B58FA87DD4AC325B3F1C70E526D0D31A576FE212539524AA567E9939FF22CF78B4A4B738BD2548FD0357CA1229196F05D479F3CCFD60A63CC91358B1CDF6AB7A393748BB9539C8CE8B49DCE074DC35EE7B8CE3376BE2B6F5B03455B0F69423696F716F4F2CE13DD67A559E312254E325E396BFC5A8CDCFCA18AA737EF5B903633A7FB9EBF20E68526861CB5D672FC72132352908119435AB1D0541B454853168A03A7BEFB6A6B77675FB2B7677FE6CB77DE7B7128518EA20ABF73E78E75979C7AFABA8605933FFE89B31B98119B427228BE79DCD6873F3861D9FA8D00DDBF5BFA69A52CF113A5A91E6362B3AFEA9A87EFB9AEEB7BAEE3DB4EDE34F3BD19BB30605ABA1171120DE576D9B84A4B183856CAB50B7D9DB6D3BBC72A76EDB69DA1B4ED5BB62364C8A0BC62F5FC2FDCF0EFC7935877D83E2D096189122717AF57080F66F7FB1726B6E6BC7142BA35214B4B542AD5D5B8A1B1A66D6A4EC84C267567D8739C74653E3B145E78F1AC59679DB575DFFA65FBEADF79C3D2B2FA86D946C840B1DC67C2139BDFF1A9D3E6DC799AED5FED0987786319B2ACE989F7FDE1C10BA594D307EF7F748DD234366A4C6A460A89E74ADC5C11CF722D3B6D779BA9BC2D104EB4B9D2AE9A5465EBF1A8ED3AAEED161C5B2A9AED09DDB6F3D87E2A6F0B055B5185594816F4E270B13D51A5FEA6696153F244F669E9D6B84489FF434CB97B5506384241F5A1F4BCF7334335D39774D55EFDBEDCB686455F12D3CCCB15CF6DF572856780E27B73DEFDDB8DC8D5FB5C93FA9A718C6D59B0E4270BBABEB7FDBBB7CBE645F3754F5746FC64BD81ED0000065949444154B6CE2DCED08866BB32E69A62BD95CD75AA65E1D9D1586C6CD92913CC48539505D86EC1B291D246C196B665E317ED902A6C59236C45556D3D16369588A3C874B75EDC3952099C50212C8D084B9438C9389E11E1EBE1A9F3CE0B5FF0F4D3162FCF062B7B7EFCE3A6C1175E18CAA6BACBF243B9CB4D2332984AD4DC3AE2D74E3C73A1C1C486347B560C3F5F3BF7633F98BC78D650FAAE07BA9DFE61D58E5546FC15CFEF0F7DFF0B571AB1D0B5E186DAB8515B5570C0F675C3D642BA8DA65AC2711C21842D84307D896D599EAD80878FCCEFEC36ACDDED6DB1E1C1FBEAFFF1BAFC89BCD6921096287192F15609E1D178F6922517167279FD92E75E7864F53FDF7AD6D6B5CFDE6A15B69FB6F8BD73FCAACA506ED5ED0F7CFDD2A7B3B71EBC4F61E3BA1BDC82FCACD3399812E3270C49214DADB2CCF62CD316F5F5B6CCE76CBDB2CC564361C7776DE90E177C7B38E7BBD982E9657259B7B36FD0DED5FEE2D41F7DA6FD445F4F49084B9438C978BB8570EB79E7C5073DFBF282ED2DBD6CD5AA0CC05D579FBFA47FF7D04FABE2EAB80B3E784AAEB2026FEBD2CDFF7AE66F377C8FD111E5F0BDF7BE47A63317AA358D4D3E8627CB133991378BA2BECEF6720557448C8236B65171FB93AE6FBB196F28DD6F0FA63B29E67AEC642A5DD13698AAB9E39F8ECB89FA489484B04489938CB75908C553A7CF5D522C4AE5B28D1B971D78F39EF3E64F53D0E626FB93B36255D1EB17BF777A262232F696875FFCD9057F19FE09C0BDA0CE99DF5A5975E357A72B85DC3C118B4FF61D1769242CB7B33F1D9A3A2964DB5EBBBDB77F77588BF458F9DC48F32D3FCB0AD61E255AF0045D5449084B9438B9783B8570F3BB172E48A7DDB3937DF95F5DB1736716E0F9D34F8FA422F282B0EF753886DDDED66DDF144EF0CE19174EC817F4B3CC1DCFF9BFBE61D9D70EB1CB4ADEFC9984525B574959A8BCD8366CBB492FA3B63496996BB6F54DBCEFF68C38DE6097D74949084B9438C978BB84F0C5F3669FAE4494535C9BA5673CB9B1FBC0FB4F2D9A33DE55E4B90339F9A7F76FDE3CF2E7850B135DC59E1B92D1732F9970F1BBF29395E58591A71EBFF7A267DA1E783BDA7D2C9484B04489938CE315C2DCB717D7C5CE2957C4B9FF7D94CCD5801716CDAACB796AA30DAD9198226258CB173EBDED903ADFD54BE69C6F5A327CCE8A4D8F1E78EFA9F36AE3AB86CEBBAEBC3279EE25EF5373515B31F7FCB9E37FCE7A6CC7B2579FE5EDA72484254A9C641CAF100EDE70F66715293F25E2A15DC99E7C47478FA31B8AACF07CFA2B62FE8099F7F64B8B9CAA49C7B285366CC9C15F6CDCBA7E3E33DC5BD8F652299DFCE129B1DDAB42539CA25B5DEC559E5FB0766DE1E0F3FC69FEFC684F61F0CAE671950BCE78EFA4823598B3BA96EF7DECB4A57B571E4FFBDF0C4A4258A2C449C6F10AE1AE33667F63C457BEAA45544CE1EFED2D886E2965A78E78B132E6EF0C7976BB9B175634ECB9F98C519C342E515639277C4178A4B8B13D992F0CF72997D886A857852C4454D6D5A8CAD38D0F1F2A8207B8B7B939928E262EAE1D179E79C695E38AF6FE416BFF935B9E3B7B55EA35E206DF5A4A4258A2C449C6F10AE1BA1933DE9D9362AAEB6B2BD572D9D3E3A856B258B4EC5CAED0DCD5655FFB8AF0E6C125735A7BC3DAFDC3292FAF08B9CDF249F99EB232A629ABCBA24E72CE639B8EBAB8F9DF264F0EA98A71765D933171CE854DC548AEC1F4360DAF1BB7F481A3649FBEB59484B04489938CE315C2DD93278700A6ECD9631DCBF63BA64E2DEB0A87BFD32FE4FE84EDDE2B5435DBBDD9C87DE2752C6BF939F3F5E294BE5317369EDB30F3C31F35FDBE76D35EF9E2F6BA3FFDF29501306F0B25212C51E224E3ED98357EA87A6AD9BAB8E9DCB27FBFF9468F71336897CCFAD0E4C6E9732B6BFF6A816D6D7DC6DAFDF87F752C5AB5E7A861F06F0525212C51E224E3EDAE2C391E24372BCF4EEBADAB993C265E797A9B6DF6ECB60ACBF3C333B76DB35F7BEF378F92109628719271228570C58A87CA0CA56561D3B479BB9AAAC409373C3D1C12C40FA64E8D8FA90FAB175ED16A353F7F9F2DEEE32839AD6F3E25212C51E224E3440AE186DD83F33AD6DDF107DFC93726AAA6FD674DF359DF3EE594712327EAF8AF81E02DA82091528AD732722DF9119628F17F9858450D66BA434DEE7F3C668F5B72A312ADEE9752FEAB10E24DAFEFE5048AE08A952BBF21A47B8EEFBB5F39E79CC5CF1D787FD9B265B1E79E5BF1F3679F5DEE6B9AFCC619675CB0E770FBFF3FD70AFB36A0EC602E0000000049454E44AE426082, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Company_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Company_NoSeries] ON 

INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (2, 2, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (3, 3, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (4, 4, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (5, 5, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (6, 6, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (7, 7, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (8, 8, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (9, 9, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (10, 10, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (11, 11, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (12, 12, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (13, 13, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (14, 14, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (15, 15, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (16, 16, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (17, 17, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (18, 18, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (19, 19, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (20, 20, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (21, 21, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (22, 22, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (23, 23, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (24, 24, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (25, 25, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (26, 26, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (27, 27, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (28, 28, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (29, 29, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (30, 30, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (31, 31, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (32, 32, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (33, 33, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (34, 34, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (35, 35, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (36, 36, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (37, 37, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (38, 38, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (39, 39, N'', N'')
INSERT [dbo].[tbl_Company_NoSeries] ([id], [CompanyNo], [Extra1], [Extra2]) VALUES (40, 40, N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Company_NoSeries] OFF
SET IDENTITY_INSERT [dbo].[tbl_Customer_Contact_Master] ON 

INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 2, N'', N'', N'', N'', N'', 0, 0, N'1', CAST(N'2020-10-05T18:05:46.387' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 2, N'Mks', N'mks@aykka.com', N'', N'9898674819', N'', 1, 1, N'1', CAST(N'2020-10-05T18:07:08.403' AS DateTime), N'01/01/1982', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, 7, N'Vikram Sir', N'vikram@peompt.com', N'123', N'1234567890', N'', 3, 3, N'1', CAST(N'2020-10-10T17:31:01.083' AS DateTime), N'30/09/2020', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, 10, N'Manoj', N'manoj@gmail.com', N'', N'9991212121', N'', 1, 1, N'1', CAST(N'2020-10-16T07:02:06.953' AS DateTime), N'13/02/2020', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, 12, N'Mikir Parekh', N'mikir@uniqtechsolutions.com', N'8320604985', N'8320604985', N'', 3, 3, N'1', CAST(N'2020-11-06T11:03:21.970' AS DateTime), N'06/11/2020', N'06/11/2020', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, 20, N'Mr. Montu Desai', N'montu@intas.com', N'', N'981211211', N'', 4, 1, N'1', CAST(N'2021-02-13T08:55:50.413' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, 29, N'AShwin', N'Asg@gmail.com', N'8764345676', N'8764345676', N'', 4, 1, N'1', CAST(N'2020-11-19T15:03:03.753' AS DateTime), N'30/06/1994', N'31/12/2020', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, 31, N'Hitesh ZShah', N'abc@gamd.com', N'', N'', N'', 1, 1, N'1', CAST(N'2020-11-25T19:44:52.450' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, 32, N'xyz', N'xyz@gmail.com', N'6541239870', N'', N'', 1, 1, N'1', CAST(N'2020-11-25T20:10:40.807' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, 33, N'Datta', N'datta@gmail.com', N'8569545298', N'8922349128', N'', 1, 4, N'1', CAST(N'2021-01-20T20:00:09.610' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (11, 34, N'ABC', N'ABC@gmail.com', N'8594623654', N'', N'', 3, 3, N'1', CAST(N'2020-11-25T20:18:40.280' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (12, 31, N'XYZ', N'xyz@xyz.com', N'', N'', N'', 4, 1, N'1', CAST(N'2020-11-29T15:06:13.403' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (13, 32, N'Vinod', N'vinod@xyz.com', N'', N'', N'', 1, 1, N'1', CAST(N'2020-11-29T15:15:39.480' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (14, 36, N'TYPn Ivij', N'jvfij@khd.com', N'', N'', N'', 6, 4, N'1', CAST(N'2020-11-30T11:28:30.600' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (15, 12, N'Mikir2', N'info@uniqtechsolutions.com', N'', N'8320604985', N'', 3, 4, N'1', CAST(N'2020-12-29T11:48:47.710' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (16, 40, N'Divyansu', N'divyansu@advance.com', N'', N'9812121121', N'', 1, 1, N'1', CAST(N'2020-12-30T22:12:30.340' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (17, 34, N'Ramesh', N'ramesh@gmail.com', N'', N'9898121211', N'', 1, 3, N'1', CAST(N'2021-01-02T13:29:43.373' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (20, 42, N'Neil ray', N'neil@gmail.com', N'9898052344', N'2467862564', N'4564568787', 3, 1, N'1', CAST(N'2021-01-08T15:24:56.110' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (21, 49, N'Developer', N'abv@abc.com', N'5345345300', N'0001112345', N'0001112345', 1, 1, N'1', CAST(N'2021-01-02T18:28:10.880' AS DateTime), N'19/01/2021', N'05/01/2021', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (22, 33, N'Rashmikant', N'Rashmi@gmail.com', N'', N'8723119234', N'', 12, 12, N'1', CAST(N'2021-01-20T19:59:22.267' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (23, 52, N'Ayub', N'Ayub@upl.com', N'', N'', N'', 4, 1, N'1', CAST(N'2021-01-20T20:00:44.533' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Contact_Master] ([Id], [Custno], [ContactName], [ContactEmail], [ContactPhone], [ContactMobileno1], [ContactMobileno2], [Dept], [Design], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (24, 55, N'Venkat kala', N'venkat@upl.com', N'', N'8121210121', N'', 12, 12, N'1', CAST(N'2021-01-20T20:28:47.437' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Customer_Contact_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Customer_Master] ON 

INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (1, 2, 0, N'Brand Point', N'', N'Vadodara', N'2', N'1', N'Vadodara', N'2', N'390017', N'', N'xyz@xyz.com', 10, 24, N'', N'Active', N'24eddpps366q', N'hdfc', N'1812234', N'1324', N'1', CAST(N'2020-10-05T18:08:55.627' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (2, 7, 0, N'Prompt  Solution', N'', N'Sayajigunj', N'1', N'1', N'Vadodara', N'1', N'390019', N'123', N'propt@prompt.com', 16, 24, N'test', N'Active', N'GST', N'Name', N'123', N'Code', N'1', CAST(N'2020-10-10T17:31:05.500' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (3, 10, 0, N'Intas Pharma', N'', N'Sanand', N'1', N'1', N'Vadodara', N'1', N'39111', N'', N'2@gmail.com', 2, 22, N'', N'Active', N'dsf', N'jdfd', N'fff', N'ff', N'1', CAST(N'2020-10-16T07:02:29.470' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (4, 11, 0, N'Cisco Systems', N'', N'HInjewadi', N'6', N'0', N'Pune', N'1', N'463015', N'', N'cisco@cisco.co.in', 17, 25, N'', N'Active', N'', N'hdfc', N'121212', N'isdf', N'1', CAST(N'2020-11-02T22:51:38.060' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (5, 12, 0, N'Uniqtech Solutions', N'', N'address line 1', N'1', N'1', N'Vadodara', N'1', N'390023', N'8320604985', N'mikir@uniqtechsolutions.com', 17, 25, N'www.uniqtechsolutions.com', N'Inactive', N'', N'', N'', N'', N'1', CAST(N'2020-11-06T11:03:42.533' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (6, 20, 0, N'Intas Pharmacutical', N'', N'Matoda', N'5', N'1', N'Ahmeadabad', N'1', N'390019', N'912121121', N'kazim@gmail.com', 24, 29, N'', N'Active', N'1', N'1', N'1', N'1', N'1', CAST(N'2020-11-12T07:07:32.143' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (7, 29, 0, N'Urvish Industries', N'', N'FF1 amardeep cmplex', N'6', N'2', N'Vad', N'1', N'98764', N'9876543210', N'uio@e.com', 18, 28, N'DFGH/.vc', N'Inactive', N'', N'', N'', N'', N'1', CAST(N'2020-11-19T15:03:13.457' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (8, 31, 0, N'Zydus Cadila', N'', N'Matoda', N'5', N'1', N'Ahmedabad', N'1', N'390019', N'000012121', N'kaa@gamila.com', 24, 29, N'', N'Active', N'', N'', N'', N'', N'1', CAST(N'2020-11-25T19:45:03.527' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (9, 32, 0, N'Soletium Pharma', N'', N'Vadodara', N'1', N'1', N'Vadodara', N'1', N'390009', N'+91 856424343', N'axd@gmail.com', 24, 29, N'', N'Active', N'', N'', N'', N'', N'1', CAST(N'2020-11-25T20:10:52.697' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (10, 33, 0, N'Voltas', N'', N'Vadodara', N'1', N'1', N'Vadodara', N'1', N'390002', N'658558962', N'voltas@gmail.com', 18, 34, N'', N'Active', N'', N'', N'', N'', N'1', CAST(N'2020-11-25T20:15:24.317' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (11, 34, 0, N'Bansal Mall', N'', N'Vadodara', N'1', N'1', N'Vadodara', N'1', N'390002', N'9756232165', N'ABC@gmail.com', 19, 30, N'', N'Active', N'', N'', N'', N'', N'1', CAST(N'2020-11-25T20:18:49.467' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (12, 36, 0, N'Devashish', N'', N'Padra', N'7', N'5', N'YUI', N'4', N'779906', N'9898979920', N'dhb@hyffv.com', 18, 25, N'', N'Active', N'', N'', N'', N'', N'1', CAST(N'2020-11-30T11:28:37.180' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (13, 40, 0, N'Advance Medtech', N'', N'Savli Manjusar GIDC', N'1', N'1', N'Vadodara', N'1', N'390012', N'1212121211', N'advance@gmail.com', 21, 32, N'', N'Active', N'', N'', N'', N'', N'1', CAST(N'2020-12-30T22:12:35.353' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (15, 42, 0, N'Developer Testing', N'', N'Uniqtech solutiohns', N'2', N'1', N'Valsad', N'1', N'321567', N'543532786', N'neil@gmail.xcom', 20, 27, N'avb.vom', N'Inactive', N'', N'BoB', N'426576', N'127867864', N'1', CAST(N'2021-01-02T15:58:30.577' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (16, 49, 0, N'Developer', N'', N'asdfadsfsa', N'6', N'2', N'Mumbai', N'1', N'123456', N'1234567890', N'abc@xyz.com', 21, 25, N'www.gb.com', N'Active', N'43234134', N'BOB', N'1414122', N'155654', N'1', CAST(N'2021-01-02T18:28:18.027' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Customer_Master] ([Id], [No], [GroupNo], [Name], [Area], [Address], [City], [State], [District], [Country], [Pincode], [PhoneNo], [Email], [BussinessType], [Industrygroup], [URL], [Status], [GSTno], [Bankname], [Accountno], [IFSCcode], [Createby], [Createdatetime], [Extra1], [Extar2], [Extra3], [Extar4], [Extra5]) VALUES (17, 55, 0, N'UPL Industry', N'', N'Ankleshwar', N'8', N'1', N'Bharuch', N'1', N'391012', N'891212131', N'upl@upl.com', 24, 29, N'', N'Active', N'', N'', N'', N'', N'1', CAST(N'2021-01-20T20:28:55.500' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Customer_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Customer_Noseries] ON 

INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (2, 2, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (3, 3, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (4, 4, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (5, 5, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (6, 6, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (7, 7, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (8, 8, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (9, 9, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (10, 10, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (11, 11, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (12, 12, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (13, 13, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (14, 14, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (15, 15, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (16, 16, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (17, 17, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (18, 18, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (19, 19, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (20, 20, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (21, 21, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (22, 22, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (23, 23, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (24, 24, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (25, 25, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (26, 26, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (27, 27, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (28, 28, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (29, 29, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (30, 30, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (31, 31, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (32, 32, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (33, 33, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (34, 34, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (35, 35, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (36, 36, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (37, 37, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (38, 38, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (39, 39, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (40, 40, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (41, 41, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (42, 42, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (43, 43, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (44, 44, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (45, 45, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (46, 46, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (47, 47, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (48, 48, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (49, 49, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (50, 50, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (51, 51, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (52, 52, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (53, 53, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (54, 54, N'', N'')
INSERT [dbo].[tbl_Customer_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (55, 55, N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Customer_Noseries] OFF
SET IDENTITY_INSERT [dbo].[tbl_Employee_master] ON 

INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, N'Super Admin', N'Super Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'admin@admin.com', N'admin@123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 67, N'Jeet', N'v', N'Pandya', N'Male', N'Subhanpura', N'Subhanpura', N'1', N'1', N'', N'1', N'390023', N'09712197956', N'', N'', N'', N'4', N'', N'', N'03/03/2021', N'', 1, 3, N'jeet@gmail.com', N'12345', N'', N'', N'', N'Active', N'', N'', N'', N'1', CAST(N'2021-03-03T11:55:36.673' AS DateTime), N'', N'', N'Employee', N'', N'')
INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, 68, N'Urvish', N'Urvish', N'Urvish', N'Male', N'Subhanpura', N'Subhanpura', N'1', N'1', N'', N'1', N'390023', N'09712197956', N'', N'', N'', N'4', N'', N'', N'04/03/2021', N'', 1, 14, N'urvish@gmail.com', N'12345', N'', N'', N'', N'Active', N'', N'', N'', N'1', CAST(N'2021-03-03T12:16:36.543' AS DateTime), N'', N'', N'Employee', N'', N'')
INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, 69, N'Emp1', N'Emp1', N'Emp1', N'Male', N'Subhanpura', N'Subhanpura', N'1', N'1', N'', N'1', N'390023', N'09712197956', N'', N'', N'', N'3', N'', N'', N'17/03/2021', N'', 1, 3, N'Emp1@gmail.com', N'12345', N'', N'', N'', N'Active', N'', N'', N'', N'1', CAST(N'2021-03-03T12:17:20.620' AS DateTime), N'', N'', N'Employee', N'', N'')
INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, 70, N'Emp2', N'Emp2', N'Emp2', N'Male', N'Subhanpura', N'Subhanpura', N'1', N'1', N'', N'1', N'390023', N'09712197956', N'', N'', N'', N'2', N'', N'', N'03/03/2021', N'', 3, 13, N'Emp2@gmail.com', N'12345', N'', N'', N'', N'Active', N'', N'', N'', N'1', CAST(N'2021-03-03T12:18:12.610' AS DateTime), N'', N'', N'Consultant', N'', N'')
INSERT [dbo].[tbl_Employee_master] ([Id], [no], [Ename], [Efname], [Esurname], [Egender], [Epaddress], [Eperaddress], [ECity], [EState], [EDistrict], [ECountry], [EPincode], [EPhoneNo], [Emobilenop], [Emobileoffice], [Emobilewhatsup], [Erole], [Epfno], [Edoa], [Edoj], [Edol], [Edept], [Edesign], [Eemailid], [Epwd], [Eurgentcontactname], [Eurgentcontactno], [Eurgentcontactrelation], [Estatus], [Ebankname], [Eaccno], [Eifsccode], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (6, 71, N'Emp4', N'Emp2', N'Emp2', N'Male', N'Subhanpura', N'Subhanpura', N'1', N'1', N'', N'1', N'390023', N'09712197956', N'', N'', N'', N'1', N'', N'', N'11/03/2021', N'', 1, 14, N'Emp2@gmail.com', N'12345', N'', N'', N'', N'Active', N'', N'', N'', N'1', CAST(N'2021-03-03T12:19:21.000' AS DateTime), N'', N'', N'Consultant', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Employee_master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Employee_NoSeries] ON 

INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (2, 2, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (3, 3, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (4, 4, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (5, 5, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (6, 6, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (7, 7, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (8, 8, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (9, 9, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (10, 10, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (11, 11, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (12, 12, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (13, 13, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (14, 14, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (15, 15, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (16, 16, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (17, 17, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (18, 18, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (19, 19, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (20, 20, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (21, 21, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (22, 22, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (23, 23, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (24, 24, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (25, 25, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (26, 26, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (27, 27, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (28, 28, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (29, 29, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (30, 30, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (31, 31, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (32, 32, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (33, 33, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (34, 34, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (35, 35, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (36, 36, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (37, 37, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (38, 38, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (39, 39, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (40, 40, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (41, 41, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (42, 42, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (43, 43, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (44, 44, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (45, 45, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (46, 46, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (47, 47, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (48, 48, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (49, 49, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (50, 50, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (51, 51, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (52, 52, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (53, 53, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (54, 54, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (55, 55, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (56, 56, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (57, 57, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (58, 58, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (59, 59, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (60, 60, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (61, 61, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (62, 62, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (63, 63, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (64, 64, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (65, 65, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (66, 66, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (67, 67, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (68, 68, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (69, 69, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (70, 70, N'', N'')
INSERT [dbo].[tbl_Employee_NoSeries] ([Id], [No], [Extra1], [Extra2]) VALUES (71, 71, N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Employee_NoSeries] OFF
SET IDENTITY_INSERT [dbo].[tbl_Inqiury_Followup] ON 

INSERT [dbo].[tbl_Inqiury_Followup] ([Id], [Noseries], [NextFolldate], [Follotype], [Assignto], [FolloStatus], [Remarks], [Comdate], [Comremarks], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 6, N'13/02/2021', 2, 0, 7, N'Refer', N'', N'', N'1', N'Feb 13 2021  9:00AM', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Inqiury_Followup] ([Id], [Noseries], [NextFolldate], [Follotype], [Assignto], [FolloStatus], [Remarks], [Comdate], [Comremarks], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, 1, N'02/03/2021', 4, 0, 18, N'dsdsd', N'', N'', N'1', N'Feb 27 2021 10:44AM', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Inqiury_Followup] OFF
SET IDENTITY_INSERT [dbo].[tbl_Item_NoSeries] ON 

INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (1, 1, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (2, 2, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (3, 3, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (4, 4, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (5, 5, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (6, 6, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (7, 7, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (8, 8, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (9, 9, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (10, 10, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (11, 11, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (12, 12, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (13, 13, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (14, 14, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (15, 15, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (16, 16, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (17, 17, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (18, 18, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (19, 19, N'', N'')
INSERT [dbo].[tbl_Item_NoSeries] ([id], [No], [Extra1], [Extra2]) VALUES (1018, 20, N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Item_NoSeries] OFF
SET IDENTITY_INSERT [dbo].[tbl_ItemBOM_Master] ON 

INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (1, 5, N'1', CAST(500.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-12T11:16:47.853' AS DateTime), N'Uniqtech BOM', N'1', N'', N'', N'1')
INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (2, 5, N'2', CAST(1500.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-12T11:17:04.993' AS DateTime), N'Uniqtech BOM', N'1', N'', N'', N'1')
INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (3, 6, N'1', CAST(500.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-12T11:22:16.050' AS DateTime), N'Uniqtech BOM', N'1', N'', N'', N'2')
INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (4, 7, N'1', CAST(500.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-12T11:26:50.587' AS DateTime), N'Uniqtech BOMData', N'1', N'', N'', N'3')
INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (5, 7, N'2', CAST(1500.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-12T11:33:13.603' AS DateTime), N'Uniqtech BOMData', N'1', N'', N'', N'3')
INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (6, 17, N'4', CAST(86250.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-13T08:05:40.407' AS DateTime), N'Solar Thermal 1 Panel', N'1', N'', N'', N'4')
INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (7, 17, N'10', CAST(500.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-13T08:06:04.047' AS DateTime), N'Solar Thermal 1 Panel', N'12', N'', N'', N'4')
INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (8, 17, N'8', CAST(1500.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-13T08:09:04.190' AS DateTime), N'Solar Thermal 1 Panel', N'2', N'', N'', N'4')
INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (9, 17, N'11', CAST(4000.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-13T08:06:55.393' AS DateTime), N'Solar Thermal 1 Panel', N'3', N'', N'', N'4')
INSERT [dbo].[tbl_ItemBOM_Master] ([id], [ItemNo], [SubItemName], [SubRate], [Createby], [CreateDateTime], [Exrta1], [Exrta2], [Exrta3], [Exrta4], [Exrta5]) VALUES (10, 17, N'1', CAST(30000.00 AS Decimal(18, 2)), N'1', CAST(N'2021-02-13T08:07:30.223' AS DateTime), N'Solar Thermal 1 Panel', N'1', N'', N'', N'4')
SET IDENTITY_INSERT [dbo].[tbl_ItemBOM_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_OrderBOM_Master] ON 

INSERT [dbo].[tbl_OrderBOM_Master] ([Id], [ItemNo], [SubItemName], [SubRate], [Qty], [OrderBOM], [OrderNO], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (1, 7, 1, CAST(500.00 AS Decimal(18, 2)), N'1', 3, 1, 1, CAST(N'2021-03-03T16:05:52.463' AS DateTime), N'1', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_OrderBOM_Master] ([Id], [ItemNo], [SubItemName], [SubRate], [Qty], [OrderBOM], [OrderNO], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (2, 7, 2, CAST(1500.00 AS Decimal(18, 2)), N'1', 3, 1, 1, CAST(N'2021-03-03T16:05:52.493' AS DateTime), N'1', N'', N'', N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_OrderBOM_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_PageMaster] ON 

INSERT [dbo].[tbl_PageMaster] ([Id], [PageName]) VALUES (1, N'InquiryMaster')
INSERT [dbo].[tbl_PageMaster] ([Id], [PageName]) VALUES (2, N'QuotationMaster')
INSERT [dbo].[tbl_PageMaster] ([Id], [PageName]) VALUES (3, N'CompanyMaster')
INSERT [dbo].[tbl_PageMaster] ([Id], [PageName]) VALUES (4, N'CustomerMaster')
INSERT [dbo].[tbl_PageMaster] ([Id], [PageName]) VALUES (5, N'OrderMaster')
INSERT [dbo].[tbl_PageMaster] ([Id], [PageName]) VALUES (6, N'EmployeeMaster')
INSERT [dbo].[tbl_PageMaster] ([Id], [PageName]) VALUES (7, N'ItemMaster')
SET IDENTITY_INSERT [dbo].[tbl_PageMaster] OFF
SET IDENTITY_INSERT [dbo].[tbl_Quotation_Followup] ON 

INSERT [dbo].[tbl_Quotation_Followup] ([Id], [Noseries], [NextFolldate], [Follotype], [Assignto], [FolloStatus], [Remarks], [Comdate], [Comremarks], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 1, N'06/03/2021', 1, 0, 18, N'gfgfg', N'', N'', N'1', CAST(N'2021-03-05T18:41:08.333' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_Quotation_Followup] ([Id], [Noseries], [NextFolldate], [Follotype], [Assignto], [FolloStatus], [Remarks], [Comdate], [Comremarks], [CreateBy], [CreateDatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 1, N'15/03/2021', 3, 0, 16, N'', N'', N'', N'1', CAST(N'2021-03-05T18:51:28.747' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Quotation_Followup] OFF
SET IDENTITY_INSERT [dbo].[tbl_QuotationBOM_Master] ON 

INSERT [dbo].[tbl_QuotationBOM_Master] ([Id], [ItemNo], [SubItemName], [SubRate], [Qty], [QuotationBOM], [QuotationNO], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, 7, 1, CAST(500.00 AS Decimal(18, 2)), N'1', 3, 1, 1, CAST(N'2021-03-03T16:05:07.097' AS DateTime), N'1', N'', N'', N'', N'')
INSERT [dbo].[tbl_QuotationBOM_Master] ([Id], [ItemNo], [SubItemName], [SubRate], [Qty], [QuotationBOM], [QuotationNO], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, 7, 2, CAST(1500.00 AS Decimal(18, 2)), N'1', 3, 1, 1, CAST(N'2021-03-03T16:05:07.097' AS DateTime), N'1', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_QuotationBOM_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_Role_Master] ON 

INSERT [dbo].[tbl_Role_Master] ([id], [Role], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (1, N'SuperAdmin', N'1', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Role_Master] ([id], [Role], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (2, N'Admin', N'1', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Role_Master] ([id], [Role], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (3, N'SubAdmin', N'1', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Role_Master] ([id], [Role], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (4, N'Employee', N'1', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Role_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_RoleRights_Master] ON 

INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (1, N'InquiryMaster', N'1', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (2, N'QuotationMaster', N'1', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (3, N'CompanyMaster', N'1', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (4, N'CustomerMaster', N'1', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (5, N'OrderMaster', N'1', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (8, N'EmployeeMaster', N'1', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (9, N'ItemMaster', N'1', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (17, N'InquiryMaster', N'2', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (18, N'QuotationMaster', N'2', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (19, N'CompanyMaster', N'2', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (20, N'CustomerMaster', N'2', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (21, N'OrderMaster', N'2', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (22, N'EmployeeMaster', N'2', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (23, N'ItemMaster', N'2', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (31, N'InquiryMaster', N'4', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (32, N'QuotationMaster', N'4', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (33, N'CompanyMaster', N'4', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (34, N'CustomerMaster', N'4', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (35, N'OrderMaster', N'4', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (36, N'EmployeeMaster', N'4', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (37, N'ItemMaster', N'4', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'true', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (45, N'InquiryMaster', N'3', N'true', N'true', N'', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:34:06.557' AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (46, N'QuotationMaster', N'3', N'true', N'true', N'', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:34:06.557' AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (47, N'CompanyMaster', N'3', N'true', N'true', N'', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:34:06.557' AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (48, N'CustomerMaster', N'3', N'true', N'true', N'', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:34:06.557' AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (49, N'OrderMaster', N'3', N'true', N'true', N'', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:34:06.557' AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (50, N'EmployeeMaster', N'3', N'true', N'true', N'', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:34:06.557' AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_RoleRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [UpdateStatus], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (51, N'ItemMaster', N'3', N'false', N'false', N'', N'false', N'false', N'false', N'false', N'false', N'1', CAST(N'2021-03-04T11:34:06.557' AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_RoleRights_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_UserRights_Master] ON 

INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (1, N'InquiryMaster', N'1', N'true', N'true', N'1', N'true', N'true', N'true', N'true', N'true', N'1', NULL, N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (2, N'QuotationMaster', N'1', N'true', N'true', N'1', N'true', N'true', N'true', N'true', N'true', N'1', NULL, N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (3, N'CompanyMaster', N'1', N'true', N'true', N'1', N'true', N'true', N'true', N'true', N'true', N'1', NULL, N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (4, N'CustomerMaster', N'1', N'true', N'true', N'1', N'true', N'true', N'true', N'true', N'true', N'1', NULL, N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (5, N'OrderMaster', N'1', N'true', N'true', N'1', N'true', N'true', N'true', N'true', N'true', N'1', NULL, N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (8, N'EmployeeMaster', N'1', N'true', N'true', N'1', N'true', N'true', N'true', N'true', N'true', N'1', NULL, N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (9, N'ItemMaster', N'1', N'true', N'true', N'1', N'true', N'true', N'true', N'true', N'true', N'1', NULL, N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (52, N'InquiryMaster', N'2', N'true', N'true', N'15', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-03T17:06:20.957' AS DateTime), N'70', N'1', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (53, N'QuotationMaster', N'2', N'true', N'true', N'15', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-03T17:06:20.957' AS DateTime), N'70', N'1', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (54, N'CompanyMaster', N'2', N'true', N'true', N'15', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-03T17:06:20.957' AS DateTime), N'70', N'1', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (55, N'CustomerMaster', N'2', N'true', N'true', N'15', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-03T17:06:20.957' AS DateTime), N'70', N'1', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (56, N'OrderMaster', N'2', N'true', N'true', N'15', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-03T17:06:20.957' AS DateTime), N'70', N'1', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (57, N'EmployeeMaster', N'2', N'true', N'true', N'15', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-03T17:06:20.957' AS DateTime), N'70', N'1', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (58, N'ItemMaster', N'2', N'true', N'true', N'15', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-03T17:06:20.957' AS DateTime), N'70', N'1', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (59, N'InquiryMaster', N'3', N'true', N'true', N'34', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:38:45.703' AS DateTime), N'69', N'70', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (60, N'QuotationMaster', N'3', N'true', N'true', N'34', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:38:45.703' AS DateTime), N'69', N'70', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (61, N'CompanyMaster', N'3', N'true', N'true', N'34', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:38:45.703' AS DateTime), N'69', N'70', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (62, N'CustomerMaster', N'3', N'true', N'true', N'34', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:38:45.703' AS DateTime), N'69', N'70', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (63, N'OrderMaster', N'3', N'true', N'true', N'34', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:38:45.703' AS DateTime), N'69', N'70', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (64, N'EmployeeMaster', N'3', N'true', N'true', N'34', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T11:38:45.703' AS DateTime), N'69', N'70', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (65, N'ItemMaster', N'3', N'false', N'false', N'34', N'false', N'false', N'false', N'false', N'false', N'1', CAST(N'2021-03-04T11:38:45.703' AS DateTime), N'69', N'70', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (66, N'InquiryMaster', N'4', N'false', N'false', N'36', N'false', N'false', N'false', N'false', N'false', N'1', CAST(N'2021-03-04T15:40:30.223' AS DateTime), N'68', N'69', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (67, N'QuotationMaster', N'4', N'true', N'true', N'36', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T15:40:30.223' AS DateTime), N'68', N'69', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (68, N'CompanyMaster', N'4', N'true', N'true', N'36', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T15:40:30.223' AS DateTime), N'68', N'69', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (69, N'CustomerMaster', N'4', N'true', N'true', N'36', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T15:40:30.223' AS DateTime), N'68', N'69', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (70, N'OrderMaster', N'4', N'true', N'true', N'36', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T15:40:30.223' AS DateTime), N'68', N'69', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (71, N'EmployeeMaster', N'4', N'true', N'true', N'36', N'true', N'true', N'false', N'true', N'true', N'1', CAST(N'2021-03-04T15:40:30.223' AS DateTime), N'68', N'69', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbl_UserRights_Master] ([RecordID], [PageName], [RoleName], [CreateStatus], [EditStatus], [Noseries], [DeleteStatus], [ViewStatus], [ViewallStatus], [EmailStatus], [PrintStatus], [Createby], [CreateDateTime], [EmployeeID], [Extra2], [Extra3], [Extra4], [Extra5], [Extra6], [Extra7], [Extra8], [Extra9], [Extra10]) VALUES (72, N'ItemMaster', N'4', N'false', N'false', N'36', N'false', N'false', N'false', N'false', N'false', N'1', CAST(N'2021-03-04T15:40:30.223' AS DateTime), N'68', N'69', N'', N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_UserRights_Master] OFF
SET IDENTITY_INSERT [dbo].[tbl_UserRights_Noseries] ON 

INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (1, 1, NULL, NULL)
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (2, 2, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (3, 3, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (4, 4, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (5, 5, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (6, 6, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (7, 7, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (8, 8, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (9, 9, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (10, 10, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (11, 11, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (12, 12, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (13, 13, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (14, 14, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (15, 15, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (16, 16, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (17, 17, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (18, 18, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (19, 19, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (20, 20, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (21, 21, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (22, 22, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (23, 23, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (24, 24, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (25, 25, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (26, 26, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (27, 27, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (28, 28, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (29, 29, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (30, 30, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (31, 31, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (32, 32, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (33, 33, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (34, 34, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (35, 35, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (36, 36, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (37, 37, N'', N'')
INSERT [dbo].[tbl_UserRights_Noseries] ([Id], [No], [Extra1], [Extra2]) VALUES (38, 38, N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_UserRights_Noseries] OFF
SET IDENTITY_INSERT [dbo].[TermsandConditions_Master] ON 

INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (5, N'Payment Terms', N'<ol><li>30% advance </li><li>40% after 50% work complete</li><li>30% GO live </li></ol>', N'', CAST(N'2020-12-29T12:05:16.013' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, N'Tax', N'GST <div>VAT</div><div>TAX</div>', N'', CAST(N'2020-12-29T12:05:44.153' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, N'Warranty terms', N'Warranty', N'', CAST(N'2021-01-09T22:40:20.997' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, N'Interest Charges', N'Interest', N'', CAST(N'2021-01-09T22:40:42.607' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, N'Freight Terms', N'Freight Terms', N'', CAST(N'2021-01-09T22:41:05.060' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (11, N'Packing and Forwarding ', N'P&F Value', N'', CAST(N'2021-01-09T22:41:24.170' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (12, N'cancellation Charges', N'Cancellation charges', N'', CAST(N'2021-01-09T22:44:37.347' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (13, N'INCO Terms', N'Ex-Works', N'', CAST(N'2021-01-09T22:46:26.707' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (14, N'Transporter', N'Transporter', N'', CAST(N'2021-01-09T22:53:48.670' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[TermsandConditions_Master] ([id], [Title], [TermsandConditions], [Createby], [Createdatetime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (15, N'Validity', N'30 days from the date of this order', N'', CAST(N'2021-01-09T22:54:22.763' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[TermsandConditions_Master] OFF
SET IDENTITY_INSERT [dbo].[UnitofMeasurementTable] ON 

INSERT [dbo].[UnitofMeasurementTable] ([id], [UnitofMeasurement], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (7, N'Nos', N'1', CAST(N'2020-11-30T11:48:45.227' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[UnitofMeasurementTable] ([id], [UnitofMeasurement], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (8, N'PC', N'', CAST(N'2020-12-29T11:57:15.213' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[UnitofMeasurementTable] ([id], [UnitofMeasurement], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (9, N'Package', N'', CAST(N'2020-12-30T12:35:11.380' AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[UnitofMeasurementTable] ([id], [UnitofMeasurement], [Createby], [CreateDateTime], [Extra1], [Extra2], [Extra3], [Extra4], [Extra5]) VALUES (10, N'SqFt', N'1', CAST(N'2021-02-13T08:00:40.090' AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[UnitofMeasurementTable] OFF
ALTER TABLE [dbo].[SiteError] ADD  CONSTRAINT [DF_SiteError_ModifiedON]  DEFAULT (getdate()) FOR [ModifiedON]
GO
/****** Object:  StoredProcedure [dbo].[applicationtypedisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[businesstypedisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkapplicationtype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkapplicationtypename]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkapplicationtypenameupdate]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CheckBOMQuot]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CheckBOMQuot]
	@QuotationNo bigint
AS
BEGIN
SELECT        dbo.tbl_ItemBOM_Master.Exrta5, dbo.tbl_QuotationBOM_Master.QuotationNO, dbo.tbl_QuotationBOM_Master.QuotationBOM, dbo.tbl_QuotationBOM_Master.SubItemName, dbo.tbl_QuotationBOM_Master.SubRate, 
                         dbo.tbl_QuotationBOM_Master.Qty, dbo.tbl_QuotationBOM_Master.ItemNo
FROM            dbo.tbl_ItemBOM_Master INNER JOIN
                         dbo.tbl_QuotationBOM_Master ON dbo.tbl_ItemBOM_Master.id = dbo.tbl_QuotationBOM_Master.QuotationBOM
WHERE        (dbo.tbl_QuotationBOM_Master.QuotationNO = @QuotationNo)
END


GO
/****** Object:  StoredProcedure [dbo].[checkbusinesstypename]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkbusinesstypenameupdate]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkcityname]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkcityname]
			@City	varchar(50),
			@StateID int

AS
BEGIN
		    select * from City_Master where City=@City and Statename=@StateID

END


GO
/****** Object:  StoredProcedure [dbo].[checkcompanycontactname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkcompanyname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkcompressortype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkcompressortypename]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkcompressortypenameupdate]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkcountryname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkcoverletter]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkcoverletter]
	@Title  varchar(MAX)
AS
BEGIN
	select * from CoverLetter_Master where Title=@Title
END
GO
/****** Object:  StoredProcedure [dbo].[checkCustName]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkcustomercontactname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkCustomername]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkdepartment]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkdesignation]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkEmployee]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkFollowup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkfollowuptype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkindustryname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkindustrynameupdate]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkInqiuryalready]    Script Date: 17/03/2021 01:27:41 PM ******/
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
	    select * from Inqiury_Master where  Inquirydate=@Inquirydate and   Custname=@Custname

END


GO
/****** Object:  StoredProcedure [dbo].[CheckItemBOM]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CheckItemBOM]
	@QuotationNo bigint
AS
BEGIN
SELECT        dbo.Itemaster.Itemname, dbo.Itemaster.no, dbo.tbl_ItemBOM_Master.ItemNo, dbo.tbl_ItemBOM_Master.SubItemName, dbo.tbl_ItemBOM_Master.SubRate, dbo.tbl_ItemBOM_Master.Exrta2, dbo.tbl_ItemBOM_Master.Exrta5, 
                         dbo.Itemaster.id
FROM            dbo.Itemaster INNER JOIN
                         dbo.tbl_ItemBOM_Master ON dbo.Itemaster.no = dbo.tbl_ItemBOM_Master.ItemNo
WHERE        (dbo.Itemaster.id = @QuotationNo)
END


GO
/****** Object:  StoredProcedure [dbo].[checkitemgroup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkItemname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkitemsubgroupname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checklogindetails]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checklogindetails]
	@Email varchar(50),
	@Password varchar(50)
AS
IF EXISTS(SELECT        dbo.tbl_Employee_master.Id, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Employee_master.Erole, dbo.tbl_Employee_master.Extra5, dbo.tbl_Role_Master.Role
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_Employee_master.Erole = dbo.tbl_Role_Master.Id INNER JOIN
                         dbo.tbl_UserRights_Master ON dbo.tbl_Employee_master.no = dbo.tbl_UserRights_Master.EmployeeID
WHERE        (dbo.tbl_Employee_master.Eemailid = @Email) AND (dbo.tbl_Employee_master.Epwd = @Password))
BEGIN
SELECT        dbo.tbl_Employee_master.Id, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Employee_master.Erole, dbo.tbl_Employee_master.Extra5, dbo.tbl_Role_Master.Role
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_Employee_master.Erole = dbo.tbl_Role_Master.id INNER JOIN
                         dbo.tbl_UserRights_Master ON dbo.tbl_Employee_master.no = dbo.tbl_UserRights_Master.EmployeeID
WHERE        (dbo.tbl_Employee_master.Eemailid = @Email) AND (dbo.tbl_Employee_master.Epwd = @Password)
GROUP BY dbo.tbl_Employee_master.Id, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Employee_master.Erole, dbo.tbl_Employee_master.Extra5, dbo.tbl_Role_Master.Role
End
ELSE
BEGIN
SELECT        dbo.tbl_Employee_master.Id
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_Employee_master.Erole = dbo.tbl_Role_Master.Id
WHERE        (dbo.tbl_Employee_master.Eemailid = @Email) AND (dbo.tbl_Employee_master.Epwd = @Password)
END



GO
/****** Object:  StoredProcedure [dbo].[CheckloginRights]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[CheckloginRights]
	@Email varchar(50),
	@Password varchar(50)
AS
SELECT        dbo.tbl_Employee_master.Id, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Employee_master.Erole, dbo.tbl_Employee_master.Extra5, dbo.tbl_Role_Master.Role
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_Employee_master.Erole = dbo.tbl_Role_Master.id INNER JOIN
                         dbo.tbl_UserRights_Master ON dbo.tbl_Employee_master.no = dbo.tbl_UserRights_Master.EmployeeID
WHERE        (dbo.tbl_Employee_master.Eemailid = @Email) AND (dbo.tbl_Employee_master.Epwd = @Password)
GROUP BY dbo.tbl_Employee_master.Id, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Employee_master.Erole, dbo.tbl_Employee_master.Extra5, dbo.tbl_Role_Master.Role



GO
/****** Object:  StoredProcedure [dbo].[checkmachinetype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkmachinetypename]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkmachinetypenameupdate]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkOrderFollowup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkOrderProductName]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkProductName]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkQuotationalready]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkQuotationalready] 
@InqiuryNo varchar(250),
@Custname int
AS
BEGIN
		   SELECT        Custname, InquiryNo
FROM            dbo.Quotation_Master
WHERE        (Custname = @Custname) AND (InquiryNo = @InqiuryNo)

END


GO
/****** Object:  StoredProcedure [dbo].[CheckQuotationBOM]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[CheckQuotationBOM] 
@Noseries varchar(250),
@Item varchar(350)
AS
BEGIN
	    select * from tbl_QuotationBOM_Master where QuotationNO=@Noseries and ItemNo=@Item 

END


GO
/****** Object:  StoredProcedure [dbo].[checkQuotationFollowup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkQuotationProductName]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkrole]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkrole]
		@Role varchar(50)

AS
BEGIN
		select * from tbl_Role_Master where Role=@Role

END


GO
/****** Object:  StoredProcedure [dbo].[checksource]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkstatename]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkstatename]
		@State	varchar(50),
		@CountryID int

AS
BEGIN
	    select * from State_Master where State=@State and Countryname=@CountryID

END


GO
/****** Object:  StoredProcedure [dbo].[checkstatus]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checktermsandconditions]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkunitofmeasurement]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CheckUserRights]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[CheckUserRights]
@PageName varchar(50),
@Id varchar(50)


AS
if(@PageName!='')
BEGIN
  SELECT        PageName, RoleName, RecordID, CreateStatus, EditStatus, Noseries, DeleteStatus, ViewStatus, ViewallStatus, EmailStatus, PrintStatus, EmployeeID
FROM            dbo.tbl_UserRights_Master
WHERE        (PageName = @PageName) AND (EmployeeID = @Id)

END
else
BEGIN
  SELECT        PageName, RoleName, RecordID, CreateStatus, EditStatus, Noseries, DeleteStatus, ViewStatus, ViewallStatus, EmailStatus, PrintStatus, EmployeeID
FROM            dbo.tbl_UserRights_Master
WHERE         (EmployeeID = @Id)

END
GO
/****** Object:  StoredProcedure [dbo].[compressortypedisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[countrydisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[coverletterdisp]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[coverletterdisp]
	
AS
BEGIN
	select * from CoverLetter_Master order by Title
END
GO
/****** Object:  StoredProcedure [dbo].[deleteapplicationtype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletebusinesstype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletecitydatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletecompany]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletecompanycontactdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletecompanydata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletecompanydatabyCompanyno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletecompressortype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletecountry]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletecoverletter]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletecoverletter]
		@id int
AS
BEGIN
	delete  from CoverLetter_Master where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[deleteCustomer]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteCustomercontactdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteCustomerdatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletedepartment]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletedesignation]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteemployeedatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteemployeedocumentdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletefollowuptype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteindustryname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteinquirydetailsdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteinquiryfilesdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[deleteinquiryfilesdatabyid]
@id int
as
delete from Inquiry_Files where Id=@id


GO
/****** Object:  StoredProcedure [dbo].[deleteinquiryfollowupdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteitematano]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteItemBOMbyid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteItemBOMbyid]
	@id varchar(20)
	

AS
BEGIN
	delete from tbl_ItemBOM_Master where id=@id
	
END


GO
/****** Object:  StoredProcedure [dbo].[deleteitemdocumentdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteitemgroup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteitemimgdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteitemsubgroupdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletemachinetype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteOrderdetailsBOMbyid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[deleteOrderdetailsBOMbyid]
	@id int

AS
BEGIN
		delete from tbl_OrderBOM_Master where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[deleteOrderdetailsdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteorderfollowupdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteordertandc]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletequotationdetailsBOMbyid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[deletequotationdetailsBOMbyid]
	@id int

AS
BEGIN
		delete from tbl_QuotationBOM_Master where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[deletequotationdetailsdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletequotationfollowupdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletequotationtandc]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleterole]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleterole]
		@id int

AS
BEGIN
	 delete  from tbl_Role_Master where id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[DeleteRoleRights]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[DeleteRoleRights] 
	@id int

AS
BEGIN
	delete tbl_RoleRights_Master where RoleName=@id

END
GO
/****** Object:  StoredProcedure [dbo].[deletesource]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletestatedatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletestatus]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deletetermsandconditions]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[deleteunitofmeasurement]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[depaartmentdisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[designationdisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[EdituserRights]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[EdituserRights]
@Id varchar(50)
AS
BEGIN
SELECT        dbo.tbl_UserRights_Master.RecordID, dbo.tbl_UserRights_Master.PageName, dbo.tbl_UserRights_Master.CreateStatus, dbo.tbl_UserRights_Master.EditStatus, dbo.tbl_UserRights_Master.Noseries, 
                         dbo.tbl_UserRights_Master.DeleteStatus, dbo.tbl_UserRights_Master.ViewStatus, dbo.tbl_UserRights_Master.ViewallStatus, dbo.tbl_UserRights_Master.EmailStatus, dbo.tbl_UserRights_Master.PrintStatus, 
                         dbo.tbl_UserRights_Master.EmployeeID, dbo.tbl_UserRights_Master.Extra2, dbo.tbl_UserRights_Master.Extra3, dbo.tbl_UserRights_Master.RoleName
FROM            dbo.tbl_UserRights_Master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_UserRights_Master.RoleName = dbo.tbl_Role_Master.id
WHERE        (dbo.tbl_UserRights_Master.Noseries = @Id)
END
GO
/****** Object:  StoredProcedure [dbo].[followuptypedisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallcityforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallcompanydata]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallcompanydata]
	@CreateBy int
AS
BEGIN
SELECT        dbo.tbl_Company_Master.id, dbo.tbl_Company_Master.Companyno, dbo.tbl_Company_Master.Name, dbo.tbl_Company_Master.Address, dbo.tbl_Company_Master.District, dbo.tbl_Company_Master.Pincode, 
                         dbo.tbl_Company_Master.PhoneNo, dbo.tbl_Company_Master.Email, dbo.tbl_Company_Master.Createby, dbo.Country_Master.Country, dbo.IndustryTable.IndustryName, dbo.BusinessTypeTable.BusinessTypeName, 
                         dbo.State_Master.State, dbo.City_Master.City, dbo.tbl_Company_Master.Status, dbo.tbl_Company_Master.GSTno, dbo.tbl_Company_Master.Extra1
FROM            dbo.tbl_Company_Master INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Company_Master.Country = dbo.Country_Master.id INNER JOIN
                         dbo.BusinessTypeTable ON dbo.tbl_Company_Master.BusinessType = dbo.BusinessTypeTable.id INNER JOIN
                         dbo.IndustryTable ON dbo.tbl_Company_Master.Industrygroup = dbo.IndustryTable.id INNER JOIN
                         dbo.State_Master ON dbo.tbl_Company_Master.State = dbo.State_Master.id INNER JOIN
                         dbo.City_Master ON dbo.tbl_Company_Master.City = dbo.City_Master.id
WHERE        (dbo.tbl_Company_Master.Createby = @CreateBy)
END


GO
/****** Object:  StoredProcedure [dbo].[getallcompanydatabyadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallcompanydatabyadmin] 
AS
BEGIN
	SELECT        dbo.tbl_Company_Master.id, dbo.tbl_Company_Master.Companyno, dbo.tbl_Company_Master.Name, dbo.tbl_Company_Master.Address, dbo.tbl_Company_Master.District, dbo.tbl_Company_Master.Pincode, 
                         dbo.tbl_Company_Master.PhoneNo, dbo.tbl_Company_Master.Email, dbo.tbl_Company_Master.Createby, dbo.Country_Master.Country, dbo.IndustryTable.IndustryName, dbo.BusinessTypeTable.BusinessTypeName, 
                         dbo.State_Master.State, dbo.City_Master.City, dbo.tbl_Company_Master.Status, dbo.tbl_Company_Master.GSTno, dbo.tbl_Company_Master.Extra1
FROM            dbo.tbl_Company_Master INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Company_Master.Country = dbo.Country_Master.id INNER JOIN
                         dbo.BusinessTypeTable ON dbo.tbl_Company_Master.BusinessType = dbo.BusinessTypeTable.id INNER JOIN
                         dbo.IndustryTable ON dbo.tbl_Company_Master.Industrygroup = dbo.IndustryTable.id INNER JOIN
                         dbo.State_Master ON dbo.tbl_Company_Master.State = dbo.State_Master.id INNER JOIN
                         dbo.City_Master ON dbo.tbl_Company_Master.City = dbo.City_Master.id 

END	


GO
/****** Object:  StoredProcedure [dbo].[getallcompanydatabycomno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallcompanydataforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallCustomerdatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallCustomerdatabynoForreport]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallCustomerdatabynoForreport]
	@No varchar(50)
AS
BEGIN
	SELECT        dbo.tbl_Customer_Master.Id, dbo.tbl_Customer_Master.No, dbo.tbl_Customer_Master.GroupNo, dbo.tbl_Customer_Master.Name, dbo.tbl_Customer_Master.Area, dbo.tbl_Customer_Master.Address, 
                         dbo.tbl_Customer_Master.District, dbo.tbl_Customer_Master.Pincode, dbo.tbl_Customer_Master.PhoneNo, dbo.tbl_Customer_Master.Email, dbo.tbl_Customer_Master.BussinessType, dbo.tbl_Customer_Master.Industrygroup, 
                         dbo.tbl_Customer_Master.URL, dbo.tbl_Customer_Master.Status, dbo.tbl_Customer_Master.GSTno, dbo.tbl_Customer_Master.Bankname, dbo.tbl_Customer_Master.Accountno, dbo.tbl_Customer_Master.IFSCcode, 
                         dbo.tbl_Customer_Master.Createby, dbo.tbl_Customer_Master.Createdatetime, dbo.tbl_Customer_Master.Extra1, dbo.tbl_Customer_Master.Extar2, dbo.tbl_Customer_Master.Extra3, dbo.tbl_Customer_Master.Extar4, 
                         dbo.tbl_Customer_Master.Extra5, dbo.Quotation_Master.NoSeries, dbo.Country_Master.Country, dbo.State_Master.State, dbo.City_Master.City
FROM            dbo.Quotation_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Quotation_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.City_Master ON dbo.tbl_Customer_Master.City = dbo.City_Master.id INNER JOIN
                         dbo.State_Master ON dbo.tbl_Customer_Master.State = dbo.State_Master.id INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Customer_Master.Country = dbo.Country_Master.id
WHERE        (dbo.Quotation_Master.NoSeries = @No)
END


GO
/****** Object:  StoredProcedure [dbo].[getallCustomerMasterata]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallCustomerMasterata]
	@Createby int
AS
BEGIN
	SELECT        dbo.Country_Master.Country, dbo.State_Master.State, dbo.City_Master.City, dbo.tbl_Customer_Master.Name, dbo.tbl_Customer_Master.District, dbo.BusinessTypeTable.BusinessTypeName, dbo.IndustryTable.IndustryName, 
                         dbo.tbl_Customer_Master.Id, dbo.tbl_Customer_Master.PhoneNo, dbo.tbl_Customer_Master.Email, dbo.tbl_Customer_Master.Status, dbo.tbl_Customer_Master.GSTno, dbo.tbl_Customer_Master.No, 
                         dbo.tbl_Customer_Master.Createby, dbo.tbl_Customer_Master.Address
FROM            dbo.City_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.City_Master.id = dbo.tbl_Customer_Master.City INNER JOIN
                         dbo.State_Master ON dbo.tbl_Customer_Master.State = dbo.State_Master.id INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Customer_Master.Country = dbo.Country_Master.id INNER JOIN
                         dbo.BusinessTypeTable ON dbo.tbl_Customer_Master.BussinessType = dbo.BusinessTypeTable.id INNER JOIN
                         dbo.IndustryTable ON dbo.tbl_Customer_Master.Industrygroup = dbo.IndustryTable.id
WHERE        (dbo.tbl_Customer_Master.Createby = @Createby)
						
END


GO
/****** Object:  StoredProcedure [dbo].[getallCustomerMasterataforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallCustomerMasterataforadmin]
	
AS
begin
SELECT        dbo.Country_Master.Country, dbo.State_Master.State, dbo.City_Master.City, dbo.tbl_Customer_Master.Name, dbo.tbl_Customer_Master.District, dbo.BusinessTypeTable.BusinessTypeName, dbo.IndustryTable.IndustryName, 
                         dbo.tbl_Customer_Master.Id, dbo.tbl_Customer_Master.PhoneNo, dbo.tbl_Customer_Master.Email, dbo.tbl_Customer_Master.Status, dbo.tbl_Customer_Master.GSTno, dbo.tbl_Customer_Master.No
FROM            dbo.City_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.City_Master.id = dbo.tbl_Customer_Master.City INNER JOIN
                         dbo.State_Master ON dbo.tbl_Customer_Master.State = dbo.State_Master.id INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Customer_Master.Country = dbo.Country_Master.id INNER JOIN
                         dbo.BusinessTypeTable ON dbo.tbl_Customer_Master.BussinessType = dbo.BusinessTypeTable.id INNER JOIN
                         dbo.IndustryTable ON dbo.tbl_Customer_Master.Industrygroup = dbo.IndustryTable.id

						
END


GO
/****** Object:  StoredProcedure [dbo].[getallemployeedata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallemployeedataforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallemployeedataforadmin]
	
AS
BEGIN
SELECT        dbo.City_Master.City, dbo.Country_Master.Country, dbo.State_Master.State, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Employee_master.Egender, dbo.tbl_Employee_master.Emobilenop, 
                         dbo.tbl_Employee_master.Eemailid, dbo.tbl_Employee_master.Eurgentcontactname, dbo.tbl_Employee_master.Eurgentcontactno, dbo.tbl_Employee_master.Eurgentcontactrelation, dbo.tbl_Employee_master.Estatus
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.City_Master ON dbo.tbl_Employee_master.ECity = dbo.City_Master.id INNER JOIN
                         dbo.Country_Master ON dbo.tbl_Employee_master.ECountry = dbo.Country_Master.id INNER JOIN
                         dbo.State_Master ON dbo.tbl_Employee_master.EState = dbo.State_Master.id  
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllEmployeeddl]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetAllEmployeeddl]

AS
BEGIN
    SELECT        TOP (100) PERCENT no, Ename, Erole
FROM            dbo.tbl_Employee_master

END
GO
/****** Object:  StoredProcedure [dbo].[getallInqiurydatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallInqiurydataforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallinqiurydetailsdata]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallinqiurydetailsdata]
	@Noseries bigint
AS
BEGIN
SELECT        dbo.Itemaster.Itemname, dbo.Inqiury_Details.Item, dbo.Inqiury_Details.UOM, dbo.Inqiury_Details.Qty, dbo.Inqiury_Details.Rate, dbo.Inqiury_Details.Amount, dbo.Itemaster.Extra1, dbo.Itemaster.Itemrate, dbo.Itemaster.Itemgst, 
                         dbo.Itemaster.ItemHsn
FROM            dbo.Inqiury_Details INNER JOIN
                         dbo.Itemaster ON dbo.Inqiury_Details.Item = dbo.Itemaster.id
WHERE        (dbo.Inqiury_Details.Noseries = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[getallinquiryfollwup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallitem]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallitemdata]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallitemdata] 
	
AS
BEGIN
	SELECT        dbo.Itemaster.id, dbo.Itemaster.no, dbo.Itemaster.itemgroup, dbo.Itemaster.itemsubgroup, dbo.Itemaster.Modelno, dbo.Itemaster.Itemname, dbo.Itemaster.ItemFinalname, dbo.Itemaster.Itemalis, dbo.Itemaster.Itemcategoryno, 
                         dbo.Itemaster.ItemUOM, dbo.Itemaster.Itemrate, dbo.Itemaster.Itemgst, dbo.Itemaster.ItemHsn, dbo.Itemaster.ItemDesc, dbo.ItemGroupTable.ItemGroup AS Expr1, dbo.ItemSubgroupTable.SubgroupName, 
                         dbo.UnitofMeasurementTable.UnitofMeasurement, dbo.Itemaster.Extra1
FROM            dbo.Itemaster INNER JOIN
                         dbo.ItemGroupTable ON dbo.Itemaster.itemgroup = dbo.ItemGroupTable.id INNER JOIN
                         dbo.ItemSubgroupTable ON dbo.Itemaster.itemsubgroup = dbo.ItemSubgroupTable.id INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Itemaster.ItemUOM = dbo.UnitofMeasurementTable.id

END


GO
/****** Object:  StoredProcedure [dbo].[getallitemdatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallItemdataforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallItemdataforadmin] 
	
AS
BEGIN
	SELECT        dbo.Itemaster.id, dbo.Itemaster.no, dbo.Itemaster.itemgroup, dbo.Itemaster.itemsubgroup, dbo.Itemaster.Modelno, dbo.Itemaster.Itemname, dbo.Itemaster.ItemFinalname, dbo.Itemaster.Itemalis, dbo.Itemaster.Itemcategoryno, 
                         dbo.Itemaster.ItemUOM, dbo.Itemaster.Itemrate, dbo.Itemaster.Itemgst, dbo.Itemaster.ItemHsn, dbo.Itemaster.ItemDesc, dbo.ItemGroupTable.ItemGroup AS Expr1, dbo.ItemSubgroupTable.SubgroupName, 
                         dbo.UnitofMeasurementTable.UnitofMeasurement, dbo.Itemaster.Extra1, dbo.Itemaster.Extra2
FROM            dbo.Itemaster INNER JOIN
                         dbo.ItemGroupTable ON dbo.Itemaster.itemgroup = dbo.ItemGroupTable.id INNER JOIN
                         dbo.ItemSubgroupTable ON dbo.Itemaster.itemsubgroup = dbo.ItemSubgroupTable.id INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Itemaster.ItemUOM = dbo.UnitofMeasurementTable.id
WHERE        (dbo.Itemaster.Extra2 = '1')
END


GO
/****** Object:  StoredProcedure [dbo].[getallItemdataRegiforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[getallItemdataRegiforadmin] 
	
AS
BEGIN
	SELECT        dbo.Itemaster.id, dbo.Itemaster.no, dbo.Itemaster.itemgroup, dbo.Itemaster.itemsubgroup, dbo.Itemaster.Modelno, dbo.Itemaster.Itemname, dbo.Itemaster.ItemFinalname, dbo.Itemaster.Itemalis, dbo.Itemaster.Itemcategoryno, 
                         dbo.Itemaster.ItemUOM, dbo.Itemaster.Itemrate, dbo.Itemaster.Itemgst, dbo.Itemaster.ItemHsn, dbo.Itemaster.ItemDesc, dbo.ItemGroupTable.ItemGroup AS Expr1, dbo.ItemSubgroupTable.SubgroupName, 
                         dbo.UnitofMeasurementTable.UnitofMeasurement, dbo.Itemaster.Extra1, dbo.Itemaster.Extra2
FROM            dbo.Itemaster INNER JOIN
                         dbo.ItemGroupTable ON dbo.Itemaster.itemgroup = dbo.ItemGroupTable.id INNER JOIN
                         dbo.ItemSubgroupTable ON dbo.Itemaster.itemsubgroup = dbo.ItemSubgroupTable.id INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Itemaster.ItemUOM = dbo.UnitofMeasurementTable.id

END


GO
/****** Object:  StoredProcedure [dbo].[getallitemsubgroup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallitemsubgroupforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallitemsubgroupforadmin] 
	 @GroupID int
AS
BEGIN
SELECT        TOP (100) PERCENT dbo.ItemSubgroupTable.SubgroupName, dbo.ItemSubgroupTable.id, dbo.ItemGroupTable.id AS GroupID
FROM            dbo.ItemSubgroupTable INNER JOIN
                         dbo.ItemGroupTable ON dbo.ItemSubgroupTable.itemgroupid = dbo.ItemGroupTable.id
WHERE        (dbo.ItemGroupTable.id = @GroupID)
ORDER BY dbo.ItemSubgroupTable.SubgroupName
END


GO
/****** Object:  StoredProcedure [dbo].[getallOrderdatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getallOrderdatabyno]
			@Noseries varchar(50)

AS
BEGIN
SELECT        OrderNo, NoSeries, OrderDate, Custname, Custcontact, Custcontactno, Dept, Design, ContactEmail, ContactMno1, ContactMno2, TotalCost, Discount, Benifit, FinalPrice, GST, FinalPriceGST, InqiuryStatus, QuotationNo, 
                         InqiurySource, Remarks, Extra1
FROM            dbo.Order_Master
WHERE        (NoSeries = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[getallOrderdataforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getallOrderdataforadmin]

AS
BEGIN
SELECT        dbo.Order_Master.OrderNo, dbo.Order_Master.OrderDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Order_Master.ContactEmail, dbo.Order_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         dbo.tbl_Customer_Master.Name, dbo.DesignationTable.Designation, dbo.DepartmentTable.Department, dbo.Order_Master.NoSeries, dbo.Order_Master.QuotationNo
FROM            dbo.Order_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Order_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Order_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id INNER JOIN
                         dbo.DepartmentTable ON dbo.Order_Master.Dept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.Order_Master.Design = dbo.DesignationTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Order_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.StatusTable ON dbo.Order_Master.InqiuryStatus = dbo.StatusTable.id
END

GO
/****** Object:  StoredProcedure [dbo].[getallOrderdataforByEmpID]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[getallOrderdataforByEmpID]
@Id varchar(50)
AS
BEGIN
SELECT        dbo.Order_Master.OrderNo, dbo.Order_Master.OrderDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Order_Master.ContactEmail, dbo.Order_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         dbo.tbl_Customer_Master.Name, dbo.DesignationTable.Designation, dbo.DepartmentTable.Department, dbo.Order_Master.NoSeries, dbo.Order_Master.QuotationNo
FROM            dbo.Order_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Order_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Order_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id INNER JOIN
                         dbo.DepartmentTable ON dbo.Order_Master.Dept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.Order_Master.Design = dbo.DesignationTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Order_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.StatusTable ON dbo.Order_Master.InqiuryStatus = dbo.StatusTable.id

						 where  dbo.Order_Master.CreateBy=@Id
END

GO
/****** Object:  StoredProcedure [dbo].[getallOrderdataforEmployee]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[getallOrderdataforEmployee]
@CreateBy varchar(50)
AS
BEGIN
SELECT        dbo.Order_Master.OrderNo, dbo.Order_Master.OrderDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Order_Master.ContactEmail, dbo.Order_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         dbo.tbl_Customer_Master.Name, dbo.DesignationTable.Designation, dbo.DepartmentTable.Department, dbo.Order_Master.NoSeries, dbo.Order_Master.QuotationNo, dbo.Order_Master.CreateBy
FROM            dbo.Order_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Order_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Order_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id INNER JOIN
                         dbo.DepartmentTable ON dbo.Order_Master.Dept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.Order_Master.Design = dbo.DesignationTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Order_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.StatusTable ON dbo.Order_Master.InqiuryStatus = dbo.StatusTable.id
WHERE        (dbo.Order_Master.CreateBy = @CreateBy)
END

GO
/****** Object:  StoredProcedure [dbo].[getallorderdetailsdata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallQuotationdatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallQuotationdataforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallQuotationdataforEmp]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getallQuotationdataforEmp]
@CreateBy varchar(50)

AS
BEGIN
	SELECT        dbo.Quotation_Master.QuotationNo, dbo.Quotation_Master.NoSeries, dbo.Quotation_Master.QuotationDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Quotation_Master.ContactEmail, 
                         dbo.Quotation_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, dbo.tbl_Customer_Master.Name, dbo.Quotation_Master.CreateBy
FROM            dbo.Quotation_Master INNER JOIN
                         dbo.StatusTable ON dbo.Quotation_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Quotation_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Quotation_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Quotation_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id
WHERE        (dbo.Quotation_Master.CreateBy = @CreateBy)
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllReportList]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetAllReportList]
@no varchar(50)

AS
if(@no='SuperAdmin')
begin
return null
end
else if(@no='Admin')
begin
SELECT        dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Role_Master.Role
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_Employee_master.Erole = dbo.tbl_Role_Master.id
WHERE        (dbo.tbl_Role_Master.Role = 'SuperAdmin')
end
else if(@no='SubAdmin')
begin
SELECT        dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Role_Master.Role
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_Employee_master.Erole = dbo.tbl_Role_Master.id
WHERE        (dbo.tbl_Role_Master.Role = 'Admin')
end
else if(@no='Employee')
begin
SELECT        dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Role_Master.Role
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_Employee_master.Erole = dbo.tbl_Role_Master.id
WHERE        (dbo.tbl_Role_Master.Role = 'SubAdmin')
end
GO
/****** Object:  StoredProcedure [dbo].[getallRoleforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[getallRoleforadmin]

AS
BEGIN
    select Id,Role from tbl_Role_Master  order by Role
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllroleRights]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[GetAllroleRights]
@Id varchar(50)
AS
BEGIN
SELECT        dbo.tbl_RoleRights_Master.PageName, dbo.tbl_RoleRights_Master.RoleName, dbo.tbl_RoleRights_Master.CreateStatus, dbo.tbl_RoleRights_Master.EditStatus, dbo.tbl_RoleRights_Master.UpdateStatus, 
                         dbo.tbl_RoleRights_Master.DeleteStatus, dbo.tbl_RoleRights_Master.ViewStatus, dbo.tbl_RoleRights_Master.ViewallStatus, dbo.tbl_RoleRights_Master.EmailStatus, dbo.tbl_RoleRights_Master.PrintStatus, 
                         dbo.tbl_Role_Master.Id, dbo.tbl_RoleRights_Master.RecordID
FROM            dbo.tbl_RoleRights_Master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_RoleRights_Master.RoleName = dbo.tbl_Role_Master.Id
WHERE        (dbo.tbl_Role_Master.Id = @Id)
END
GO
/****** Object:  StoredProcedure [dbo].[getallstate]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getallstatebycountryid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[getallstatebycountryid] 
	@CountryID int
AS
BEGIN
	SELECT        dbo.State_Master.id, dbo.State_Master.State, dbo.Country_Master.Country
FROM            dbo.Country_Master INNER JOIN
                         dbo.State_Master ON dbo.Country_Master.id = dbo.State_Master.Countryname
						  where dbo.Country_Master.id=@CountryID
						 ORDER BY dbo.State_Master.State
						
END


GO
/****** Object:  StoredProcedure [dbo].[getallstateforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetBOMByID]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetBOMByID]
	@id int

AS
BEGIN
	SELECT        dbo.tbl_ItemBOM_Master.id, dbo.tbl_ItemBOM_Master.ItemNo, dbo.tbl_ItemBOM_Master.SubItemName, dbo.tbl_ItemBOM_Master.SubRate, dbo.tbl_ItemBOM_Master.Createby, dbo.tbl_ItemBOM_Master.CreateDateTime, 
                         dbo.tbl_ItemBOM_Master.Exrta1, dbo.tbl_ItemBOM_Master.Exrta2, dbo.tbl_ItemBOM_Master.Exrta3, dbo.tbl_ItemBOM_Master.Exrta4, dbo.tbl_ItemBOM_Master.Exrta5, dbo.tbl_BOM_Master.Name, 
                         dbo.tbl_BOM_Master.Id AS BOMID
FROM            dbo.tbl_ItemBOM_Master INNER JOIN
                         dbo.tbl_BOM_Master ON dbo.tbl_ItemBOM_Master.Exrta5 = dbo.tbl_BOM_Master.Id
WHERE        (dbo.tbl_ItemBOM_Master.id = @id)

END


GO
/****** Object:  StoredProcedure [dbo].[GetBombyItemID]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetBombyItemID] 
 
 @id int
As
BEGIN
	SELECT        dbo.Itemaster.id, dbo.tbl_BOM_Master.Name, dbo.tbl_BOM_Master.Id AS BOMID
FROM            dbo.Itemaster INNER JOIN
                         dbo.tbl_ItemBOM_Master ON dbo.Itemaster.no = dbo.tbl_ItemBOM_Master.ItemNo INNER JOIN
                         dbo.tbl_BOM_Master ON dbo.tbl_ItemBOM_Master.Exrta5 = dbo.tbl_BOM_Master.Id
GROUP BY dbo.Itemaster.id, dbo.tbl_BOM_Master.Name, dbo.tbl_BOM_Master.Id
HAVING        (dbo.Itemaster.id = @id)
END


GO
/****** Object:  StoredProcedure [dbo].[GetBOMdata]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetBOMdata] 
	@no bigint
AS
BEGIN
	SELECT        dbo.tbl_ItemBOM_Master.id, dbo.tbl_ItemBOM_Master.ItemNo, dbo.tbl_ItemBOM_Master.SubItemName, dbo.tbl_ItemBOM_Master.SubRate, dbo.tbl_ItemBOM_Master.Createby, dbo.tbl_ItemBOM_Master.CreateDateTime, 
                         dbo.tbl_ItemBOM_Master.Exrta1, dbo.tbl_ItemBOM_Master.Exrta2, dbo.tbl_ItemBOM_Master.Exrta3, dbo.tbl_ItemBOM_Master.Exrta4, dbo.tbl_ItemBOM_Master.Exrta5, dbo.Itemaster.Itemname, 
                         dbo.tbl_BOM_Master.Name
FROM            dbo.tbl_ItemBOM_Master INNER JOIN
                         dbo.Itemaster ON dbo.tbl_ItemBOM_Master.SubItemName = dbo.Itemaster.id INNER JOIN
                         dbo.tbl_BOM_Master ON dbo.tbl_ItemBOM_Master.Exrta5 = dbo.tbl_BOM_Master.Id
WHERE        (dbo.tbl_ItemBOM_Master.ItemNo = @no)

END


GO
/****** Object:  StoredProcedure [dbo].[GetBOMOrderDetails]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetBOMOrderDetails] 
 
 @QuotationNo varchar(20),
 @ItemNO varchar(20)
As
BEGIN
SELECT        Itemaster_1.no, dbo.Order_Details.Id, dbo.Order_Details.Qty, dbo.Order_Details.Discount, dbo.Order_Details.FinalbasePrice, dbo.Order_Details.GST, dbo.Order_Details.ADBenefit, dbo.Order_Details.NetValue, 
                         dbo.Order_Details.TotalValue, Itemaster_1.Itemgst
FROM            dbo.tbl_OrderBOM_Master INNER JOIN
                         dbo.Order_Details ON dbo.tbl_OrderBOM_Master.OrderNO = dbo.Order_Details.Qno INNER JOIN
                         dbo.Itemaster AS Itemaster_1 ON dbo.Order_Details.Item = Itemaster_1.id
WHERE        (dbo.tbl_OrderBOM_Master.OrderNO = @QuotationNo)
GROUP BY Itemaster_1.no, dbo.Order_Details.Id, dbo.Order_Details.Qty, dbo.Order_Details.Discount, dbo.Order_Details.FinalbasePrice, dbo.Order_Details.GST, dbo.Order_Details.ADBenefit, dbo.Order_Details.NetValue, 
                         dbo.Order_Details.TotalValue, Itemaster_1.Itemgst
HAVING        (Itemaster_1.no = @ItemNo)
END


GO
/****** Object:  StoredProcedure [dbo].[GetBOMTable]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetBOMTable] 
 
 @ItemNO varchar(20)
As
BEGIN
	SELECT        dbo.tbl_ItemBOM_Master.id, dbo.tbl_ItemBOM_Master.SubRate, dbo.Itemaster.Itemname, dbo.tbl_ItemBOM_Master.Exrta2, dbo.tbl_ItemBOM_Master.ItemNo
FROM            dbo.tbl_BOM_Master INNER JOIN
                         dbo.tbl_ItemBOM_Master ON dbo.tbl_BOM_Master.Id = dbo.tbl_ItemBOM_Master.Exrta5 INNER JOIN
                         dbo.Itemaster ON dbo.tbl_ItemBOM_Master.SubItemName = dbo.Itemaster.id INNER JOIN
                         dbo.Inqiury_Details ON dbo.tbl_BOM_Master.Id = dbo.Inqiury_Details.Extra5
WHERE        (dbo.tbl_ItemBOM_Master.ItemNo = @ItemNO)
END


GO
/****** Object:  StoredProcedure [dbo].[getcitydata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getcitydatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getcompanycontactdata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getcompanycontactdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetCountOfBOM]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCountOfBOM]
	@id int,
	@ItemID int

AS

BEGIN
	SELECT COUNT(ItemNo) AS CountData FROM tbl_QuotationBOM_Master where ItemNo=@ItemID and QuotationNO=@id
END


GO
/****** Object:  StoredProcedure [dbo].[GetCoverLatterData]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCoverLatterData]
	@QuotationNo int
AS
BEGIN
	SELECT        dbo.CoverLetter_Master.Title, dbo.CoverLetter_Master.Description, dbo.Quotation_Master.QuotationNo, dbo.Quotation_Master.NoSeries
FROM            dbo.Quotation_Master INNER JOIN
                         dbo.CoverLetter_Master ON dbo.Quotation_Master.CoverLetter = dbo.CoverLetter_Master.id
WHERE        (dbo.Quotation_Master.NoSeries = @QuotationNo)
						
END


GO
/****** Object:  StoredProcedure [dbo].[getCustomerConatctPerson]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getCustomercontactdata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getCustomercontactdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getCustomerIdbyname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetDepartmentddl]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetDepartmentddl] 
	@ContactID int
AS
BEGIN
	SELECT        dbo.DepartmentTable.Department, dbo.tbl_Customer_Contact_Master.Id AS ContactID, dbo.DepartmentTable.id
FROM            dbo.tbl_Customer_Contact_Master INNER JOIN
                         dbo.DepartmentTable ON dbo.tbl_Customer_Contact_Master.Dept = dbo.DepartmentTable.id
WHERE        (dbo.tbl_Customer_Contact_Master.Id = @ContactID)
order by Department
END


GO
/****** Object:  StoredProcedure [dbo].[getDesibyContact]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getDesibyContact]
@ContactID varchar(50)
AS
BEGIN
SELECT        TOP (100) PERCENT dbo.DesignationTable.id, dbo.DesignationTable.Designation, dbo.tbl_Customer_Contact_Master.Id AS Expr1
FROM            dbo.DesignationTable INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.DesignationTable.id = dbo.tbl_Customer_Contact_Master.Design
GROUP BY dbo.DesignationTable.id, dbo.DesignationTable.Designation, dbo.tbl_Customer_Contact_Master.Id
HAVING        (dbo.tbl_Customer_Contact_Master.Id = @ContactID)
END


GO
/****** Object:  StoredProcedure [dbo].[getdocumentadata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetEmpDDL]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetEmpDDL]
	

AS
BEGIN
					select Id,no,Ename from tbl_Employee_master 

END
GO
/****** Object:  StoredProcedure [dbo].[getemployeedatano]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetEmployeeListData]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmployeeListData]
	
AS
BEGIN
SELECT        dbo.tbl_Role_Master.Role, dbo.tbl_Employee_master.Ename, dbo.tbl_UserRights_Master.Noseries, dbo.tbl_UserRights_Master.Extra2, tbl_Employee_master_1.Ename AS Report
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_UserRights_Master ON dbo.tbl_Employee_master.no = dbo.tbl_UserRights_Master.EmployeeID INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_UserRights_Master.RoleName = dbo.tbl_Role_Master.id INNER JOIN
                         dbo.tbl_Employee_master AS tbl_Employee_master_1 ON dbo.tbl_UserRights_Master.Extra2 = tbl_Employee_master_1.no
GROUP BY dbo.tbl_Role_Master.Role, dbo.tbl_Employee_master.Ename, dbo.tbl_UserRights_Master.Noseries, dbo.tbl_UserRights_Master.Extra2, tbl_Employee_master_1.Ename

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmpRole]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmpRole]
	@Id varchar(50)

AS
BEGIN
				SELECT        dbo.tbl_Role_Master.id, dbo.tbl_Role_Master.Role, dbo.tbl_Employee_master.no
FROM            dbo.tbl_Role_Master INNER JOIN
                         dbo.tbl_Employee_master ON dbo.tbl_Role_Master.id = dbo.tbl_Employee_master.Erole
WHERE        (dbo.tbl_Employee_master.no = @Id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetFollowDate]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[GetFollowDate]
	@NoSeries varchar(50)
AS
BEGIN
	SELECT        MAX(CONVERT(datetime, CONVERT(varchar, dbo.tbl_Inqiury_Followup.NextFolldate, 103), 103)) AS Expr1, dbo.tbl_Inqiury_Followup.Noseries, dbo.StatusTable.Status, dbo.tbl_Inqiury_Followup.CreateDatetime
FROM            dbo.tbl_Inqiury_Followup INNER JOIN
                         dbo.StatusTable ON dbo.tbl_Inqiury_Followup.FolloStatus = dbo.StatusTable.id
GROUP BY dbo.tbl_Inqiury_Followup.Noseries, dbo.StatusTable.Status, dbo.tbl_Inqiury_Followup.CreateDatetime
HAVING        (dbo.tbl_Inqiury_Followup.Noseries = @NoSeries)
END


GO
/****** Object:  StoredProcedure [dbo].[getFollowupdata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getFollowupDetailsdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetInqbycreated]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetInqbycreated] 
	@createBy varchar(50)
AS
BEGIN
SELECT        dbo.Inqiury_Master.InqiuryNo, dbo.Inqiury_Master.Noseries, dbo.Inqiury_Master.Inquirydate, tbl_Customer_Contact_Master_1.ContactName, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         tbl_Customer_Contact_Master_1.ContactPhone, dbo.tbl_Customer_Master.Name, dbo.Inqiury_Master.ContactEmail, dbo.Inqiury_Master.ContactMno1, dbo.Inqiury_Master.CreateBy
FROM            dbo.Inqiury_Master INNER JOIN
                         dbo.tbl_Customer_Contact_Master AS tbl_Customer_Contact_Master_1 ON dbo.Inqiury_Master.Custcontact = tbl_Customer_Contact_Master_1.Id INNER JOIN
                         dbo.StatusTable ON dbo.Inqiury_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Inqiury_Master.InquirySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Inqiury_Master.Custname = dbo.tbl_Customer_Master.No
WHERE        (dbo.Inqiury_Master.CreateBy = @createBy)
END

GO
/****** Object:  StoredProcedure [dbo].[getInqiuryDetailsdata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
                         dbo.MachineTypeTable.MachineType, dbo.CompressorTypeTable.CompressorType, dbo.Itemaster.no
FROM            dbo.Inqiury_Details INNER JOIN
                         dbo.Itemaster ON dbo.Inqiury_Details.Item = dbo.Itemaster.id INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Inqiury_Details.UOM = dbo.UnitofMeasurementTable.id INNER JOIN
                         dbo.ApplicationTypeTable ON dbo.Inqiury_Details.Inqiuryapplicationtype = dbo.ApplicationTypeTable.id INNER JOIN
                         dbo.MachineTypeTable ON dbo.Inqiury_Details.Inqiurymachinetype = dbo.MachineTypeTable.id INNER JOIN
                         dbo.CompressorTypeTable ON dbo.Inqiury_Details.Inqiurycompressortype = dbo.CompressorTypeTable.id
WHERE        (dbo.Inqiury_Details.Noseries = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[getInqiuryDetailsdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getInqiuryDetailsdatabyid]
	@id int

AS
BEGIN
	SELECT        dbo.Inqiury_Details.Id, dbo.Inqiury_Details.Noseries, dbo.Inqiury_Details.Item, dbo.Inqiury_Details.UOM, dbo.Inqiury_Details.Qty, dbo.Inqiury_Details.Rate, dbo.Inqiury_Details.Amount, 
                         dbo.Inqiury_Details.Inqiuryapplicationtype, dbo.Inqiury_Details.Inqiurymanufacturename, dbo.Inqiury_Details.Inqiuryequipmenttype, dbo.Inqiury_Details.Inqiuryserialno, dbo.Inqiury_Details.Inqiurymanufactureddate, 
                         dbo.Inqiury_Details.Inqiurypowerunitconsuption, dbo.Inqiury_Details.Inqiurycoolingcapacity, dbo.Inqiury_Details.Inqiurymachinetype, dbo.Inqiury_Details.Inqiurycompressortype, 
                         dbo.Inqiury_Details.Inqiurycompressorinonecircuit, dbo.Inqiury_Details.Inqiurynumberofcircuits, dbo.Inqiury_Details.Inqiuryhotgasdischarge, dbo.Inqiury_Details.Inqiurytypeofrefrigerant, 
                         dbo.Inqiury_Details.Inqiuryannualpowerusage, dbo.Inqiury_Details.Inqiuryavergedailyhours, dbo.Inqiury_Details.Inqiurydaysrunperyear, dbo.Inqiury_Details.InqiuryelectricityrateperKWH, 
                         dbo.Inqiury_Details.Inqiurypercentageofoperationperhour, dbo.Inqiury_Details.Inqiuryestimatedistance, dbo.Inqiury_Details.CreateBy, dbo.Inqiury_Details.CreateDatetime, dbo.Inqiury_Details.Extra1, dbo.Inqiury_Details.Extra2, 
                         dbo.Inqiury_Details.Extra3, dbo.Inqiury_Details.Extra4, dbo.Inqiury_Details.Extra5, dbo.Itemaster.Extra1 AS BOMStatus
FROM            dbo.Inqiury_Details INNER JOIN
                         dbo.Itemaster ON dbo.Inqiury_Details.Item = dbo.Itemaster.no
WHERE        (dbo.Inqiury_Details.Id = @id)

END


GO
/****** Object:  StoredProcedure [dbo].[GetInquiryDetails]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetInquiryDetails]
	@QuotationNo bigint
AS
BEGIN
SELECT        dbo.tbl_ItemBOM_Master.ItemNo, dbo.tbl_ItemBOM_Master.SubItemName, dbo.tbl_ItemBOM_Master.SubRate, Itemaster_1.Itemname, dbo.Inqiury_Details.Noseries, dbo.tbl_ItemBOM_Master.Exrta5, 
                         dbo.tbl_ItemBOM_Master.Exrta2
FROM            dbo.Itemaster INNER JOIN
                         dbo.Inqiury_Details ON dbo.Itemaster.id = dbo.Inqiury_Details.Item INNER JOIN
                         dbo.tbl_ItemBOM_Master ON dbo.Itemaster.no = dbo.tbl_ItemBOM_Master.ItemNo INNER JOIN
                         dbo.Itemaster AS Itemaster_1 ON dbo.tbl_ItemBOM_Master.SubItemName = Itemaster_1.id
WHERE        (dbo.Inqiury_Details.Noseries = @QuotationNo)
END


GO
/****** Object:  StoredProcedure [dbo].[getinquiryfilesdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getinquiryfilesdatabyid]
@id int
as
select * from Inquiry_Files where Id=@id


GO
/****** Object:  StoredProcedure [dbo].[getinquiryfilesdatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getinquiryfilesdatabyno]
@id int
as
select * from Inquiry_Files where NoSeries=@id


GO
/****** Object:  StoredProcedure [dbo].[getitemdocumentdata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getitemimagedata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getitemsubgroupdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetLastID]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLastID]
@No int
AS

BEGIN
SELECT        TOP (1) Id
FROM            dbo.tbl_BOM_Master
where ItemNo=@No
ORDER BY Id DESC
END


GO
/****** Object:  StoredProcedure [dbo].[GetListOfSubGroup]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetListOfSubGroup] 
	
AS
BEGIN
SELECT        TOP (100) PERCENT dbo.ItemSubgroupTable.SubgroupName, dbo.ItemSubgroupTable.id, dbo.ItemGroupTable.id AS GroupID, dbo.ItemGroupTable.ItemGroup
FROM            dbo.ItemSubgroupTable INNER JOIN
                         dbo.ItemGroupTable ON dbo.ItemSubgroupTable.itemgroupid = dbo.ItemGroupTable.id
ORDER BY dbo.ItemSubgroupTable.SubgroupName
END


GO
/****** Object:  StoredProcedure [dbo].[GetOrderBOM]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetOrderBOM] 
 
 @QuotationNo varchar(20),
 @ItemNO varchar(20)
As
BEGIN
	SELECT        dbo.tbl_OrderBOM_Master.Id, dbo.tbl_OrderBOM_Master.ItemNo, dbo.tbl_OrderBOM_Master.SubItemName, dbo.tbl_OrderBOM_Master.SubRate, dbo.tbl_OrderBOM_Master.Qty, dbo.tbl_OrderBOM_Master.OrderBOM, 
                         dbo.tbl_OrderBOM_Master.OrderNO, dbo.Itemaster.Itemname, dbo.tbl_BOM_Master.Name
FROM            dbo.tbl_OrderBOM_Master INNER JOIN
                         dbo.tbl_BOM_Master ON dbo.tbl_OrderBOM_Master.OrderBOM = dbo.tbl_BOM_Master.Id INNER JOIN
                         dbo.Itemaster ON dbo.tbl_OrderBOM_Master.SubItemName = dbo.Itemaster.id
GROUP BY dbo.tbl_OrderBOM_Master.Id, dbo.tbl_OrderBOM_Master.ItemNo, dbo.tbl_OrderBOM_Master.SubItemName, dbo.tbl_OrderBOM_Master.SubRate, dbo.tbl_OrderBOM_Master.Qty, dbo.tbl_OrderBOM_Master.OrderBOM, 
                         dbo.tbl_OrderBOM_Master.OrderNO, dbo.Itemaster.Itemname, dbo.tbl_BOM_Master.Name
HAVING        (dbo.tbl_OrderBOM_Master.ItemNo = @ItemNO) AND (dbo.tbl_OrderBOM_Master.OrderNO = @QuotationNo)
END


GO
/****** Object:  StoredProcedure [dbo].[GetOrderCountOfBOM]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetOrderCountOfBOM]
	@id int,
	@ItemID int

AS

BEGIN
	SELECT COUNT(ItemNo) AS CountData FROM tbl_OrderBOM_Master where ItemNo=@ItemID and OrderNO=@id
END


GO
/****** Object:  StoredProcedure [dbo].[GetOrderDetails]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetOrderDetails] 
 
 @QuotationNo varchar(20),
 @ItemNO varchar(20)
As
BEGIN
SELECT        dbo.Order_Details.Qty, dbo.Order_Details.Id, dbo.Itemaster.no, dbo.Order_Details.Discount, dbo.Order_Details.FinalbasePrice, dbo.Order_Details.GST, dbo.Order_Details.ADBenefit, 
                         dbo.Order_Details.NetValue, dbo.Order_Details.TotalValue, dbo.Itemaster.Itemgst
FROM            dbo.tbl_QuotationBOM_Master INNER JOIN
                         dbo.Order_Details ON dbo.tbl_QuotationBOM_Master.QuotationNO = dbo.Order_Details.Qno INNER JOIN
                         dbo.Itemaster ON dbo.Order_Details.Item = dbo.Itemaster.id
WHERE        (dbo.tbl_QuotationBOM_Master.QuotationNO = @QuotationNo)
GROUP BY dbo.Order_Details.Qty, dbo.Order_Details.Id, dbo.Itemaster.no, dbo.Order_Details.Discount, dbo.Order_Details.FinalbasePrice, dbo.Order_Details.GST, dbo.Order_Details.ADBenefit, 
                         dbo.Order_Details.NetValue, dbo.Order_Details.TotalValue, dbo.Itemaster.Itemgst
HAVING        (dbo.Itemaster.no = @ItemNo)
END


GO
/****** Object:  StoredProcedure [dbo].[getOrderDetailsBOMbyid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[getOrderDetailsBOMbyid] 
		@id int

AS
BEGIN
		select * from tbl_OrderBOM_Master where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getOrderDetailsdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getOrderFollowup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getorderFollowupdata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getorderFollowupDetailsdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetOrderTermsAndCondition]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetOrderTermsAndCondition]
	@Noseries bigint
AS
BEGIN
 
SELECT        Qno, TermsId, Termstitle, TermsDescription, Status, Id
FROM            dbo.Ordertandc
WHERE        (Qno = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[GetOrderTermsAndConditionByID]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetOrderTermsAndConditionByID]
	@id bigint
AS
BEGIN
 
SELECT        Qno, TermsId, Termstitle, TermsDescription, Status, Id
FROM            dbo.Ordertandc
WHERE        (Id = @id)
END


GO
/****** Object:  StoredProcedure [dbo].[GetPageList]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetPageList]

AS
BEGIN
    select Id,PageName from tbl_PageMaster  order by PageName
END
GO
/****** Object:  StoredProcedure [dbo].[GetQuotationBOM]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetQuotationBOM] 
 
 @QuotationNo varchar(20),
 @ItemNO varchar(20)
As
BEGIN
	SELECT        dbo.Itemaster.Itemname, dbo.tbl_QuotationBOM_Master.Id, dbo.tbl_QuotationBOM_Master.ItemNo, dbo.tbl_QuotationBOM_Master.SubItemName, dbo.tbl_QuotationBOM_Master.SubRate, dbo.tbl_QuotationBOM_Master.Qty, 
                         dbo.tbl_QuotationBOM_Master.QuotationBOM, dbo.tbl_QuotationBOM_Master.Extra1, dbo.tbl_BOM_Master.Name, dbo.tbl_QuotationBOM_Master.QuotationNO
FROM            dbo.tbl_QuotationBOM_Master INNER JOIN
                         dbo.Itemaster ON dbo.tbl_QuotationBOM_Master.SubItemName = dbo.Itemaster.id INNER JOIN
                         dbo.tbl_BOM_Master ON dbo.tbl_QuotationBOM_Master.QuotationBOM = dbo.tbl_BOM_Master.Id
GROUP BY dbo.Itemaster.Itemname, dbo.tbl_QuotationBOM_Master.Id, dbo.tbl_QuotationBOM_Master.ItemNo, dbo.tbl_QuotationBOM_Master.SubItemName, dbo.tbl_QuotationBOM_Master.SubRate, dbo.tbl_QuotationBOM_Master.Qty, 
                         dbo.tbl_QuotationBOM_Master.QuotationBOM, dbo.tbl_QuotationBOM_Master.Extra1, dbo.tbl_BOM_Master.Name, dbo.tbl_QuotationBOM_Master.QuotationNO
HAVING        (dbo.tbl_QuotationBOM_Master.ItemNo = @ItemNO) AND (dbo.tbl_QuotationBOM_Master.QuotationNO = @QuotationNo)
END


GO
/****** Object:  StoredProcedure [dbo].[getQuotationDetailsBOMbyid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[getQuotationDetailsBOMbyid] 
		@id int

AS
BEGIN
		select * from tbl_QuotationBOM_Master where Id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[getQuotationDetailsdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getQuotationDetailsdatabyid] 
		@id int

AS

BEGIN
	SELECT        dbo.Quotation_Details.Id, dbo.Quotation_Details.Noseries, dbo.Quotation_Details.Item, dbo.Quotation_Details.UOM, dbo.Quotation_Details.Qty, dbo.Quotation_Details.Rate, dbo.Quotation_Details.Amount, 
                         dbo.Quotation_Details.CreateBy, dbo.Quotation_Details.CreateDatetime, dbo.Quotation_Details.Extra1, dbo.Quotation_Details.Extra2, dbo.Quotation_Details.Extra3, dbo.Quotation_Details.Extra4, dbo.Quotation_Details.Extra5, 
                         dbo.Itemaster.ItemHsn, dbo.Quotation_Details.Discount, dbo.Quotation_Details.FinalbasePrice, dbo.Quotation_Details.GST, dbo.Quotation_Details.ADBenefit, dbo.Quotation_Details.NetValue, 
                         dbo.Quotation_Details.TotalValue
FROM            dbo.Quotation_Details INNER JOIN
                         dbo.Itemaster ON dbo.Quotation_Details.Item = dbo.Itemaster.id
WHERE        (dbo.Quotation_Details.Id = @id)
END


GO
/****** Object:  StoredProcedure [dbo].[getquotationetailsdata]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getquotationetailsdata]
		@Noseries bigint

AS
BEGIN
SELECT        dbo.Itemaster.Itemname, dbo.Quotation_Details.Item, dbo.Quotation_Details.UOM, dbo.Quotation_Details.Rate, dbo.Quotation_Details.Qty, dbo.Quotation_Details.Amount, dbo.Quotation_Details.Id, 
                         dbo.Quotation_Details.Noseries, dbo.UnitofMeasurementTable.UnitofMeasurement, dbo.Itemaster.no, dbo.Quotation_Details.Extra2, dbo.Quotation_Details.Extra5, dbo.Quotation_Details.Discount, 
                         dbo.Quotation_Details.FinalbasePrice, dbo.Quotation_Details.GST, dbo.Quotation_Details.ADBenefit, dbo.Quotation_Details.NetValue, dbo.Quotation_Details.TotalValue, dbo.Quotation_Details.Extra4
FROM            dbo.Itemaster INNER JOIN
                         dbo.Quotation_Details ON dbo.Itemaster.id = dbo.Quotation_Details.Item INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Quotation_Details.UOM = dbo.UnitofMeasurementTable.id
WHERE        (dbo.Quotation_Details.Noseries = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[getquotationFollowupdata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getQuotationFollowupDetailsdatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetQuotBOMDetails]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetQuotBOMDetails]
	@QuotationNo bigint
AS
BEGIN
SELECT        ItemNo, SubItemName, SubRate, Qty, QuotationBOM, QuotationNO, Extra1
FROM            dbo.tbl_QuotationBOM_Master
WHERE        (QuotationNO = @QuotationNo)
END


GO
/****** Object:  StoredProcedure [dbo].[GetQuotDetails]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetQuotDetails] 
 
 @QuotationNo varchar(20),
 @ItemNO varchar(20)
As
BEGIN
SELECT        dbo.Quotation_Details.Qty, dbo.Quotation_Details.Id, dbo.Itemaster.no, dbo.Quotation_Details.Discount, dbo.Quotation_Details.FinalbasePrice, dbo.Quotation_Details.GST, dbo.Quotation_Details.ADBenefit, 
                         dbo.Quotation_Details.NetValue, dbo.Quotation_Details.TotalValue, dbo.Itemaster.Itemgst
FROM            dbo.tbl_QuotationBOM_Master INNER JOIN
                         dbo.Quotation_Details ON dbo.tbl_QuotationBOM_Master.QuotationNO = dbo.Quotation_Details.Noseries INNER JOIN
                         dbo.Itemaster ON dbo.Quotation_Details.Item = dbo.Itemaster.id
WHERE        (dbo.tbl_QuotationBOM_Master.QuotationNO = @QuotationNo)
GROUP BY dbo.Quotation_Details.Qty, dbo.Quotation_Details.Id, dbo.Itemaster.no, dbo.Quotation_Details.Discount, dbo.Quotation_Details.FinalbasePrice, dbo.Quotation_Details.GST, dbo.Quotation_Details.ADBenefit, 
                         dbo.Quotation_Details.NetValue, dbo.Quotation_Details.TotalValue, dbo.Itemaster.Itemgst
HAVING        (dbo.Itemaster.no = @ItemNo)
END


GO
/****** Object:  StoredProcedure [dbo].[GetQuotFollowDate]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE  [dbo].[GetQuotFollowDate]
	@NoSeries varchar(50)
AS
BEGIN
	SELECT        MAX(CONVERT(datetime, CONVERT(varchar, dbo.tbl_Quotation_Followup.NextFolldate, 103), 103)) AS Expr1, dbo.tbl_Quotation_Followup.Noseries, dbo.StatusTable.Status, dbo.tbl_Quotation_Followup.CreateDatetime
FROM            dbo.tbl_Quotation_Followup INNER JOIN
                         dbo.StatusTable ON dbo.tbl_Quotation_Followup.FolloStatus = dbo.StatusTable.id
GROUP BY dbo.tbl_Quotation_Followup.Noseries, dbo.StatusTable.Status, dbo.tbl_Quotation_Followup.CreateDatetime
HAVING        (dbo.tbl_Quotation_Followup.Noseries = @NoSeries)
END


GO
/****** Object:  StoredProcedure [dbo].[GetRepotedEmp]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetRepotedEmp]
	
	@Employee varchar(50),
	@RoleName varchar(50)
	
AS
IF(@RoleName='SuperAdmin')
BEGIN
	SELECT no,Ename from tbl_Employee_master
END
IF(@RoleName='Admin')
BEGIN
	SELECT        dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename, dbo.tbl_Role_Master.Role
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_Role_Master ON dbo.tbl_Employee_master.Erole = dbo.tbl_Role_Master.id
WHERE        (dbo.tbl_Role_Master.Role <> 'Admin' AND dbo.tbl_Role_Master.Role <> 'SuperAdmin')
END
IF(@RoleName='SubAdmin')
BEGIN
SELECT        dbo.tbl_UserRights_Master.Extra2, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename
FROM            dbo.tbl_Employee_master INNER JOIN
                         dbo.tbl_UserRights_Master ON dbo.tbl_Employee_master.no = dbo.tbl_UserRights_Master.EmployeeID INNER JOIN
                         dbo.tbl_Employee_master AS tbl_Employee_master_1 ON dbo.tbl_UserRights_Master.Extra2 = tbl_Employee_master_1.no
GROUP BY dbo.tbl_UserRights_Master.Extra2, dbo.tbl_Employee_master.no, dbo.tbl_Employee_master.Ename
HAVING        (dbo.tbl_UserRights_Master.Extra2 = @Employee)
end
IF(@RoleName='Employee')
BEGIN
	SELECT no,Ename from tbl_Employee_master where no=@Employee
END
GO
/****** Object:  StoredProcedure [dbo].[getscitydatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getstatedata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getstatedatabyid]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetSubItemDDL]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetSubItemDDL] 
	
AS
BEGIN
	SELECT        id, Itemname, Extra1, no
FROM            dbo.Itemaster
WHERE        (Extra1 = 'No')
END


GO
/****** Object:  StoredProcedure [dbo].[gettallorderitemdatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[gettallorderitemdatabyno]
			@Noseries varchar(50)

AS
BEGIN
	SELECT        dbo.Itemaster.Itemname, dbo.Order_Details.UOM, dbo.Order_Details.Qty, dbo.Order_Details.Rate, dbo.Order_Details.Amount, dbo.Order_Details.Id, dbo.Order_Details.Qno, dbo.UnitofMeasurementTable.UnitofMeasurement, 
                         dbo.Order_Details.Item, dbo.Itemaster.no, dbo.Order_Details.Discount, dbo.Order_Details.FinalbasePrice, dbo.Order_Details.Extra5, dbo.Order_Details.GST, dbo.Order_Details.ADBenefit, dbo.Order_Details.NetValue, 
                         dbo.Order_Details.TotalValue
FROM            dbo.Order_Details INNER JOIN
                         dbo.Itemaster ON dbo.Order_Details.Item = dbo.Itemaster.id INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Order_Details.UOM = dbo.UnitofMeasurementTable.id
WHERE        (dbo.Order_Details.Qno = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[gettallQuotationsInquirydatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[gettallQuotationsitemdatabyno]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetUOMbyItemID]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetUOMbyItemID]
	 @ItemID int
	AS
BEGIN
		SELECT        dbo.UnitofMeasurementTable.UnitofMeasurement, dbo.UnitofMeasurementTable.id, dbo.Itemaster.id AS ItemID
FROM            dbo.Itemaster INNER JOIN
                         dbo.UnitofMeasurementTable ON dbo.Itemaster.ItemUOM = dbo.UnitofMeasurementTable.id
WHERE        (dbo.Itemaster.id = @ItemID)

END


GO
/****** Object:  StoredProcedure [dbo].[GetUserPermissionByEmpno]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[GetUserPermissionByEmpno]
@Id varchar(50)
AS
BEGIN
SELECT        PageName, RecordID, RoleName, EditStatus, CreateStatus, Noseries, DeleteStatus, ViewStatus, ViewallStatus, EmailStatus, PrintStatus, EmployeeID
FROM            dbo.tbl_UserRights_Master
WHERE        (Noseries = @Id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserPermissionByno]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetUserPermissionByno]
@Id varchar(50)
AS
BEGIN
SELECT        PageName, RecordID, RoleName, EditStatus, CreateStatus, Noseries, DeleteStatus, ViewStatus, ViewallStatus, EmailStatus, PrintStatus, EmployeeID, Extra2
FROM            dbo.tbl_UserRights_Master
WHERE        (Noseries = @Id)
END
GO
/****** Object:  StoredProcedure [dbo].[indutrynamedisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[InqFilterforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[InqFilterforadmin] 
	@FromDate varchar(50),
@ToDate varchar(50),
@Cust varchar(50)

AS
IF(@Cust!='0')
BEGIN

SELECT        dbo.Inqiury_Master.InqiuryNo, dbo.Inqiury_Master.Noseries, dbo.Inqiury_Master.Inquirydate, tbl_Customer_Contact_Master_1.ContactName, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         tbl_Customer_Contact_Master_1.ContactPhone, dbo.tbl_Customer_Master.Name, dbo.Inqiury_Master.ContactEmail, dbo.Inqiury_Master.ContactMno1
FROM            dbo.Inqiury_Master INNER JOIN
                         dbo.tbl_Customer_Contact_Master AS tbl_Customer_Contact_Master_1 ON dbo.Inqiury_Master.Custcontact = tbl_Customer_Contact_Master_1.Id INNER JOIN
                         dbo.StatusTable ON dbo.Inqiury_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Inqiury_Master.InquirySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Inqiury_Master.Custname = dbo.tbl_Customer_Master.No
						  WHERE        (CONVERT(datetime, CONVERT(varchar, Inquirydate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103))  
                 
						
END
else
BEGIN

SELECT        dbo.Inqiury_Master.InqiuryNo, dbo.Inqiury_Master.Noseries, dbo.Inqiury_Master.Inquirydate, tbl_Customer_Contact_Master_1.ContactName, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         tbl_Customer_Contact_Master_1.ContactPhone, dbo.tbl_Customer_Master.Name, dbo.Inqiury_Master.ContactEmail, dbo.Inqiury_Master.ContactMno1
FROM            dbo.Inqiury_Master INNER JOIN
                         dbo.tbl_Customer_Contact_Master AS tbl_Customer_Contact_Master_1 ON dbo.Inqiury_Master.Custcontact = tbl_Customer_Contact_Master_1.Id INNER JOIN
                         dbo.StatusTable ON dbo.Inqiury_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Inqiury_Master.InquirySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Inqiury_Master.Custname = dbo.tbl_Customer_Master.No
						  WHERE        (CONVERT(datetime, CONVERT(varchar, Inquirydate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103)) AND 
                         (Custname = @Cust) 
END
GO
/****** Object:  StoredProcedure [dbo].[InqFilterforEmp]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InqFilterforEmp] 
	@FromDate varchar(50),
@ToDate varchar(50),
@Cust varchar(50),
@Emp varchar(50)

AS
IF(@Cust!='0' and @Emp='0')
BEGIN

SELECT        dbo.Inqiury_Master.InqiuryNo, dbo.Inqiury_Master.Noseries, dbo.Inqiury_Master.Inquirydate, tbl_Customer_Contact_Master_1.ContactName, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         tbl_Customer_Contact_Master_1.ContactPhone, dbo.tbl_Customer_Master.Name, dbo.Inqiury_Master.ContactEmail, dbo.Inqiury_Master.ContactMno1
FROM            dbo.Inqiury_Master INNER JOIN
                         dbo.tbl_Customer_Contact_Master AS tbl_Customer_Contact_Master_1 ON dbo.Inqiury_Master.Custcontact = tbl_Customer_Contact_Master_1.Id INNER JOIN
                         dbo.StatusTable ON dbo.Inqiury_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Inqiury_Master.InquirySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Inqiury_Master.Custname = dbo.tbl_Customer_Master.No
						  WHERE        (CONVERT(datetime, CONVERT(varchar, Inquirydate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103))  
						  and (Custname = @Cust)
                 
						
END
IF(@Cust='0' and @Emp!='0')
BEGIN

SELECT        dbo.Inqiury_Master.InqiuryNo, dbo.Inqiury_Master.Noseries, dbo.Inqiury_Master.Inquirydate, tbl_Customer_Contact_Master_1.ContactName, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         tbl_Customer_Contact_Master_1.ContactPhone, dbo.tbl_Customer_Master.Name, dbo.Inqiury_Master.ContactEmail, dbo.Inqiury_Master.ContactMno1
FROM            dbo.Inqiury_Master INNER JOIN
                         dbo.tbl_Customer_Contact_Master AS tbl_Customer_Contact_Master_1 ON dbo.Inqiury_Master.Custcontact = tbl_Customer_Contact_Master_1.Id INNER JOIN
                         dbo.StatusTable ON dbo.Inqiury_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Inqiury_Master.InquirySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Inqiury_Master.Custname = dbo.tbl_Customer_Master.No
						  WHERE        (CONVERT(datetime, CONVERT(varchar, Inquirydate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103)) 
                          and Inqiury_Master.CreateBy=@Emp
END
IF(@Cust!='0' and @Emp!='0')
BEGIN

SELECT        dbo.Inqiury_Master.InqiuryNo, dbo.Inqiury_Master.Noseries, dbo.Inqiury_Master.Inquirydate, tbl_Customer_Contact_Master_1.ContactName, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         tbl_Customer_Contact_Master_1.ContactPhone, dbo.tbl_Customer_Master.Name, dbo.Inqiury_Master.ContactEmail, dbo.Inqiury_Master.ContactMno1
FROM            dbo.Inqiury_Master INNER JOIN
                         dbo.tbl_Customer_Contact_Master AS tbl_Customer_Contact_Master_1 ON dbo.Inqiury_Master.Custcontact = tbl_Customer_Contact_Master_1.Id INNER JOIN
                         dbo.StatusTable ON dbo.Inqiury_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Inqiury_Master.InquirySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Inqiury_Master.Custname = dbo.tbl_Customer_Master.No
						  WHERE        (CONVERT(datetime, CONVERT(varchar, Inquirydate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103)) AND 
                         (Custname = @Cust) and Inqiury_Master.CreateBy=@Emp
END
IF(@Cust='0' and @Emp='0')
BEGIN

SELECT        dbo.Inqiury_Master.InqiuryNo, dbo.Inqiury_Master.Noseries, dbo.Inqiury_Master.Inquirydate, tbl_Customer_Contact_Master_1.ContactName, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         tbl_Customer_Contact_Master_1.ContactPhone, dbo.tbl_Customer_Master.Name, dbo.Inqiury_Master.ContactEmail, dbo.Inqiury_Master.ContactMno1
FROM            dbo.Inqiury_Master INNER JOIN
                         dbo.tbl_Customer_Contact_Master AS tbl_Customer_Contact_Master_1 ON dbo.Inqiury_Master.Custcontact = tbl_Customer_Contact_Master_1.Id INNER JOIN
                         dbo.StatusTable ON dbo.Inqiury_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Inqiury_Master.InquirySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Inqiury_Master.Custname = dbo.tbl_Customer_Master.No
						  WHERE        (CONVERT(datetime, CONVERT(varchar, Inquirydate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103))  
						 
                 
						
END

GO
/****** Object:  StoredProcedure [dbo].[insert_order_tandc]    Script Date: 17/03/2021 01:27:41 PM ******/
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
IF EXISTS(SELECT Qno,TermsId,Termstitle FROM Ordertandc WHERE Qno = @termsid and TermsId=@Noseries and Termstitle=@termstitle)
BEGIN
return -1
End
Else
BEGIN
			INSERT	INTO Ordertandc values (@termsid,@Noseries,@termstitle,@termsdescription,@status,@Createby,@Createdatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5) 

END


GO
/****** Object:  StoredProcedure [dbo].[insert_quotations_tandc]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_RoleRight]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[Insert_RoleRight] 
	
	
@Page varchar(50),
@Create varchar(50),
@View varchar(50),
@ViewAll varchar(50),
@edit varchar(50),
@delete varchar(50),
@print varchar(50),
@mail varchar(50),
@Role varchar(50),
@Createby varchar(50),
@Createdatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3 varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
BEGIN
		INSERT	INTO tbl_RoleRights_Master values (@Page,@Role,@Create,@edit,'',@delete,@View,@ViewAll,@mail,@print,@Createby,@Createdatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5,'','','','','') 

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_UserRights]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Insert_UserRights] 
	
@NoSeries varchar(50),
@Page varchar(50),
@Create varchar(50),
@View varchar(50),
@ViewAll varchar(50),
@edit varchar(50),
@delete varchar(50),
@print varchar(50),
@mail varchar(50),
@Role varchar(50),
@Createby varchar(50),
@Createdatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3 varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT EmployeeID,PageName FROM tbl_UserRights_Master WHERE EmployeeID=@Extra1 and  PageName = @Page)
BEGIN
return '-1'
End
ELSE
BEGIN
		INSERT	INTO tbl_UserRights_Master values (@Page,@Role,@Create,@edit,@NoSeries,@delete,@View,@ViewAll,@mail,@print,@Createby,@Createdatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5,'','','','','') 

END
GO
/****** Object:  StoredProcedure [dbo].[insertapplicationtype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertbusinesstype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertcity]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertcompressortype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertcountry]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertcoverletter]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertcoverletter]
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
	   INSERT INTO CoverLetter_Master values (@Title,@Termsandconditions,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
END
GO
/****** Object:  StoredProcedure [dbo].[insertdepartment]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertdesignation]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertfollowuptype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertindustryname1]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertinquiryfiles]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertitemgroup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertitemsubgroup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertmachinetype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertrole]    Script Date: 17/03/2021 01:27:41 PM ******/
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
	         INSERT INTO tbl_Role_Master values (@Role,@Createby,@CreateDateTime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[insertsource]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertstate]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertstatus]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[inserttermsandconditions]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertunitofmeasurement]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[itemgroupdisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[logindata]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[machinetypedisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[OrderFilterforadmin]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[OrderFilterforadmin]
	@FromDate varchar(50),
@ToDate varchar(50),
@Cust varchar(50),
@Emp varchar(50)
AS
IF(@Cust!='0' and @Emp='0')
BEGIN
SELECT        dbo.Order_Master.OrderNo, dbo.Order_Master.OrderDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Order_Master.ContactEmail, dbo.Order_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         dbo.tbl_Customer_Master.Name, dbo.DesignationTable.Designation, dbo.DepartmentTable.Department, dbo.Order_Master.NoSeries, dbo.Order_Master.QuotationNo
FROM            dbo.Order_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Order_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Order_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id INNER JOIN
                         dbo.DepartmentTable ON dbo.Order_Master.Dept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.Order_Master.Design = dbo.DesignationTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Order_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.StatusTable ON dbo.Order_Master.InqiuryStatus = dbo.StatusTable.id
						   WHERE        (CONVERT(datetime, CONVERT(varchar, OrderDate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103))  
						  and (Custname = @Cust)
END
IF(@Cust='0' and @Emp!='0')
BEGIN
SELECT        dbo.Order_Master.OrderNo, dbo.Order_Master.OrderDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Order_Master.ContactEmail, dbo.Order_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         dbo.tbl_Customer_Master.Name, dbo.DesignationTable.Designation, dbo.DepartmentTable.Department, dbo.Order_Master.NoSeries, dbo.Order_Master.QuotationNo
FROM            dbo.Order_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Order_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Order_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id INNER JOIN
                         dbo.DepartmentTable ON dbo.Order_Master.Dept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.Order_Master.Design = dbo.DesignationTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Order_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.StatusTable ON dbo.Order_Master.InqiuryStatus = dbo.StatusTable.id
						   WHERE        (CONVERT(datetime, CONVERT(varchar, OrderDate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103))  
						  and (dbo.Order_Master.CreateBy = @Emp)
END
IF(@Cust!='0' and @Emp!='0')
BEGIN
SELECT        dbo.Order_Master.OrderNo, dbo.Order_Master.OrderDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Order_Master.ContactEmail, dbo.Order_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         dbo.tbl_Customer_Master.Name, dbo.DesignationTable.Designation, dbo.DepartmentTable.Department, dbo.Order_Master.NoSeries, dbo.Order_Master.QuotationNo
FROM            dbo.Order_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Order_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Order_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id INNER JOIN
                         dbo.DepartmentTable ON dbo.Order_Master.Dept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.Order_Master.Design = dbo.DesignationTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Order_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.StatusTable ON dbo.Order_Master.InqiuryStatus = dbo.StatusTable.id
						   WHERE        (CONVERT(datetime, CONVERT(varchar, OrderDate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103))  
						  and (Custname = @Cust) and (dbo.Order_Master.CreateBy = @Emp)
END
IF(@Cust='0' and @Emp='0')
BEGIN
SELECT        dbo.Order_Master.OrderNo, dbo.Order_Master.OrderDate, dbo.tbl_Customer_Contact_Master.ContactName, dbo.Order_Master.ContactEmail, dbo.Order_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, 
                         dbo.tbl_Customer_Master.Name, dbo.DesignationTable.Designation, dbo.DepartmentTable.Department, dbo.Order_Master.NoSeries, dbo.Order_Master.QuotationNo
FROM            dbo.Order_Master INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Order_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Order_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id INNER JOIN
                         dbo.DepartmentTable ON dbo.Order_Master.Dept = dbo.DepartmentTable.id INNER JOIN
                         dbo.DesignationTable ON dbo.Order_Master.Design = dbo.DesignationTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Order_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.StatusTable ON dbo.Order_Master.InqiuryStatus = dbo.StatusTable.id
						   WHERE        (CONVERT(datetime, CONVERT(varchar, OrderDate, 103), 103) BETWEEN CONVERT(datetime, CONVERT(varchar, @FromDate, 103), 103) AND CONVERT(datetime, CONVERT(varchar, @ToDate, 103), 103))  
						 
END

GO
/****** Object:  StoredProcedure [dbo].[ordertermsandconditionsdisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[QuotationByQuotNo]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QuotationByQuotNo] 
		@Noseries varchar(50)

AS
BEGIN
	SELECT        Custname, QuotationDate, NoSeries, QuotationNo, Custcontact, Custcontactno, Dept, Design, ContactEmail, ContactMno1, ContactMno2, CoverLetter, TotalCost, Discount, Benifit, FinalPrice, GST, FinalPriceGST, InqiuryStatus, 
                         InqiurySource, InquiryNo, Id, Remarks, Extra1, Extra2
FROM            dbo.Quotation_Master
WHERE        (NoSeries = @Noseries)
END


GO
/****** Object:  StoredProcedure [dbo].[quotationtermsandconditions]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[quotationtermsandconditions]
	@Noseries bigint
AS
BEGIN
 
SELECT        Id, Noseries, Termstitle, TermsId, TermsDescription, Status
FROM            dbo.Quotationstandc
WHERE        (Noseries = @Noseries) 
END


GO
/****** Object:  StoredProcedure [dbo].[quotationtermsandconditionsdisp]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[quotationtermsandconditionsdisp]
	@Noseries bigint
AS
BEGIN
 
SELECT        Id, Noseries, Termstitle, TermsId, TermsDescription, Status
FROM            dbo.Quotationstandc
WHERE        (Noseries = @Noseries) AND (Status = 'True')
END


GO
/****** Object:  StoredProcedure [dbo].[QuotTermsAndConditionByID]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[QuotTermsAndConditionByID]
	@id bigint
AS
BEGIN
 
SELECT        Noseries, Id, TermsId, Termstitle, TermsDescription, Status
FROM            dbo.Quotationstandc
WHERE        (Id = @id)
END


GO
/****** Object:  StoredProcedure [dbo].[roledisp]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[roledisp] 
	
AS
BEGIN
	 select id,Role from tbl_Role_Master order by Role
END


GO
/****** Object:  StoredProcedure [dbo].[showapplicationtype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showbusinesstype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showcompressortype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showcountry]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showcoverletter]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showcoverletter]
		@id int
AS
BEGIN
	 select * from CoverLetter_Master where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[showdepartment]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showdesignation]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showfollowuptable]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showindustryname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showitemgroup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showmachinetype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showrole]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[showrole] 
	@id int
AS
BEGIN
	    select * from tbl_Role_Master where id=@id

END


GO
/****** Object:  StoredProcedure [dbo].[showsource]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showstatus]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showtermsandconditions]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[showunitofmeasurement]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SiteErrorDelete]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SiteErrorInsert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SiteErrorSelectAll]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sourcedisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_employeefilter]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_inquiryfilter]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_quotationfilter]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_quotationfilter]
	@custno int,
	@startdate varchar(50),
	@enddate varchar(50),
	@Emp varchar(50)
AS
IF(@custno!='0' and @Emp='0')
BEGIN
	SELECT        dbo.Quotation_Master.QuotationNo, dbo.Quotation_Master.NoSeries, dbo.Quotation_Master.QuotationDate, dbo.tbl_Customer_Contact_Master.ContactName, 
                         dbo.Quotation_Master.ContactEmail, dbo.Quotation_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, dbo.tbl_Customer_Master.Name
FROM            dbo.Quotation_Master INNER JOIN
                         dbo.StatusTable ON dbo.Quotation_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Quotation_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Quotation_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Quotation_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id
WHERE        (dbo.tbl_Customer_Master.No = @custno) AND (dbo.Quotation_Master.QuotationDate BETWEEN @startdate AND @enddate)
END
IF(@custno='0' and @Emp!='0')
BEGIN
	SELECT        dbo.Quotation_Master.QuotationNo, dbo.Quotation_Master.NoSeries, dbo.Quotation_Master.QuotationDate, dbo.tbl_Customer_Contact_Master.ContactName, 
                         dbo.Quotation_Master.ContactEmail, dbo.Quotation_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, dbo.tbl_Customer_Master.Name
FROM            dbo.Quotation_Master INNER JOIN
                         dbo.StatusTable ON dbo.Quotation_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Quotation_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Quotation_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Quotation_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id
WHERE        (dbo.Quotation_Master.CreateBy = @Emp) AND (dbo.Quotation_Master.QuotationDate BETWEEN @startdate AND @enddate)
END
IF(@custno!='0' and @Emp!='0')
BEGIN
	SELECT        dbo.Quotation_Master.QuotationNo, dbo.Quotation_Master.NoSeries, dbo.Quotation_Master.QuotationDate, dbo.tbl_Customer_Contact_Master.ContactName, 
                         dbo.Quotation_Master.ContactEmail, dbo.Quotation_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, dbo.tbl_Customer_Master.Name
FROM            dbo.Quotation_Master INNER JOIN
                         dbo.StatusTable ON dbo.Quotation_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Quotation_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Quotation_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Quotation_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id
WHERE        (dbo.tbl_Customer_Master.No = @custno)And (dbo.Quotation_Master.CreateBy = @Emp) AND (dbo.Quotation_Master.QuotationDate BETWEEN @startdate AND @enddate)
END
IF(@custno='0' and @Emp='0')
BEGIN
	SELECT        dbo.Quotation_Master.QuotationNo, dbo.Quotation_Master.NoSeries, dbo.Quotation_Master.QuotationDate, dbo.tbl_Customer_Contact_Master.ContactName, 
                         dbo.Quotation_Master.ContactEmail, dbo.Quotation_Master.ContactMno1, dbo.StatusTable.Status, dbo.SourceTable.Source, dbo.tbl_Customer_Master.Name
FROM            dbo.Quotation_Master INNER JOIN
                         dbo.StatusTable ON dbo.Quotation_Master.InqiuryStatus = dbo.StatusTable.id INNER JOIN
                         dbo.SourceTable ON dbo.Quotation_Master.InqiurySource = dbo.SourceTable.id INNER JOIN
                         dbo.tbl_Customer_Master ON dbo.Quotation_Master.Custname = dbo.tbl_Customer_Master.No INNER JOIN
                         dbo.tbl_Customer_Contact_Master ON dbo.Quotation_Master.Custcontact = dbo.tbl_Customer_Contact_Master.Id
WHERE        (dbo.Quotation_Master.QuotationDate BETWEEN @startdate AND @enddate)
END
GO
/****** Object:  StoredProcedure [dbo].[statusdisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_BOM_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_BOM_Master_Insert]
@No bigint,
@SubItemName varchar(250),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT ItemNo FROM tbl_BOM_Master WHERE  ItemNo=@No )
BEGIN
return -1
End
Else
BEGIN

	insert into tbl_BOM_Master values(@No,@Extra1,@CreateBy,@CreateDatetime,'','','')
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Company_Contact_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Company_Contact_Master_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Company_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Company_Master_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Company_NoSeries_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Contact_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Contact_Master_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
IF EXISTS(SELECT ContactName,ContactEmail FROM tbl_Customer_Contact_Master WHERE ContactName=@ContactName and ContactEmail=@ContactEmail and Custno=@Extra5 and Id!=@Id)
BEGIN
return -1
End
Else
BEGIN
		update tbl_Customer_Contact_Master set ContactName=@ContactName,ContactEmail=@ContactEmail,ContactPhone=@ContactPhone
	,ContactMobileno1=@ContactMobileno1,ContactMobileno2=@ContactMobileno2,Dept=@Dept,Design=@Design, 
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4 where Id=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Master_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Customer_Noseries_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Employee_Document_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Employee_master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Employee_master_Update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
IF EXISTS(SELECT Ename,Eemailid FROM tbl_Employee_master WHERE Ename = @Ename and Eemailid=@Eemailid and no!=@no)
BEGIN
return -1
End
Else
BEGIN
	update tbl_Employee_master set Ename=@Ename,Efname=@Efname,Esurname=@Esurname,Egender=@Egender,Epaddress=@Epaddress,Eperaddress=@Eperaddress,
	ECity=@ECity,EState=@EState,EDistrict=@EDistrict,ECountry=@ECountry,EPincode=@EPincode,EPhoneNo=@EPhoneNo,
	Emobilenop=@Emobilenop,Emobileoffice=@Emobileoffice,Emobilewhatsup=@Emobilewhatsup,Erole=@Erole,Epfno=@Epfno,Edoa=@Edoa,Edoj=@Edoj,
	Edol=@Edol,Edept=@Edept,Edesign=@Edesign,Eemailid=@Eemailid,Epwd=@Epwd,Eurgentcontactname=@Eurgentcontactname,Eurgentcontactno=@Eurgentcontactno,
	Eurgentcontactrelation=@Eurgentcontactrelation,Estatus=@Estatus,Ebankname=@Ebankname,Eaccno=@Eaccno,Eifsccode=@Eifsccode, 
	CreateBy=@CreateBy,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5 where no=@no
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Employee_NoSeries_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Details_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Details_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
IF EXISTS(SELECT Item,Noseries,Id FROM Inqiury_Details WHERE Item=@Item and Noseries=@Extra4 and Id!=@Id)
BEGIN
return -1
End
Else
BEGIN
	update Inqiury_Details set Item=@Item,UOM=@UOM,Qty=@Qty,Rate=@Rate,Amount=@Amount,Inqiuryapplicationtype=@Inqiuryapplicationtype,Inqiurymanufacturename=@Inqiurymanufacturename,
	Inqiuryequipmenttype=@Inqiuryequipmenttype,Inqiurymanufactureddate=@Inqiurymanufactureddate,Inqiuryserialno=@Inqiuryserialno,
	Inqiurypowerunitconsuption=@Inqiurypowerunitconsuption,Inqiurycoolingcapacity=@Inqiurycoolingcapacity,Inqiurymachinetype=@Inqiurymachinetype,
	Inqiurycompressortype=@Inqiurycompressortype,Inqiurycompressorinonecircuit=@Inqiurycompressorinonecircuit,Inqiurynumberofcircuits=@Inqiurynumberofcircuits,
	Inqiuryhotgasdischarge=@Inqiuryhotgasdischarge,Inqiurytypeofrefrigerant=@Inqiurytypeofrefrigerant,Inqiuryannualpowerusage=@Inqiuryannualpowerusage,
	Inqiuryavergedailyhours=@Inqiuryavergedailyhours,Inqiurydaysrunperyear=@Inqiurydaysrunperyear,InqiuryelectricityrateperKWH=@InqiuryelectricityrateperKWH,
	Inqiurypercentageofoperationperhour=@Inqiurypercentageofoperationperhour,Inqiuryestimatedistance=@Inqiuryestimatedistance,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra5=@Extra5 where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Followup_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Followup_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
IF EXISTS(SELECT NextFolldate,Follotype,Noseries FROM tbl_Inqiury_Followup WHERE NextFolldate=@NextFolldate and Follotype=@Follotype and Noseries=@Noseries and Id!=@Id)
BEGIN
return -1
End
Else
BEGIN
	update tbl_Inqiury_Followup set NextFolldate=@NextFolldate,Follotype=@Follotype
	,FolloStatus=@FolloStatus,Remarks=@Remarks,Comdate=@Comdate,Comremarks=@Comremarks,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5 where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Inqiury_Master_Update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
IF EXISTS(SELECT Inquirydate,Custname,InqiuryNo FROM Inqiury_Master WHERE Inquirydate=@Inquirydate and Custname=@Custname and InqiuryNo!=@InqiuryNo)
BEGIN
return -1
End
Else
BEGIN
	update Inqiury_Master set Noseries=@Noseries,Inquirydate=@Inquirydate,Custname=@Custname,
	Custcontact=@Custcontact,Custcontactno=@Custcontactno,Dept=@Dept,Design=@Design,
	ContactEmail=@ContactEmail,ContactMno1=@ContactMno1,ContactMno2=@ContactMno2,InqiuryStatus=@InqiuryStatus,InquirySource=@InquirySource,Remarks=@Remarks,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5
	where InqiuryNo=@InqiuryNo
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Inquiry_No_Series_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Item_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Item_Master_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
IF EXISTS(SELECT Itemname FROM Itemaster WHERE Itemname = @Itemname and no!=@no)
BEGIN
return -1
End
Else
BEGIN
	update Itemaster set itemgroup=@itemgroup,itemsubgroup=@itemsubgroup,Modelno=@Modelno,Itemname=@Itemname,
	ItemFinalname=@ItemFinalname,Itemalis=@Itemalis,Itemcategoryno=@Itemcategoryno,ItemUOM=@ItemUOM,Itemrate=@Itemrate,
	Itemgst=@Itemgst,ItemHsn=@ItemHsn,ItemDesc=@ItemDesc,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,@Extra1=@Extra1,
	Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5
	where no=@no
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Item_NoSeries_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_ItemBOM_update]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_ItemBOM_update] 
@id int,
@No bigint,
@SubItemName varchar(250),
@Itemrate decimal(18,2),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT SubItemName,ItemNo FROM tbl_ItemBOM_Master WHERE SubItemName = @SubItemName and ItemNo=@No and Exrta1=@Extra1 and id!=@id)
BEGIN
return -1
End
else if EXISTS(SELECT Name,ItemNo FROM tbl_BOM_Master WHERE Name = @Extra1 and ItemNo=@No and Id!=@Extra5)
BEGIN
return -1
End
Else
BEGIN
update tbl_BOM_Master set Name=@Extra1 
where ItemNo=@No and Id=@Extra5
	update tbl_ItemBOM_Master set SubItemName=@SubItemName,SubRate=@Itemrate,	
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Exrta1=@Extra1,Exrta2=@Extra2,Exrta3=@Extra3,
	 Exrta4=@Extra4,Exrta5=@Extra5 where id=@id and ItemNo=@No
END

GO
/****** Object:  StoredProcedure [dbo].[tbl_ItemDocument_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_ItemImage_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Order_BOM_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[tbl_Order_BOM_Insert]
@Quotationno int,
@ItemNo int,
@SubItemNo int,
@SubQty int,
@SubRate decimal(18,2),
@BOM int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT OrderNO,ItemNo,SubItemName,OrderBOM,Extra1 FROM tbl_OrderBOM_Master WHERE OrderNO=@Quotationno and ItemNo=@ItemNo and SubItemName=@SubItemNo and OrderBOM=@BOM and Extra1=@Extra1)
BEGIN
return -1
End
Else
BEGIN
		insert into tbl_OrderBOM_Master values (@ItemNo,@SubItemNo,@SubRate,@SubQty,@BOM,@Quotationno,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5,'','','','','')

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_BOM_update]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[tbl_Order_BOM_update]
@id int,
@Qty varchar(50),
@Rate decimal(18,2),
@CreateBy varchar(50),
@CreateDatetime datetime

AS
BEGIN
update tbl_OrderBOM_Master set Qty=@Qty,SubRate=@Rate,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Details_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
@Extra5 varchar(50),
@Discount decimal(18,2),
@FinalbasePrice decimal(18,2),
@GST decimal(18,2),
@ADBenefit decimal(18,2),
@NetValue decimal(18,2),
@TotalValue decimal(18,2)
AS
BEGIN
			insert into Order_Details values (@Noseries,@Item,@UOM,@Qty,@Rate,@Amount,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5,
		@Discount,@FinalbasePrice,@GST,@ADBenefit,@NetValue,@TotalValue,'','','','','')

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Details_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
@Extra5 varchar(50),
@Discount decimal(18,2),
@FinalbasePrice decimal(18,2),
@GST decimal(18,2),
@ADBenefit decimal(18,2),
@NetValue decimal(18,2),
@TotalValue decimal(18,2)
AS
IF EXISTS(SELECT Item FROM Order_Details WHERE Item = @Item and Qno=@Extra1 and Id!=@id)
BEGIN
return -1
End
Else
BEGIN
update Order_Details set Item=@Item,UOM=@UOM,Qty=@Qty,Rate=@Rate,Amount=@Amount,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5,Discount=@Discount,FinalbasePrice=@FinalbasePrice,GST=@GST,ADBenefit=@ADBenefit,
	 NetValue=@NetValue,TotalValue=@TotalValue where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Followup_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Order_Followup_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Order_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
@CoverLetter int,
@TotalCost decimal(18,2),
@Discount decimal(18,2),
@Benifit decimal(18,2),
@FinalPrice decimal(18,2),
@GST decimal(18,2),
@FinalPriceGST decimal(18,2),
@InqiuryStatus int,
@InquirySource int,
@InquiryNo int,
@Remarks varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT Custname,OrderDate,QuotationNo FROM Order_Master WHERE OrderDate = @Inquirydate and QuotationNo=@InquiryNo and Custname=@Custname)
BEGIN
return -1
End
Else
BEGIN
	insert into Order_Master values  (@InqiuryNo,@Noseries,@Inquirydate,@Custname,@Custcontact,@Custcontactno,@Dept,@Design,
	@ContactEmail,@ContactMno1,@ContactMno2,@TotalCost,@Discount,@Benifit,@FinalPrice,@GST,@FinalPriceGST,
	@InqiuryStatus,@InquirySource,@InquiryNo,@Remarks,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
	
	END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_Master_update]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Order_Master_update]
	
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
@CoverLetter int,
@TotalCost decimal(18,2),
@Discount decimal(18,2),
@Benifit decimal(18,2),
@FinalPrice decimal(18,2),
@GST decimal(18,2),
@FinalPriceGST decimal(18,2),
@InqiuryStatus int,
@InquirySource int,
@InquiryNo int,
@Remarks varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT Custname, QuotationNo FROM dbo.Order_Master WHERE Custname = @Custname AND QuotationNo = @InqiuryNo and NoSeries!=@Noseries)
BEGIN
return -1
End
Else
BEGIN
		update  Order_Master set  Custname=@Custname,Custcontact=@Custcontact,Custcontactno=@Custcontactno,Dept=@Dept,Design=@Design,
	ContactEmail=@ContactEmail,ContactMno1=@ContactMno1,ContactMno2=@ContactMno2,TotalCost=@TotalCost,Discount=@Discount,
	Benifit=@Benifit,FinalPrice=@FinalPrice,GST=@GST,FinalPriceGST=@FinalPriceGST,QuotationNo=@InqiuryNo,InqiuryStatus=@InqiuryStatus,InqiurySource=@InquirySource,Remarks=@Remarks,CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5
	where NoSeries=@Noseries

	
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Order_No_Series_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_OrderBOM_update]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[tbl_OrderBOM_update] 
@id int,
@No bigint,
@Itemrate decimal(18,2),
@CreateBy varchar(50),
@Amount decimal(18,2),
@Discount decimal(18,2),
@QuotId int,
@ItemFinal decimal(18,2),
@txtItemBenefit decimal(18,2),
@txtItemNetValue decimal(18,2),
@txtItemTotalValue decimal(18,2),
@txtItemGSTTotal decimal(18,2)

AS

BEGIN

	update Order_Details set 	Amount=@Amount,CreateBy=@CreateBy,Rate=@Itemrate,FinalbasePrice=@ItemFinal,ADBenefit=@txtItemBenefit,
	NetValue=@txtItemNetValue,TotalValue=@txtItemTotalValue,GST=@txtItemGSTTotal
	  where Id=@QuotId
END

GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_BOM_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Quotation_BOM_Insert]
@Quotationno int,
@ItemNo int,
@SubItemNo int,
@SubQty int,
@SubRate decimal(18,2),
@BOM int,
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT QuotationNO,ItemNo,SubItemName,QuotationBOM,Extra1 FROM tbl_QuotationBOM_Master WHERE QuotationNO=@Quotationno and ItemNo=@ItemNo and SubItemName=@SubItemNo and QuotationBOM=@BOM and Extra1=@Extra1)
BEGIN
return -1
End
Else
BEGIN
		insert into tbl_QuotationBOM_Master values (@ItemNo,@SubItemNo,@SubRate,@SubQty,@BOM,@Quotationno,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_BOM_update]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Quotation_BOM_update]
@id int,
@Qty varchar(50),
@Rate decimal(18,2),
@CreateBy varchar(50),
@CreateDatetime datetime

AS
BEGIN
update tbl_QuotationBOM_Master set Qty=@Qty,SubRate=@Rate,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Details_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
@Extra5 varchar(50),
@Discount decimal(18,2),
@FinalbasePrice decimal(18,2),
@GST decimal(18,2),
@ADBenefit decimal(18,2),
@NetValue decimal(18,2),
@TotalValue decimal(18,2)
AS
BEGIN
		insert into Quotation_Details values (@Noseries,@Item,@UOM,@Qty,@Rate,@Amount,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5,
		@Discount,@FinalbasePrice,@GST,@ADBenefit,@NetValue,@TotalValue,'','','','','')

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Details_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
@Extra5 varchar(50),
@Discount decimal(18,2),
@FinalbasePrice decimal(18,2),
@GST decimal(18,2),
@ADBenefit decimal(18,2),
@NetValue decimal(18,2),
@TotalValue decimal(18,2)
AS
IF EXISTS(SELECT Item FROM Quotation_Details WHERE Item = @Item and Noseries=@Extra1 and Id!=@id)
BEGIN
return -1
End
Else
BEGIN
update Quotation_Details set Item=@Item,UOM=@UOM,Qty=@Qty,Rate=@Rate,Amount=@Amount,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5,Discount=@Discount,FinalbasePrice=@FinalbasePrice,GST=@GST,ADBenefit=@ADBenefit,
	 NetValue=@NetValue,TotalValue=@TotalValue where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Followup_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Followup_update]    Script Date: 17/03/2021 01:27:41 PM ******/
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
IF EXISTS(SELECT NextFolldate,Follotype FROM tbl_Quotation_Followup WHERE NextFolldate=@NextFolldate and Follotype=@Follotype and  Id!=@id)
BEGIN
return -1
End
Else
BEGIN
update tbl_Quotation_Followup set NextFolldate=@NextFolldate,Follotype=@Follotype
	,FolloStatus=@FolloStatus,Remarks=@Remarks,Comdate=@Comdate,Comremarks=@Comremarks,
	CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,
	 Extra4=@Extra4,Extra5=@Extra5 where Id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
@CoverLetter int,
@TotalCost decimal(18,2),
@Discount decimal(18,2),
@Benifit decimal(18,2),
@FinalPrice decimal(18,2),
@GST decimal(18,2),
@FinalPriceGST decimal(18,2),
@InqiuryStatus int,
@InquirySource int,
@InquiryNo int,
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
	@ContactEmail,@ContactMno1,@ContactMno2,@CoverLetter,@TotalCost,@Discount,@Benifit,@FinalPrice,@GST,@FinalPriceGST,
	@InqiuryStatus,@InquirySource,@InquiryNo,@Remarks,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_Master_update]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_Quotation_Master_update]
	
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
@CoverLetter int,
@TotalCost decimal(18,2),
@Discount decimal(18,2),
@Benifit decimal(18,2),
@FinalPrice decimal(18,2),
@GST decimal(18,2),
@FinalPriceGST decimal(18,2),
@InqiuryStatus int,
@InquirySource int,
@InquiryNo int,
@Remarks varchar(max),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT Custname, InquiryNo FROM dbo.Quotation_Master WHERE Custname = @Custname AND InquiryNo = @InqiuryNo and NoSeries!=@Noseries)
BEGIN
return -1
End
Else
BEGIN
		update  Quotation_Master set  Custname=@Custname,Custcontact=@Custcontact,Custcontactno=@Custcontactno,Dept=@Dept,Design=@Design,
	ContactEmail=@ContactEmail,ContactMno1=@ContactMno1,ContactMno2=@ContactMno2,CoverLetter=@CoverLetter,TotalCost=@TotalCost,Discount=@Discount,
	Benifit=@Benifit,FinalPrice=@FinalPrice,GST=@GST,FinalPriceGST=@FinalPriceGST,InquiryNo=@InqiuryNo,InqiuryStatus=@InqiuryStatus,InqiurySource=@InquirySource,Remarks=@Remarks,CreateBy=@CreateBy,CreateDatetime=@CreateDatetime,Extra1=@Extra1,Extra2=@Extra2,Extra3=@Extra3,Extra4=@Extra4,Extra5=@Extra5
	where NoSeries=@Noseries

	
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_Quotation_No_Series_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[tbl_QuotBOM_update]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_QuotBOM_update] 
@id int,
@No bigint,
@Itemrate decimal(18,2),
@CreateBy varchar(50),
@Amount decimal(18,2),
@Discount decimal(18,2),
@QuotId int,
@ItemFinal decimal(18,2),
@txtItemBenefit decimal(18,2),
@txtItemNetValue decimal(18,2),
@txtItemTotalValue decimal(18,2),
@txtItemGSTTotal decimal(18,2)

AS

BEGIN

	update Quotation_Details set 	Amount=@Amount,CreateBy=@CreateBy,Rate=@Itemrate,FinalbasePrice=@ItemFinal,ADBenefit=@txtItemBenefit,
	NetValue=@txtItemNetValue,TotalValue=@txtItemTotalValue,GST=@txtItemGSTTotal
	  where Id=@QuotId
END

GO
/****** Object:  StoredProcedure [dbo].[tbl_SubItem_Master_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_SubItem_Master_Insert]
@No bigint,
@SubItemName varchar(250),
@Itemrate decimal(18,2),
@CreateBy varchar(50),
@CreateDatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3	varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT SubItemName,ItemNo FROM tbl_ItemBOM_Master WHERE SubItemName = @SubItemName and ItemNo=@No and Exrta1=@Extra1)
BEGIN
return -1
End

Else
BEGIN

	insert into tbl_ItemBOM_Master values(@No,@SubItemName,@Itemrate,@CreateBy,@CreateDatetime,@Extra1,@Extra2,@Extra3,@Extra4,@Extra5)
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_UserRights_NoSeries_Insert]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[tbl_UserRights_NoSeries_Insert]
@No bigint,

@Extra1 varchar(50),
@Extra2 varchar(50)

AS
BEGIN
	insert into tbl_UserRights_Noseries values (@No,@Extra1,@Extra2)
END

GO
/****** Object:  StoredProcedure [dbo].[termsandconditionsdisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[unitofmeasurementdisp]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Update_UserRights]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Update_UserRights] 

@Id varchar(50),	
@NoSeries varchar(50),
@Page varchar(50),
@Create varchar(50),
@View varchar(50),
@ViewAll varchar(50),
@edit varchar(50),
@delete varchar(50),
@print varchar(50),
@mail varchar(50),
@Role varchar(50),
@Createby varchar(50),
@Createdatetime datetime,
@Extra1 varchar(50),
@Extra2 varchar(50),
@Extra3 varchar(50),
@Extra4 varchar(50),
@Extra5 varchar(50)
AS
IF EXISTS(SELECT EmployeeID,PageName,Noseries FROM tbl_UserRights_Master WHERE EmployeeID=@Extra1 and  PageName = @Page and Noseries!=@NoSeries)
BEGIN
return '-1'
End
ELSE
BEGIN

		update tbl_UserRights_Master set PageName=@Page,RoleName=@Role,CreateStatus=@Create,EditStatus=@edit,
		DeleteStatus=@delete,ViewStatus=@View,ViewallStatus=@ViewAll,EmailStatus=@mail,PrintStatus=@print,Createby=@Createby,
		CreateDateTime=@Createdatetime,EmployeeID=@Extra1
		where RecordID=@Id and Noseries=@NoSeries
END
GO
/****** Object:  StoredProcedure [dbo].[updateapplicationtype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatebusinesstype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatecity]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateCompressortype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatecountry]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatecoverletter]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatecoverletter]
	@id varchar(50),
	@title varchar(50),
	@description varchar(MAX)
AS
BEGIN
	update CoverLetter_Master set Title=@title,Description=@description where Id =@id
END
GO
/****** Object:  StoredProcedure [dbo].[updatedepartment]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatedesignation]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatefollowuptype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateindustryname]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateinquiryfile]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateitemgroup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateitemsubgroup]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatemachinetype]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateOrderTerms]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[UpdateOrderTerms]
	@id int,
	@Title varchar(MAX),
	@TandC varchar(MAX),
	@OrderNo int

AS

IF EXISTS(SELECT Qno,TermsId,Termstitle FROM Ordertandc WHERE Qno = @OrderNo and Termstitle=@Title and Id!=@id)
BEGIN
return -1
End
Else
BEGIN
				 UPDATE	Ordertandc set Termstitle=@Title,TermsDescription=@TandC WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderTerms2]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[UpdateOrderTerms2]
	@id int,
	@Title varchar(MAX),
	@TandC varchar(MAX),
	@OrderNo int,
	@Status varchar(50)

AS

IF EXISTS(SELECT Qno,TermsId,Termstitle FROM Ordertandc WHERE Qno = @OrderNo and Termstitle=@Title and Id!=@id)
BEGIN
return -1
End
Else
BEGIN
				 UPDATE	Ordertandc set Termstitle=@Title,TermsDescription=@TandC,Status=@Status WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[UpdateQuotationTerms]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateQuotationTerms]
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
				 UPDATE	Quotationstandc set Termstitle=@termstitle,TermsDescription=@termsdescription,Status=@status WHERE Id=@termsid	 and Noseries=@Noseries

END


GO
/****** Object:  StoredProcedure [dbo].[UpdateQuotTerms]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[UpdateQuotTerms]
	@id int,
	@Title varchar(MAX),
	@TandC varchar(MAX),
	@OrderNo int

AS

IF EXISTS(SELECT Noseries,TermsId,Termstitle FROM Quotationstandc WHERE Noseries = @OrderNo and Termstitle=@Title and Id!=@id)
BEGIN
return -1
End
Else
BEGIN
				 UPDATE	Quotationstandc set Termstitle=@Title,TermsDescription=@TandC WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updaterole]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updaterole] 
	@id int,
	@Role varchar(50)
AS
BEGIN	
	IF EXISTS(SELECT Role FROM tbl_Role_Master WHERE Role = @Role and  id!=@id)
BEGIN
return -1
End
Else
    UPDATE	tbl_Role_Master set Role=@Role WHERE id=@id	
END


GO
/****** Object:  StoredProcedure [dbo].[updatesource]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatestate]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatestatus]    Script Date: 17/03/2021 01:27:41 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatetermsandconditions]    Script Date: 17/03/2021 01:27:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatetermsandconditions]
	@id int,
	@Title varchar(MAX),
	@TandC varchar(MAX)

AS
IF EXISTS(SELECT Title FROM TermsandConditions_Master WHERE Title = @Title and  id!=@id)
BEGIN
return -1
End
Else
BEGIN
				 UPDATE	TermsandConditions_Master set Title=@Title,TermsandConditions=@TandC WHERE id=@id	

END


GO
/****** Object:  StoredProcedure [dbo].[updateunitofmeasurement]    Script Date: 17/03/2021 01:27:41 PM ******/
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
