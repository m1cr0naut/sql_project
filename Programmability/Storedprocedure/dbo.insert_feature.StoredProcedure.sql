USE [s16guest34]
GO
/****** Object:  StoredProcedure [dbo].[insert_feature]    Script Date: 5/5/2016 1:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Benjamin Plotkin
-- Create date: 2016-05-04
-- Description:	Insert feature description record into Feature table
-- =============================================
CREATE PROCEDURE [dbo].[insert_feature] 
	-- String parameter holding the new feature description text
	@feature_desc VARCHAR(MAX) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Try to insert new feature description text
	BEGIN TRY
		INSERT INTO Feature
		VALUES	(@feature_desc);
		SELECT 'Feature added.';
	END TRY
	
	-- If we catch an error on above insert (like if description was left NULL)
	-- throw detailed error message
	BEGIN CATCH
		DECLARE @err_num INT = ERROR_NUMBER();
		DECLARE @err_msg NVARCHAR(4000) = ERROR_MESSAGE();
		DECLARE @err_sev INT = ERROR_SEVERITY();
		DECLARE @err_state INT = ERROR_STATE();
		PRINT 'Error number: ' + CAST(@err_num AS VARCHAR(10));
		RAISERROR(@err_msg, @err_sev, @err_state);
	END CATCH
END

GO
